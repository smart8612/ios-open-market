//
//  ProductListPageViewController.swift
//  OpenMarket
//
//  Created by JeongTaek Han on 2022/01/14.
//

import UIKit

class ProductListPageViewController: UIViewController, LayoutSwitchable {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet weak var loadIndicatorView: UIActivityIndicatorView!
    
    var dataSource: UICollectionViewDiffableDataSource<Int, Product>?
    var currentPage: Int = 1
    var itemsPerPage: Int = 10
    var page: Page?
    var pages: [Product] = [] {
        didSet {
            var snapShot = NSDiffableDataSourceSnapshot<Int, Product>()
            snapShot.appendSections([0])
            snapShot.appendItems(pages)
            self.dataSource?.apply(snapShot)
        }
    }
    var refControl = UIRefreshControl()
    var isGridLayout: Bool = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.setCollectionViewLayout(createListLayout(), animated: false)
        collectionView.isSpringLoaded = true
        collectionView.delegate = self
        
        refControl.addTarget(self, action: #selector(refreshDidActivate), for: .valueChanged)
        refControl.attributedTitle = NSAttributedString(string: "상품 로드중!")
        collectionView.refreshControl = refControl
        collectionView.addSubview(refControl)
        refControl.translatesAutoresizingMaskIntoConstraints = false
        configureDatasource()
        fetchPage()
        
        loadIndicatorView.stopAnimating()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    deinit {
        print("deinit")
    }
    
    
    
    @objc
    func refreshDidActivate() {
        itemsPerPage = 10
        fetchPage()
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 2)
            DispatchQueue.main.async {
                self.refControl.endRefreshing()
            }
        }
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        isGridLayout.toggle()
        
        view.bringSubviewToFront(loadIndicatorView)
        loadIndicatorView.isHidden = false
        loadIndicatorView.startAnimating()
        collectionView.isHidden = true

        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1)
            DispatchQueue.main.async {
                self.loadIndicatorView.stopAnimating()
                self.collectionView.isHidden = false
            }
        }
        
        collectionView.setCollectionViewLayout(createListLayout(), animated: false)
        collectionView.reloadData()
        fetchPage()
    }
    
}

extension ProductListPageViewController: UICollectionViewDelegate {
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let endPoint = CGPoint(x: 0, y: scrollView.contentSize.height)
        if targetContentOffset.pointee.y + scrollView.frame.height >= endPoint.y {
            guard let value = page?.hasNext, value else { return }
            
            itemsPerPage += 10
            fetchPage()
        }
    }
    
}

extension ProductListPageViewController {
    
    private func createListLayout() -> UICollectionViewLayout {
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        return UICollectionViewCompositionalLayout.list(using: config)
    }
    
    private func configureDatasource() {
        let cellRegistration = UICollectionView.CellRegistration<GridLayoutCell, Product> { (cell, indexPath, identifier) in
            
            cell.delegate = self
            cell.configureContents(imageURL: identifier.thumbnail,
                                   productName: identifier.name,
                                   price: identifier.price.description,
                                   discountedPrice: identifier.discountedPrice.description,
                                   currency: identifier.currency,
                                   stock: String(identifier.stock))
        }
        
        dataSource = UICollectionViewDiffableDataSource<Int, Product>(collectionView: collectionView) { (collectionView, indexPath, identifier) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: identifier)
        }
    }
    
    private func fetchPage() {
        URLSessionProvider(session: URLSession.shared)
            .request(.showProductPage(pageNumber: String(currentPage), itemsPerPage: String(itemsPerPage))) { (result: Result<ShowProductPageResponse, URLSessionProviderError>) in
                switch result {
                case .success(let data):
                    self.page = data
                    self.pages = data.pages
                    
                case .failure(let error):
                    print(error)
                }
            }
    }
}
