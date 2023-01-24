# 🚚🌮foodEodEastzy

## 🗒목차
- [주제 및 개요](#주제-및-개요)
- [개발환경](#개발환경)
- [DB 다이어그램](#DB-다이어그램)
- [기능 구현](#기능-구현)
- [느낀 점](#느낀-점)

## 주제 및 개요

<h3>주제</h3> 
푸드트럭 소비 문화의 편의성을 제공하고, 체계화하여 활성화하는 <b>'푸드트럭 주문 웹 서비스'</b></br></br> 

**작업기간 :** 2022.09 ~ 2022.09(1개월)</br></br>
**👩‍💻인력 구성 :** BE 6명(FE 구현까지 전담하여 업무 수행)</br>
- 팀원 서은영 : 개인 사용자 회원가입, 메인 화면(홈)
- 팀원 고하율 : 로그인(개인 사용자, 사업자), 마이페이지
- 팀원 김지오 : 가게 검색, 가게 정보, 장바구니, 결제
- 팀원 윤다혜 : 사업자 회원가입, 가게 찜
- 팀원 김현정 : 사업자 마이페이지 
- 팀원 이세라 : 게시판, 관리자 페이지, 공지사항

**주요 기능**</br>
- 로그인(개인, 사업자)&로그아웃</br>
- 회원가입(개인, 사업자)</br>
- 마이페이지(회원정보 수정, 찜 목록, 주문 내역, 제보하기, 회원 탈퇴)</br>
- 사업자 마이페이지(회원정보 수정, 찜 목록, 주문 내역, 제보하기, 회원 탈퇴)</br>
- 메인 화면(카테고리 및 공지사항 조회)</br>
- 가게 검색(가게 정보 및 메뉴 리스트 조회)</br>
- 장바구니</br> 
- 결제(결제 후 영수증, 결제 후 대기화면)</br>
- 게시판(개인, 사업자, 관리자)</br>
- 관리자 페이지(공지사항)</br>

## 🖥개발환경
- JAVA 8</br>
- JDK 1.8.0</br>
- IDE : Eclipse sts4</br>
- Framework : Spring Framework</br>
- Database : MySQL</br>
- ORM : Mybatis</br>

## DB 다이어그램
<h3>유스케이스 다이어그램</h3>
<img width="620" alt="image" src="https://user-images.githubusercontent.com/112611440/214293862-0b30b9e3-485c-4e0f-a4dd-6ff57fccd425.png">

<h3>ERD 다이어그램</h3>
<img width="445" alt="image" src="https://user-images.githubusercontent.com/112611440/214294034-b66c2117-4c1b-47c8-ba84-d15d85032612.png">

## 👩‍💻💻기능 구현
<h3>1. 가게 검색 기능</h3>
<img width="585" alt="검색-가게정보 검색1" src="https://user-images.githubusercontent.com/112611440/214294478-1b32f511-1594-48a7-b94e-25afdfceddaa.png"></br>
검색 창에 가게를 입력하면 다음과 같이 가게 정보가 나온다.

<img width="746" alt="검색-가게정보 검색2" src="https://user-images.githubusercontent.com/112611440/214294699-4d7553db-377f-4ae2-b01e-b1dc7c5352c2.png"></br>
검색 조건에 맞는 가게가 나오며, 가게의 운영 정보가 나온다.</br>
영업 중 일시 - 영업 중</br>
영업 종료 일시 - 영업 종료</br>

<img width="710" alt="가게-가게 메뉴 조회1" src="https://user-images.githubusercontent.com/112611440/214295348-6a1be94c-8a8e-4160-91e0-0acfe97271a1.png"></br>
원하는 가게를 클릭하면 해당 가게의 메뉴를 조회할 수 있게 구현하였다.</br> 
오른쪽 상단에 가게 상세정보를 클릭하면</br>

<img width="939" alt="가게-가게상세정보2" src="https://user-images.githubusercontent.com/112611440/214295624-7d73aa27-532a-4d3d-bc6e-39099328e33a.png">
해당 가게의 상세 정보와, 가게 메모를 확인할 수 있다.</br>  

<h3>2. 장바구니 기능</h3>
<img width="633" alt="장바구니-조회1" src="https://user-images.githubusercontent.com/112611440/214296059-df2de9b1-c306-4b0f-b649-40c7cde60963.png"></br>
가게 메뉴 페이지에서 장바구니 추가 버튼을 눌러 장바구니를 조회할 수 있도록 구현하였다.</br>

<img width="718" alt="장바구니-삭제2" src="https://user-images.githubusercontent.com/112611440/214296284-276b8000-e50d-43db-b116-d8f84dfd680f.png"></br>
X 버튼을 눌러 원하는 메뉴를 삭제할 수 있도록 구현하였다.</br>

<h3>3. 결제 기능</h3>
<img width="341" alt="결제-결제하기" src="https://user-images.githubusercontent.com/112611440/214296572-8392e727-40bc-451e-8762-694d7eb85664.png"></br>
결제 페이지에서 오른쪽에 사용자가 주문한(장바구니에 담은) 메뉴명이 뜨게 구현하였다.</br>

<img width="390" alt="결제-완료후 주문대기2" src="https://user-images.githubusercontent.com/112611440/214296823-233cb6f5-a28a-4c39-af2e-1d1a9a964646.png"></br>
결제가 완료된 후 주문 정보(주문 번호, 소요시간, 요청사항, 주문내역)이 담긴 주문대기 페이지를 구현하였다.</br>

<img width="487" alt="결제-주문내역3" src="https://user-images.githubusercontent.com/112611440/214297098-d6297e06-1ff9-482d-8de9-7a01ee397bcc.png"></br>
결제가 완료된 후 결제 정보를 담은 영수증 페이지를 구현하였다.</br>
여기서 사용자 메모는 사업자가 블랙컨슈머를 관리하는 메모란이므로, <br>
사업자에게는 뜨지만 사용자에게는 보여지지 않는 란이다.

## 🌟느낀 점
- Git을 통해 프로젝트 코드 관리 및 효율적인 협업이 가능해 졌고, Git의 이해도가 증가하였다. </br>
- 기능 정의서, 레이아웃 정의서, DB 용어사전, WBS 등의 문서화 작업을 통해 프로젝트 관리 방법을 알게 되었다.</br>
- 쿠키(Cookie)와 세션(Session)의 차이에 대해 알게 되었고, 사용자ID 가게 ID는 세션을 통해 관리해야 하는 것을 알게 되었다.</br>
- GET과 POST방식의 차이점을 알게 되었고, 어느 경우에 사용해야 하는지 알게 되었다. 
