# 1주차 3번째(01.16.2023)

---

김은영 강사님

[Navigation - Interaction - iOS Human Interface Guidelines](https://codershigh.github.io/guidelines/ios/human-interface-guidelines/interaction/navigation/index.html)

목표

---

Swift 문법을 확용하여 SwiftUI만들기

옵셔널의 의미

삼항연산자

![Untitled](1%E1%84%8C%E1%85%AE%E1%84%8E%E1%85%A1%203%E1%84%87%E1%85%A5%E1%86%AB%E1%84%8D%E1%85%A2(01%2016%202023)%20073cdfa0fb9544a99a14dd5731f8ae6f/Untitled.png)

isOpen ? true: false{

toggle(true → false, false → true)

}

- navigation
- modal
- navigation vs modal
- tabbar
- stack vs list vs grid

![Untitled](1%E1%84%8C%E1%85%AE%E1%84%8E%E1%85%A1%203%E1%84%87%E1%85%A5%E1%86%AB%E1%84%8D%E1%85%A2(01%2016%202023)%20073cdfa0fb9544a99a14dd5731f8ae6f/Untitled%201.png)

네비게이션: 화면에 대한 관리를 담당

네비게이션 컨트롤러는 뷰 컨트롤러를 담당

앱을 사용할 때 보이는 화면을 컨트롤 해주는 역할 - 스택구조

네비게이션 화면의 뷰를 계층적으로 분리하여 보여줌 → 네비게이션 스택

면접: 네비게이션과 모달의 비교

모달 화면위에 겹처서 나오는 것(네비게이션은 뒤로 돌아갈 수 있음, 화면전체담당) 알림의 경우 모달(Allow, Don’t allow, Cancel)

네비게이션: 화면이 쌓여감

모달: 돌발적인 알림

모달은 새로운 정보를 불러옴

탭바 → 서로 연관성이 없는 화면을 쉽게 왔다갔다 하기 위해 사용

스택 vs 리스트 vs 그리드

각각 다른 컴포넌트

- 가로 또는 세로로 한줄로 표시되는지 여러줄로 표시될 수 있는지의 차이
- 재활용 유무에 따른 차이
- 계층을 갖는 데이터를 표시하는지에 차이

vstack(세로 1줄) / grid(2x2)표시가능

tableView →목록을 재활용(LazyStack, List, LazyGrid), 그냥 스택은 재활용이 안됨

리스트는 계층을 갖는 데이터를 표시함

apple developer (app)

모달

![Untitled](1%E1%84%8C%E1%85%AE%E1%84%8E%E1%85%A1%203%E1%84%87%E1%85%A5%E1%86%AB%E1%84%8D%E1%85%A2(01%2016%202023)%20073cdfa0fb9544a99a14dd5731f8ae6f/Untitled%202.png)

네비게이션

![Untitled](1%E1%84%8C%E1%85%AE%E1%84%8E%E1%85%A1%203%E1%84%87%E1%85%A5%E1%86%AB%E1%84%8D%E1%85%A2(01%2016%202023)%20073cdfa0fb9544a99a14dd5731f8ae6f/Untitled%203.png)

커맨드 쉬프트 o: quick option

![Untitled](1%E1%84%8C%E1%85%AE%E1%84%8E%E1%85%A1%203%E1%84%87%E1%85%A5%E1%86%AB%E1%84%8D%E1%85%A2(01%2016%202023)%20073cdfa0fb9544a99a14dd5731f8ae6f/Untitled%204.png)