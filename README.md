# 🧮 **iOS 오픈마켓 프로젝트**



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

### 🎼 프로젝트 핵심 고민 사항

1. **서로 다른 객체간에 메시지를 주고 받는 방식**

   > ViewController가 담당하는 역할을 다른 객체가 수행하도록 분리하면서 서로 다른 객체가 메시지를 주고 받는 방법에 관하여 고민하여 다음과 같이 적용해보았습니다.

         1. 클로저 캡처를 활용하여 다른 객체의 메서드를 전달하는 방법
         2. Delegation 패턴을 활용하여 대리자를 통해 행위를 들고오는 방법
         3. 관찰자 패턴을 통해 구독 모델을 활용하여 메시지를 전달하는 방법

   * 코코아 터치 프레임워크에서 자주 사용하는 Delegation 패턴은 다음의 목적으로 사용하였습니다.

     1. 서로 다른 객체간에 의존성을 줄여주고 싶을 때
     2. 어느 객체의 실질적인 행위를 외부의 객체가 구현하도록 하고 싶을 때
     3. 주로 View가 데이터에 대한 정보를 알 수 없도록 구현하는 목적(MVC 패턴 충족)으로 활용하였습니다.

   * Notification Center를 통한 관찰자 패턴은 다음의 목적으로 사용하였습니다.

     1. ViewController는 View가 보여줘야 할 데이터가 갱신되었을 때 View 도 최신화 시켜줄 책임이 있습니다.
     2. 모델이 갖고 있는 데이터가 변경되었을 때, ViewController 에게 모델이 변경되었다는 메시지를 전달해주기 위해 사용하였습니다.
     3. 여기서 delegation 을 활용하지 않은 이유는 model은 순전히 데이터와 로직에 관한 정보만을 갖고 있어야 하는데, delegation을 사용했을 때 느슨한 의존성일지라도 ViewController에 관한 정보를 알게 되기 때문에 적절하지 않다고 생각하였습니다. 

   * 클로저 캡처를 활용한 방식은 다음의 목적으로 사용하게 되었습니다.

     1. 앱에서 네트워크 통신을 사용할 때 통신 과정은 비동기적으로 수행됩니다.

     2. 네트워크 통신이 완료되거나, 실패했을 때 수행해야 하는 기능을 명시해 줄 방법이 필요합니다.

     3. Network Manager에 정의되지 않은 기능 또한 수행해야할 수 있습니다. 대표적으로 모델 값을 변경하거나 ViewController에게 통신 과정이 실패했음을 전달하는 과정이 해당될 수 있을 것 같습니다.

     4. 물론 이 과정에서 Notification Center를 통해 알림을 보내보는 것도 고민해보았지만,, NotificationCenter에 등록된 관찰자 객체 혹은 메시지가 많아지면 성능에 손실이 있을 수 있다는 문제점과, 코드의 흐름 파악이 어려워 디버깅 과정이 복잡해질 수 있다는 문제점을 고려하여 사용하지 않았습니다.

        

2. **View를 구현하는 방식에 관한 고민 XIB(NIB) vs Storyboard vs Code**
   
   * 오픈마켓 프로젝트에서는 상품등록 화면과 상품 수정 화면에서 공통적인 화면 양식을 사용하는 요구사항을 확인할 수 있었습니다.
   * View를 스토리보드의 Scene에 구현할 경우 하나의 ViewController에 View가 종속되는 문제점이 존재합니다. (target-action 패턴)
   * 따라서 상품 등록 화면과 상품 수정 화면에서 공통적으로 사용되는 View를 별도의 모듈(템플릿)로 구성하기 위해서 코드를 통해 UI를 구성하는 방법과 XIB를 통해 하나의 View를 만들어주는 방법 사이에 고민을 하게 되었습니다.
   * 코드를 사용하는 방법에 관하여 생각해본 장단점은 다음과 같습니다. 
     1. 협업시에 스토리보드 혹은 XIB (XML) 에서 발생할 수 있는 병합 충돌 해결 문제점에서 자유롭다.
     2. 코드만 보고 화면의 모습이나 전체적인 구성을 파악하기에 어려움이 있을 수 있다.
     3. 복잡한 화면을 구성할 때 무시무시하게 많아지는 코드를 볼 수 있다!
   * XIB를 사용하는 방법에 관하여 생각해본 장단점은 다음과 같습니다.
     1. 하나의 화면 단위로 View 를 구현하기에 스토리보드 보다는 병합 충돌 발생가능성이 낮지만, 여전히 이 문제에서 자유롭지 못하다.
     2. 인터페이스 빌더를 통해 손쉽게, 직관적으로 화면의 구성을 파악할 수 있다.
     3. 코드로 구현하는 것 보다는 복잡한 화면을 구성함에 있어 어려울 수 있다. (자유도가 떨어진다.) 
   * 스토리보드를 사용하는 방법에 관하여 생각해본 장단점은 다음과 같습니다.
     1. 서로 다른 화면간에 전환이 이뤄질 때 어떤 맥락에서 보여지는지, 해당 화면이 무슨 의미를 지니는지 파악하기 쉽습니다.
     2. 실제 앱을 구현하기 전에 간단한 동작을 목업의 형태로 구현해보기에 아주 적합합니다.
     3. 뷰컨과 뷰 간에 의존성이 높아지기 때문에 재사용성 측면에서 손해를 봅니다.
     4. 코드나 XIB 보다 협업시에 병합 충돌 문제를 더욱 야기할 수 있습니다. 
   * 위와 같이 생각해본 장단점 중에서 장점을 추려서 프로젝트에 접목해보고자 다음과 같은 구조를 프로젝트에 채택해보았습니다. 
     1. 재사용 가능성이 높은 화면은 최대한 XIB를 활용하여 별도의 View 모듈 형태로 분리하는 작업을 진행하였습니다.
     2. 화면 전환 및 어느 화면의 맥락(이야기)에 관하여 각 화면에 대응되는 별도의 Scene을 스토리보드에 구현하여 다른 개발자가 앱 구조를 빠르게 파악할 수 있도록 구현해보았습니다.
     3. 스토리보드에서 발생할 수 있는 병합문제를 줄이기 위해 모듈화된 View를 스토리보드의 Scene 위에 얹을 때에는 최대한 코드를 활용하는 방식을 채택해보았습니다.
