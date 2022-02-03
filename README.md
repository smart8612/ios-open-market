# 🏦 **iOS 오픈마켓 프로젝트**



## 🧐 프로젝트 개요

- iOS 오픈마켓 앱을 구현합니다.

- SwiftLint를 통해 코딩 컨벤션을 규정합니다.

- URLSession 및 HTTP 프로토콜을 이해하고 네트워크 계층을 추상화 합니다.

- 유지보수 및 사용성이 쉬운 네트워크 API 타입을 설계합니다.

- 사용자 경험을 향상시키기 위한 접근성 지원 및 키보드 제어를 구현합니다.

- `Test-Driven-Development` 및 목업 객체를 통해 네트워크 연결이 없는 상황에서의 `UnitTest` 를 구현합니다.

- 프로토콜 기본구현, 클래스 상속을 활용하여 공통기능을 모듈화합니다.

  

### 💻 동작 화면

|                      오픈마켓 동작화면                       |
| :----------------------------------------------------------: |
| ![151515703-668271dd-2386-4fb5-944e-e7a67dedb417](https://user-images.githubusercontent.com/25794814/151515703-668271dd-2386-4fb5-944e-e7a67dedb417.gif) |



### 🧑🏻‍💻 **참여자**

| 리뷰어                                                       | 개발자                                            | 의존모둠원                                |
| :----------------------------------------------------------- | ------------------------------------------------- | ----------------------------------------- |
| 오픈마켓 ⓵: 찰리 [@kcharliek](https://github.com/kcharliek) <br />오픈마켓 ⓶: 코리 [@corykim0829](https://github.com/corykim0829) | [@singularis7](https://github.com/smart8612) 신나 | [@jsim27](https://github.com/jsim27) 나무 |
| **의존 모둠원 칭찬하기**                                     |                                                   |                                           |



### 📆 **기간**

* **메인 프로젝트 기간**: 2022.01.03 ~ 2022.01.28
* **추가 유지보수 기간**: 2022.02.01 ~ 2022.02.04



### 📖 규칙 (Grounds Rule)

#### 프로젝트에 집중하는 시간

- 평일 오전 10시 30 ~ 저녁 8시 (필요 시 30분 정도 조정 가능)
- 밥먹는 시간 : 1시간 ~ 1시간 30분
- 공식적인 휴일 : 편할때 쉽시다~

#### 의존 모둠원과의 규칙

- 모르거나 새로운 개념을 적용하고 싶을 때 바로 찾아볼 시간을 주세요!
- 매번 스탭이 끝날 때마다 코드 설명해주기!
- 커뮤니케이션을 진행할 때 편하고 적극적으로 표현해주세요!
- PR 보내기 전에 고민했던점 공유하기!

#### Commit 규칙

* 단위 : 함수를 구현, 기능 구현, SwiftLint 규칙을 따릅니다.
* 컨벤션 : Karma Style



---



## 🥳 **Achievement**

### [Step 1]

- URLSession, URLDataTask를 활용하여 비동기 네트워크 통신을 이해합니다.
- HTTP 프로토콜에 맞추어 자료 및 첨부파일을 송수신 할 수 있도록 설계합니다.
- JSON 인코딩, 디코딩을 위한 Model Type을 설계합니다.
- 네트워크 모듈을 손쉽게 사용하고 유지보수 할 수 있도록 추상화시킵니다.
- **Pull Request : Reviewed By 🧑🏻‍💻 [@kcharliek](https://github.com/kcharliek) [Step 1 Pull Request Link](https://github.com/yagom-academy/ios-open-market/pull/85)** 



### [Step 2]

- Modern CollectionView를 통해 상품 리스트 화면을 구현합니다.
- Compositional Layout 을 통해 LIST, GRID 레이아웃을 구현합니다.
- DiffableDataSource을 통해 data-driven UI update를 구현합니다.
- RefreshControl 및 페이지네이션을 통한 새로운 데이터를 로드합니다.
- **Pull Request : Reviewed By 🧑🏻‍💻 [@kcharliek](https://github.com/kcharliek) [Step 2 Pull Request Link](https://github.com/yagom-academy/ios-open-market/pull/103)** 



### [Step 3]

- 상품 등록 화면을 구현합니다.
- 상품 수정 화면에서 공통으로 사용될 기능을 모듈화 시킵니다.
- 키보드가 TextEditor를 가리지 않도록 제어합니다.
- Dynamic Type, 접근성 레이블 지정을 통한 접근성 지원을 구현합니다.
- **Pull Request : Reviewed By 🧑🏻‍💻 [@corykim0829](https://github.com/corykim0829) [Step 3 Pull Request Link](https://github.com/yagom-academy/ios-open-market/pull/108#issue-1109235800)** 



### [Step 4]

* 상품 세부정보 화면을 구현합니다.
* 상품 정보를 수정하고 삭제하는 기능을 구현합니다.
* 이전 스텝에서 구현한 공통 모듈을 활용해 상품 수정 화면을 구현합니다.
* NSCache를 도입하여 이미지 캐싱 기능을 구현합니다.
* ViewModel을 도입하여 ViewController의 present 역할을 분리해주었습니다.
* **Pull Request : Reviewed By 🧑🏻‍💻 [@corykim0829](https://github.com/corykim0829) [Step 4 Pull Request Link](https://github.com/yagom-academy/ios-open-market/pull/108#issuecomment-1024005531)** 

---

### 🤔 프로젝트 핵심 고민 사항

1. **서로 다른 객체간에 메시지를 주고 받는 방식**

   * ViewController의 역할을 분리하면서 서로 다른 객체간의 메시지 통신 방법으로 다음을 적용해보았습니다.

     1. Closure Capture를 활용해 인스턴스의 메서드를 전달하는 방법

     2. Delegation 패턴을 활용하여 대리자를 통해 메서드를 호출하는 방법

     3. 관찰자 패턴을 통해 구독 모델을 활용하여 메시지를 전달하는 방법

   * Delegation 패턴은 다음의 목적으로 사용하였습니다.
     1. 두 객체간에 의존성을 줄여주고 싶을때
     2. 실질적인 행위를 외부의 객체가 구현하도록 하고 싶을 때
     3. MVC 패턴에서 View가 외부의 객체를 통해 데이터를 받아오도록 구현하고 싶을때

   * 관찰자 패턴(Notification Center, KVO, Property Observer)은 다음의 목적으로 사용하였습니다.

     1. Model 데이터가 수정된 이벤트를 감지하여 View에 데이터 바인딩 시켜주고 싶을때
     2. ViewController는 UI에 관한 정보를 알고있기 때문에 Model과 UI간의 독립 관계를 유지하도록 구현하고 싶을때

   * 클로저 캡처를 활용한 방식은 다음의 목적으로 사용하게 되었습니다.

     1. 앱에서 수행되는 네트워크 통신은 비동기적으로 동작합니다.
     2. 네트워크 통신이 완료 혹은 실패했을 때 이벤트를 통해 특정 기능을 수행해야할 수 있습니다.
     3. 예를 들어 Model의 값을 변경하거나 UI를 갱신하는 행위가 해당될 수 있습니다.

     

2. **객체간 통신 방법으로 Closure Capture 및 delegation 패턴을 선택한 사유**

      1.  NotificationCenter의 문제점
            * 관찰자 객체와 전달되는 메시지가 많아지면 성능에 손실이 있을 수 있습니다.
            * 코드의 흐름 파악이 어려워 디버깅 과정이 어려워질 수 있습니다.
            * 살아있는 모든 객체가 이벤트를 받을 수 있다는 점에서 데이터 흐름을 제어하기 어렵습니다.
            * 코드 운영의 측면에서 메시지를 주고 받는 목적으로 도입하기에 다량의 코드를 작성해야 합니다.
      2. KVO의 문제점
            * Objective-C의 런타임에 의존하기에 레거시 코드를 사용하게 됩니다.
            * 런타임시에 실행할 코드의 주소를 추적한다는 측면(다이나믹 디스패치)에서 성능상의 손실이 발생합니다.
            * 코드의 운용 측면에서는 Notification Center 에서와 비슷한 문제점을 공유하고 있습니다.
            * 다만, NotificationCenter 처럼 메시지가 앱의 전역적으로 송출되는 문제점을 줄일 수 있다는 차별점이 존재합니다.

      3. 클로저 캡쳐 및 델리게이션 패턴의 장점
         * 레거시 코드를 사용하지 않습니다.
         * 메시지 전달을 위해 작성해야 하는 코드의 양이 적습니다.
         * 메시지가 전역적으로 방송되지 않기에 실행 흐름을 추적하기에 유리합니다.

      

3. **View를 구현하는 방식에 관한 고민 XIB(NIB) vs Storyboard vs Code**

      * 상품 등록 및 수정 화면은 공통 모양의 입력 양식을 사용합니다.

      * 스토리보드의 Scene에 View를 구현하면 target-action 패턴에 의해 View가 ViewController에 종속되는 문제점이 있습니다.

      * 공통의 View를 재사용할 수 있도록 별도의 모듈(템플릿)로 구현하는 방법을 다음과 같이 생각해보았습니다. 

        * StoryBoard를 활용한 View 구현 방법
        * Code를 활용한 View 구현 방법
        * XIB(NIB)를 활용한 View를 구현 방법

      * 스토리보드 방법의 역활 및 장단점에 관하여 다음과 같이 생각해보았습니다.

        1. 서로 다른 화면간의 전환 맥락과 한 화면 의미를 시각적으로 파악할 수 있습니다.
        2. 실제 앱을 구현하기 전에 간단한 동작을 목업의 형태로 구현해보기에 적합합니다.
        3. ViewController와 View간에 의존성이 높아져서 재사용성이 떨어집니다.
        4. 협업시에 코드나 XIB 보다 병합 충돌 문제가 자주 발생할 수 있습니다.

      * Code 방법의 역할 및 장단점에 관하여 다음과 같이 생각해보았습니다.

        1. 협업시에 스토리보드 혹은 XIB(XML) 에서 발생할 수 있는 병합 충돌 문제를 해결하기에 유리합니다.
        2. 인터페이스 빌더를 활용해 구현하기 어려운 화면을 코드를 통해 세밀하게 구현할 수 있습니다.
        3. 코드만 보고 화면의 모습이나 전체적인 구성을 파악하기에 어려움이 있습니다.
        4. 복잡한 오토 레이아웃을 구현할 때 늘어나는 코드를 관리하기 어렵습니다.

      * XIB 방법의 역할 및 장단점에 관하여 다음과 같이 생각해보았습니다.

        1. 작은 단위로 View 를 구현하기에 스토리보드 보다는 병합 충돌 발생가능성이 낮으나 완전히 해결된 것은 아닙니다.
        2. 인터페이스 빌더를 통해 시각적으로 화면의 구성을 파악하고 구현할 수 있습니다.
        3. 코드로 구현하는 것 보다는 복잡한 화면을 구성함에 있어 어려울 수 있다. (자유도가 떨어진다.) 

      * 각 3가지 방법의 장점을 추려서 다음의 구조를 프로젝트에 접목해보았습니다.

        1. 재사용 가능성이 높은 View는 XIB를 우선적으로 활용하여 모듈화 구현했습니다.

        2. 앱 구조에 관하여 다른 개발자와 시각적으로 커뮤니케이션할 수 있도록 화면 전환 및 각 Scene을 스토리보드에 구현했습니다.

        3. 모듈화된 View를 스토리보드의 Scene 위에 얹을 때에는 코드를 활용하여 스토리보드에서 발생할 수 있는 병합 충돌 문제를 줄일 수 있도록 구현했습니다.

           

4. **Modern CollectionView가 기존의  delegation 방식과 갖는 구조적 차이점**

      1. Modern Collection View를 접했을 때, delegation 패턴으로 구현하는 Data Source와 구조적 차이가 있어서 코드 사용법 이해에 어려움을 겪었습니다.

      2. WWDC20의 Advanced in diffable data sources 영상에서 diffableDatasource라는 별도의 객체를 통해 CollectionView의 UI 상태와 SnapShot의 데이터 차이를 기반으로 UI를 갱신해주고 있다는 점을 확인하였습니다.

      3. 전통적인 컬렉션 뷰 구현방식은 View가 이벤트를 받으면 datasource delegate 를 통해 데이터를 갱신하는 구조를 갖습니다.

      4. 이번에 새롭게 등장한 diffable Data Source 는 apply 해줄 때 입력 받은 snapshot 데이터의 변동사항을 기준으로 View를 갱신해주고 있어서 데이터의 흐름 방향이 기존과 반대의 구조를 갖는다고 생각하였습니다.

      5. 이런 구조적 차이가 초기 Modern CollectionView에 데이터를 공급하는 코드 패턴을 이해하기 어렵게 만들었다고 생각합니다.

            

5. **Compositional Layout 의 확장성 있는 레이아웃 설계가 불러온 어려움** 

      1. CollectionView 는 cell, delegate, datasource 등등 여러 객체가 협력하여 우리의 눈에 보이는 구조를 갖는다고 이해하고 있습니다. 
      2. 초심자가 사용하기에 파악해야하는 클래스가 많아서 시작점을 파악하기 어려운 단점을 지녔다고 생각합니다.
      3. 사용자가 compositional layout 을 통해 item, group, section 에 관하여도 너무나도 자유롭게 설정할 수 있습니다.
      4. 별도로 제공되는 옵션인 flow 혹은 List layout 을 활용하는 방법도 존재합니다. 
      5. 애플의 ModernCollectionView 코드 프로젝트를 가이드라인으로 참조하였습니다.

---

## 🏆 Process

### [Step 1️⃣] 모델/네트워킹 타입 구현

#### Keyword

- URLSession을 활용한 서버와의 통신
- JSON 데이터와 맵핑할 모델 설계
- CodingKeys 프로토콜을 활용한 JSON Serialization
- 네트워크 상황과 무관한 TDD & UnitTest 설계

#### 고민 했던 부분

- OpenMarketService의 역할

  - 서버 API 문서를 기준으로 7개의 기능을 사용성을 고려하려 추상화합니다.
  - API가 요구하는 형식에 적합한 URLRequest를 만들어 줍니다.
  - 열거형의 연관값으로 필수 인자를 받아서 request를 생성해줍니다.
  - 개발자는 열거형 타입을 통해 호출 가능한 목록을 손쉽게 얻을 수 있습니다.

  ```swift
  enum OpenMarketService {
      case checkHealth
      case createProduct(sellerID: String, params: Data, images: [Data])
      case updateProduct(sellerID: String, productID: Int, body: Data)
      case showProductSecret(sellerID: String, sellerPW: String, productID: Int)
      case deleteProduct(sellerID: String, productID: Int, productSecret: String)
      case showProductDetail(productID: Int)
      case showProductPage(pageNumber: Int, itemsPerPage: Int)
  }
  ```

- URLSessionProvider 타입을 만들게된 배경

  - HTTP에 기반한 통신 과정에서 서버에 요청하고 응답을 받는 과정을 추상화합니다.
  - 서버에서 응답을 받을 때 completionHandler로 통신결과에 따른 세부 동작을 구현합니다.
  - 네트워크가 없는 상황에서 테스트할 수 있도록 Mock과 Server에 대한 구현체를 주입합니다.
  - 의존성 주입을 위해 필요한 동작을 URLSessionProtocol을 통해 추상화 시켰습니다.

  ```swift
  sutURLSesssionProvider.request(.showProductPage(pageNumber: 1, itemsPerPage: 10)) { result in
      switch result {
      case .success(let data):
          print("통신에 성공했을때 동작을 여기에 구현합니다!")
      case .failure(let error):
          print("통신에 실패했을때 동작을 여기에 구현합니다!")
      }
  }
  ```

* HTTP 메서드에 따른 범용적 사용을 위한 URLRequest 추상화

  * 첫 설계에서는 **HTTP메서드 기준**으로 `중간 단계 추상 타입`을 구현하였습니다.
  * **Body Content Type**에서의 중복 구현이 발생하는 문제점이 발생하였습니다.
  * 따라서 **Content Type**을 기준으로 분류하여 추상화 하는 방식을 선택하였습니다.
  * 실제 서비스에서는 HOST API 주소가 다양할 수 있다는 점을 고려하여 별도의 서비스 프로토콜로 분리 구현하였습니다.
  * 네트워크 계층을 설계하면서 프로토콜 지향 프로그래밍을 도입하여 프로토콜 기본 구현을 적극 사용하였습니다.

  ```swift
  protocol OpenMarketInfoOwner {
      var baseURL: String { get }
  }
  protocol OpenMarketAPIRequest: APIRequest, OpenMarketInfoOwner { }
  protocol OpenMarketJSONRequest: JSONRequest, OpenMarketInfoOwner { }
  protocol OpenMarketMultiPartRequest: MultiPartRequest, OpenMarketInfoOwner { }
  ```

  * 프로토콜을 채택한 타입을 API 명세처럼 활용하는 사용성을 고려하여 설계하였습니다.

  ```swift
  struct ShowProductDetailRequest: OpenMarketAPIRequest {
      
      var method: HTTPMethod
      var header: [String : String]?
      var path: String
      
      init(productID: String) {
          self.method = .GET
          self.header = nil
          self.path = "/api/products/\(productID)"
      }
      
  }
  ```

* 앱 모델과 API 서버 모델을 분리하여 구현하였습니다.

  - 앱 모델은 서버 API의 Request 혹은 Response 타입에서 공통적인 요소를 추상화하여 Entity 타입으로 구현하였습니다.
  - 예를 들어 Model 폴더의 Page, Product, ProductImage, Vendor, Currency가 존재합니다.
  - 서버모델(API 요청, 응답 타입)은 Network 폴더의 API 모델 폴더에 구현하였습니다.
  - 서버 모델이 앱 모델과 동일하다면 앱 모델과 typealias 를 통해 연동해주었습니다.
  - 서버 모델이 앱모델과 다르다면 요청, 응답 타입을 정의해주었습니다.
  - 이를 통해 서버의 API 명세가 달라져도 API 타입 설계만 수정하여 사용할 수 있도록 유지보수성을 개선하였습니다.

* 네트워크 비동기 메서드 테스트를 위한 전용 메서드를 도입해보았습니다.

  * DispatchSemaphore를 사용하여 비동기 메서드의 결과를 받을때까지 스레드를 멈춰두는 방식을 사용했습니다.
  * 테스트 프레임워크에서 제공하는 전용 인스턴스인 XCTestExpextation를 활용해보았습니다.

  ```swift
  class URLSessionProviderDecodingTests: XCTestCase {
  
      var sutURLSesssionProvider: URLSessionProvider!
      var sutTestExpectation: XCTestExpectation!
  
      override func setUpWithError() throws {
          self.sutURLSesssionProvider = URLSessionProvider(session: URLSession.shared)
          self.sutTestExpectation = XCTestExpectation()
      }
  
      override func tearDownWithError() throws {
          self.sutURLSesssionProvider = nil
          self.sutTestExpectation = nil
      }
      
      func test_showPage가_200번때_상태코드를_반환해야한다() {
          sutURLSesssionProvider.request(.showProductPage(pageNumber: "1", itemsPerPage: "10")) { (result: Result<ShowProductPageResponse, URLSessionProviderError>) in
              switch result {
              case .success(let data):
                  print(data)
                  XCTAssertTrue(true)
                  self.sutTestExpectation.fulfill()
              case .failure(let error):
                  XCTFail("\(error)")
                  self.sutTestExpectation.fulfill()
              }
          }
          wait(for: [sutTestExpectation], timeout: 10.0)
      }
  }
  ```

### [Step 2️⃣] 상품 목록 화면 구현

#### Keyword

- Safe Area을 고려한 오토 레이아웃 구현
- Collection View의 활용
- Mordern Collection View 활용

#### 고민 했던 부분

- Modern Collection View 통해 데이터 중심의 UI 데이터 바인딩 방식으로 구현했습니다.
  - [UICollectionViewDiffableDataSource](https://developer.apple.com/documentation/uikit/uicollectionviewdiffabledatasource)
    - 재사용 셀을 반환시켜주는 역할을 담당합니다.
  - [UICollectionViewCellRegistration](https://developer.apple.com/documentation/uikit/uicollectionview/cellregistration)
    - cell에 담길 데이터를 설정해주는 역할을 담당합니다.
  - [snapshot](https://developer.apple.com/documentation/uikit/views_and_controls/collection_views/implementing_modern_collection_views)
    - 컬렉션 뷰에서 보여줄 데이터의 상태를 스냅샷으로 정의할 수 있습니다.
    - 데이터가 갱신될 때 새로운 스냅샷을 생성하여 데이터 소스에 apply 해주면 컬렉션 뷰가 차이점이 있는 데이터만 변경해줍니다.
    - 자동으로 예쁜 애니메이션 효과가 적용됩니다.
- Segmented Control을 활용하여 LIST와 GRID 사이의 레이아웃 전환 구현 방법을 고민하였습니다.
  - Segmented Control 은 현재 화면에서 보여줘야 할 컬렉션뷰 레이아웃을 표현합니다.
  - ProductPageViewController은 LIST와 GRID Collection View를 보여줄 수 있습니다.
  - 각 레이아웃을 갖는 두개의 CollectionView를 교차하여 보여주는 방식을 채택하였습니다.
  - 메모리를 더 사용하여 처리로 인하여 발생되는 main 스레드 block 현상을 줄이는 전략을 사용하였습니다.
  - Segmented Control 상태에 따라서 이전 CollectionView를 제거하고 새로운 CollectionView를 보여주는 방식으로 동작합니다.
- 하단 방향의 스크롤 동작시에 페이지네이션 기능이 동작하도록 구현했습니다.
  - scrollview의 delegate 메서드중 드래그가 끝났을 때 호출 되는 콜백 메서드를 활용하였습니다.
  - 컨텐츠 bound의 하단 좌표에 도달하면 모델 객체에게 새로운 데이터를 요청하도록 명령합니다.
  - 모델이 데이터 갱신 후 viewcontroller에게 알려주면 viewController는 데이터 소스에 수정된 스냅샷을 apply 해서 UI를 갱신합니다.
- UIRefreshController를 통해 ScrollView 상단 방향 스크롤시에 새로운 데이터를 불러오도록 구현하였습니다.
  - 각 컬렉션 뷰는 refreshController 인스턴스를 갖고 있습니다.
  - subView로 refreshController 를 갖고 있기에 아래로 당겼을 때 로딩중임을 나타내는 애니메이션 효과를 확인할 수 있습니다.
  - target-action 패턴을 통해 refreshController 가 데이터를 갱신하는 메서드를 호출하도록 액션을 등록해주었습니다.
- UIActivityIndicatorView를 통해 초기 로딩 시 사용자에게 로딩중임을 알림
  - 애니메이션 효과가 멈추면 자동으로 숨겨지는 기능을 사용하였습니다.
  - 모델에 전달된 네트워크 요청이 끝나면 stopanmation 메서드가 호출되어 애니메이션이 중단됩니다.
  - 이후 activityIndicator가 자동으로 숨겨집니다.

---

