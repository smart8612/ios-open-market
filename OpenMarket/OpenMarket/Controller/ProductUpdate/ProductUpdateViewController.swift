//
//  ProductCreateViewController.swift
//  OpenMarket
//
//  Created by JeongTaek Han on 2022/01/18.
//

import UIKit

class ProductUpdateViewController: UIViewController {
    
    private(set) var productRegisterView = ProductRegisterView()
    
    private let textFieldDelegator = ProductUpdateTextFieldDelegate()
    private let textViewDelegator = ProductUpdateTextViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureDelgate()
        configureNotification()
        configureTextEditors()
    }
    
    var form: ProductRegisterForm {
        ProductRegisterForm(
            name: productRegisterView.productNameTextField.text ?? "",
            price: productRegisterView.productPriceTextField.text ?? "",
            currency: productRegisterView.currencySegmentedControl.currentText,
            discountedPrice: productRegisterView.discountedPriceTextField.text,
            stock: productRegisterView.productStockTextField.text,
            description: productRegisterView.descriptionTextView.text
        )
    }
    
}

// MARK: - Configure View Controller
private extension ProductUpdateViewController {
    
    func configureView() {
        self.view.addSubview(productRegisterView)
        productRegisterView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productRegisterView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: .zero),
            productRegisterView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: .zero),
            productRegisterView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: .zero),
            productRegisterView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: .zero)
        ])
    }
    
    func configureDelgate() {
        textEditors.forEach {
            if let view = $0 as? UITextField { view.delegate = textFieldDelegator }
            if let view = $0 as? UITextView { view.delegate = textViewDelegator }
        }
    }
    
    func configureNotification() {
        let notificationCenter = NotificationCenter.default
        [
            #selector(keyboardWasShown) : UIResponder.keyboardDidShowNotification,
            #selector(keyboardWillBeHidden) : UIResponder.keyboardWillHideNotification
        ]
        .forEach { notificationCenter.addObserver(self, selector: $0, name: $1, object: nil) }
    }
    
    func configureTextEditors() {
        let message = "여기에 상품 상세 정보를 입력해주세요!"
        textEditors.forEach { $0.addButtonToInputAccessoryView(with: "Done") }
        productRegisterView.descriptionTextView.configurePlaceholderText(with: message)
    }
    
}

// MARK: - Keyboard Control Utilities
extension ProductUpdateViewController {
    
    @objc
    private func keyboardWasShown(_ notification: Notification) {
        guard let info = notification.userInfo else { return }
        guard let keyboardSize = info[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        
        let contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        productRegisterView.containerScrollView.contentInset = contentInset
        productRegisterView.containerScrollView.verticalScrollIndicatorInsets = contentInset
        
        var aRect = self.view.frame
        aRect.size.height -= keyboardSize.height
        guard let activateField = activatedTextEditors else { return }
        productRegisterView.containerScrollView.scrollRectToVisible(activateField.frame, animated: true)
    }
    
    @objc
    private func keyboardWillBeHidden(_ notification: Notification) {
        productRegisterView.containerScrollView.contentInset = .zero
        productRegisterView.containerScrollView.verticalScrollIndicatorInsets = .zero
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textEditors.forEach { $0.resignFirstResponder() }
    }
    
}

// MARK: - Finding TextEditors Utilities
private extension ProductUpdateViewController {
    
    var textEditors: [UIView] {
        var answer: [UIView] = []
        var queue: [UIView] = [view]
        
        while !queue.isEmpty {
            let frontView = queue.removeFirst()
            
            if frontView is UITextView || frontView is UITextField {
                answer.append(frontView)
            }
            
            frontView.subviews.forEach { queue.append($0) }
        }
        
        return answer
    }
    
    var activatedTextEditors: UIView? { textEditors.filter { $0.isFirstResponder }.first }
    
}
