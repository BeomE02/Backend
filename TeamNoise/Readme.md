# 📚 Clink - 온라인 강의실 플랫폼

![Clink Logo](logo.png)

## 🚀 프로젝트 개요

**Clink**는 교수와 학생들을 위한 통합 온라인 강의실 플랫폼입니다. 실시간 수업 진행, 게시판 커뮤니티, 파일 공유 등 교육에 필요한 모든 기능을 제공합니다.

### 🎯 주요 특징

- **실시간 수업 관리**: 교수가 수업을 생성하고 학생들이 참여할 수 있는 온라인 강의실
- **통합 게시판 시스템**: 자유게시판, 질문게시판, 사진게시판, 자료게시판 지원
- **파일 업로드/다운로드**: 한글 파일명을 지원하는 안전한 파일 관리 시스템
- **투표 및 과제**: 교수가 실시간으로 투표를 진행하고 과제를 관리할 수 있는 기능
- **하이브리드 아키텍처**: 최적화된 성능과 확장성을 위한 분리된 컨트롤러 구조

## 🛠 기술 스택

| 구분 | 기술 |
|------|------|
| **언어** | Java (JSP/Servlet) |
| **서버** | Apache Tomcat 9.x |
| **데이터베이스** | MariaDB 10.x |
| **IDE** | Eclipse IDE (Dynamic Web Project) |
| **아키텍처** | MVC 패턴 + 하이브리드 컨트롤러 |
| **외부 라이브러리** | JSTL 1.2, MariaDB JDBC Driver 3.5.2 |

## 📂 프로젝트 구조

```
📁 ClinkProject/
├── 📁 src/                                    ← Java 소스 코드
│   └── 📁 com/
│       └── 📁 clink/
│           ├── 📁 controller/                 ← ✅ **컨트롤러 계층 (하이브리드 분리)**
│           │   ├── ✅ MainController.java     ← 교통정리 역할 (*.do 요청 받아서 위임)
│           │   ├── ✅ BoardController.java    ← 게시판 로직 처리 (완성됨)
│           │   ├── ✅ ClassController.java    ← 수업 로직 처리 (완성됨)
│           │   │   ├── ✅ ClassPageHandler.java       ← 페이지 요청 처리
│           │   │   ├── ✅ ClassAjaxHandler.java       ← AJAX 요청 처리
│           │   │   ├── ✅ ClassQuestionHandler.java   ← 질문/답변 처리
│           │   │   ├── ✅ ClassPollHandler.java       ← 투표 처리
│           │   │   └── ✅ ClassAssignmentHandler.java ← 과제 처리
│           │   └── ✅ FileController.java     ← 파일 처리 (완성됨)
│           │
│           ├── 📁 model/                      ← ✅ **비즈니스 로직 계층**
│           │   ├── 📁 dto/                    ← ✅ **데이터 전송 객체**
│           │   │   ├── ✅ User.java           ← 사용자 정보
│           │   │   ├── ✅ Class.java          ← 수업 정보 (완성됨)
│           │   │   ├── ✅ Post.java           ← 게시글 정보 (완성됨)
│           │   │   ├── ✅ Comment.java        ← 댓글 정보 (완성됨)
│           │   │   ├── ✅ Question.java       ← 질문 정보
│           │   │   ├── ✅ Assignment.java     ← 과제 정보
│           │   │   ├── ✅ Poll.java           ← 투표 정보
│           │   │   └── ✅ FileInfo.java       ← 파일 정보 (완성됨)
│           │   │
│           │   ├── 📁 dao/                    ← ✅ **데이터 접근 계층**
│           │   │   ├── ✅ UserDAO.java        ← 사용자 DB 접근
│           │   │   ├── ✅ ClassDAO.java       ← 수업 DB 접근 (완성됨)
│           │   │   ├── ✅ BoardDAO.java       ← 범용 게시판 DB 접근 (완성됨)
│           │   │   ├── ✅ FreeBoardDAO.java   ← 자유게시판 전용 DB 접근 (완성됨)
│           │   │   ├── ✅ QuestionDAO.java    ← 질문 DB 접근
│           │   │   ├── ✅ AssignmentDAO.java  ← 과제 DB 접근
│           │   │   ├── ✅ PollDAO.java        ← 투표 DB 접근
│           │   │   └── ✅ FileDAO.java        ← 파일 DB 접근 (완성됨)
│           │   │
│           │   └── 📁 service/                ← ✅ **서비스 계층**
│           │       ├── ✅ UserService.java    ← 사용자 비즈니스 로직
│           │       ├── ✅ ClassService.java   ← 수업 비즈니스 로직 (완성됨)
│           │       ├── ✅ BoardService.java   ← 범용 게시판 서비스 (완성됨)
│           │       ├── ✅ FreeBoardService.java ← 자유게시판 전용 서비스 (완성됨)
│           │       └── ✅ FileService.java    ← 파일 비즈니스 로직 (완성됨)
│           │
│           └── 📁 util/                       ← ✅ **유틸리티 클래스**
│               └── ✅ DBConnection.java       ← 데이터베이스 연결
│
├── 📁 WebContent/                             ← 웹 리소스
│   ├── 📁 css/                                ← ✅ **스타일시트 (완성됨)**
│   │   ├── ✅ reset.css                       ← CSS 리셋
│   │   ├── ✅ common.css                      ← 공통 스타일
│   │   ├── ✅ layout.css                      ← 레이아웃 스타일
│   │   ├── ✅ index.css                       ← 인덱스 페이지
│   │   ├── ✅ login.css                       ← 로그인 페이지
│   │   ├── ✅ signup.css                      ← 회원가입 페이지
│   │   ├── ✅ find.css                        ← 계정 찾기 페이지
│   │   ├── ✅ main.css                        ← 메인 페이지
│   │   ├── ✅ enterRoom.css                   ← 학생 수업 입장
│   │   ├── ✅ enterClass.css                  ← 교수 수업 관리
│   │   ├── ✅ classJoin.css                   ← 수업 참여 페이지
│   │   ├── ✅ classStatistics.css             ← 수업 통계
│   │   ├── ✅ classArchive.css                ← 수업 아카이브
│   │   ├── ✅ freePage.css                    ← 자유게시판 (완성됨)
│   │   ├── ✅ questionPage.css                ← 질문게시판 (완성됨)
│   │   ├── ✅ photoPage.css                   ← 사진게시판 (완성됨)
│   │   ├── ✅ dataPage.css                    ← 자료게시판 (완성됨)
│   │   ├── ✅ writePost.css                   ← 게시글 작성 (완성됨)
│   │   ├── ✅ viewPost.css                    ← 게시글 보기 (완성됨)
│   │   └── ✅ board.css                       ← 게시판 공통 (완성됨)
│   │
│   ├── 📁 js/                                 ← ✅ **JavaScript (완성됨)**
│   │   ├── ✅ common.js                       ← 공통 스크립트
│   │   ├── ✅ utils.js                        ← 유틸리티 함수
│   │   ├── ✅ ajax.js                         ← AJAX 통신
│   │   ├── ✅ validation.js                   ← 폼 검증
│   │   ├── ✅ index.js                        ← 인덱스 페이지
│   │   ├── ✅ login.js                        ← 로그인 페이지
│   │   ├── ✅ signup.js                       ← 회원가입 페이지
│   │   ├── ✅ find.js                         ← 계정 찾기 페이지
│   │   ├── ✅ main.js                         ← 메인 페이지
│   │   ├── ✅ enterRoom.js                    ← 학생 수업 입장
│   │   ├── ✅ enterClass.js                   ← 교수 수업 관리 (완성됨)
│   │   ├── ✅ classJoin.js                    ← 수업 참여 페이지
│   │   ├── ✅ classStatistics.js              ← 수업 통계
│   │   ├── ✅ classArchive.js                 ← 수업 아카이브
│   │   ├── ✅ freePage.js                     ← 자유게시판 (완성됨)
│   │   ├── ✅ questionPage.js                 ← 질문게시판 (완성됨)
│   │   ├── ✅ photoPage.js                    ← 사진게시판 (완성됨)
│   │   ├── ✅ dataPage.js                     ← 자료게시판 (완성됨)
│   │   ├── ✅ writePost.js                    ← 게시글 작성 (파일 업로드 완성)
│   │   ├── ✅ viewPost.js                     ← 게시글 보기 (파일 다운로드 완성)
│   │   └── ✅ board.js                        ← 게시판 공통 (완성됨)
│   │
│   ├── 📁 image/                              ← ✅ **이미지 리소스**
│   │   ├── ✅ logo.png                        ← 로고
│   │   ├── ✅ main1.png                       ← 메인 이미지
│   │   ├── ✅ favicon.ico                     ← 파비콘
│   │   ├── ✅ loading.gif                     ← 로딩 애니메이션
│   │   ├── ✅ icon_arrow1.png                 ← 화살표 아이콘들
│   │   ├── ✅ icon_arrow2.png
│   │   ├── ✅ icon_arrow_submit.png
│   │   ├── ✅ icon_board1.png                 ← 게시판 아이콘들
│   │   ├── ✅ icon_board2.png
│   │   ├── ✅ icon_board3.png
│   │   ├── ✅ icon_board4.png
│   │   ├── ✅ icon_github.png                 ← GitHub 아이콘
│   │   ├── ✅ indexAsk.png                    ← 인덱스 질문 이미지
│   │   ├── ✅ indexCom.png                    ← 인덱스 커뮤니티 이미지
│   │   ├── ✅ login-bg.jpg                    ← 로그인 배경
│   │   ├── ✅ signup-bg.jpg                   ← 회원가입 배경
│   │   ├── ✅ classroom.jpg                   ← 강의실 이미지
│   │   ├── ✅ statistics-chart.png            ← 통계 차트
│   │   ├── ✅ post-placeholder.jpg            ← 게시글 플레이스홀더
│   │   ├── ✅ pdf-icon.png                    ← 파일 아이콘들
│   │   ├── ✅ doc-icon.png
│   │   ├── ✅ img-icon.png
│   │   └── ✅ zip-icon.png
│   │
│   ├── 📁 uploads/                            ← ✅ **파일 업로드 디렉토리 (웹 접근 가능)**
│   │   ├── 📁 temp/                           ← 임시 파일
│   │   ├── 📁 2025/                           ← 연도별 폴더
│   │   │   ├── 📁 01/                         ← 월별 폴더
│   │   │   │   ├── 📁 class_1/                ← 수업별 폴더 (WEB101)
│   │   │   │   ├── 📁 class_2/                ← 수업별 폴더 (DSA202)
│   │   │   │   └── 📁 general/                ← 일반 파일들
│   │   │   └── 📁 02/                         ← 2월 폴더
│   │   └── 📁 cache/                          ← 캐시 파일들
│   │
│   └── 📁 WEB-INF/                            ← 웹 설정 및 보호된 리소스
│       ├── ✅ web.xml                         ← 서블릿 설정 (완성됨)
│       │
│       ├── 📁 views/                          ← ✅ **JSP 뷰 파일들**
│       │   ├── 📁 user/                       ← 사용자 관련 페이지
│       │   │   ├── ✅ index.jsp               ← 메인 홈페이지
│       │   │   ├── ✅ login.jsp               ← 로그인 페이지
│       │   │   ├── ✅ signup.jsp              ← 회원가입 페이지
│       │   │   └── ✅ find.jsp                ← 계정 찾기 페이지
│       │   │
│       │   ├── 📁 main/                       ← 메인 관련 페이지
│       │   │   └── ✅ main.jsp                ← 로그인 후 메인
│       │   │
│       │   ├── 📁 class/                      ← 수업 관련 페이지
│       │   │   ├── ✅ enterRoom.jsp           ← 학생 수업 입장
│       │   │   ├── ✅ enterClass.jsp          ← 교수 수업 관리 (완성됨)
│       │   │   ├── ✅ classJoin.jsp           ← 수업 참여 페이지
│       │   │   ├── ✅ classStatistics.jsp     ← 수업 통계
│       │   │   └── ✅ classArchive.jsp        ← 수업 아카이브
│       │   │
│       │   ├── 📁 board/                      ← 게시판 관련 페이지 (완성됨)
│       │   │   ├── ✅ freePage.jsp            ← 자유게시판 (완성됨)
│       │   │   ├── ✅ questionPage.jsp        ← 질문게시판 (완성됨)
│       │   │   ├── ✅ photoPage.jsp           ← 사진게시판 (완성됨)
│       │   │   ├── ✅ dataPage.jsp            ← 자료게시판 (완성됨)
│       │   │   ├── ✅ writePost.jsp           ← 게시글 작성 (파일 업로드 완성)
│       │   │   └── ✅ viewPost.jsp            ← 게시글 보기 (파일 다운로드 완성)
│       │   │
│       │   └── 📁 error/                      ← 에러 페이지
│       │       ├── ✅ 404.jsp                 ← 404 에러
│       │       ├── ✅ 500.jsp                 ← 500 에러
│       │       └── ✅ error.jsp               ← 일반 에러
│       │
│       └── 📁 lib/                            ← ✅ **외부 라이브러리**
│           ├── ✅ jstl-1.2.jar                ← JSP 태그 라이브러리
│           └── ✅ mariadb-java-client-3.5.2.jar ← MariaDB JDBC 드라이버
│
├── 📁 build/                                  ← 빌드 결과물 (자동 생성)
│   └── 📁 classes/                            ← 컴파일된 클래스 파일들
│
├── 📁 uploads/                                ← ✅ **실제 파일 저장소 (서버 외부)**
│   ├── 📁 2025/                               ← 연도별
│   │   ├── 📁 01/                             ← 월별
│   │   │   ├── 📁 class_1/                    ← 수업별 (WEB101)
│   │   │   │   ├── 20250118_143022_abc123_강의자료1.pdf
│   │   │   │   └── 20250118_143045_def456_과제안내.docx
│   │   │   ├── 📁 class_2/                    ← 수업별 (DSA202)
│   │   │   │   └── 20250118_144012_ghi789_알고리즘소개.pptx
│   │   │   └── 📁 general/                    ← 일반 파일들
│   │   └── 📁 02/                             ← 2월
│   └── 📁 temp/                               ← 임시 파일들
│
├── 📄 .project                                ← Eclipse 프로젝트 설정
├── 📄 .classpath                              ← Eclipse 클래스패스 설정
└── 📄 .gitignore                              ← Git 무시 파일 목록
```

## 🔧 설치 및 실행

### 1. 요구사항

- **Java**: JDK 8 이상
- **Tomcat**: Apache Tomcat 9.x
- **MariaDB**: 10.x 이상
- **IDE**: Eclipse IDE (Dynamic Web Project 지원)

### 2. 데이터베이스 설정

```sql
-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS clink_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE clink_db;

-- 테이블 생성 (프로젝트 내 SQL 스크립트 참조)
```

### 3. 프로젝트 설정

1. **Eclipse에서 프로젝트 Import**
   ```
   File > Import > Existing Projects into Workspace
   ```

2. **라이브러리 설정**
   - `WEB-INF/lib/` 디렉토리에 필요한 JAR 파일들이 포함되어 있습니다
   - JSTL 1.2
   - MariaDB JDBC Driver 3.5.2

3. **데이터베이스 연결 설정**
   ```java
   // src/com/clink/util/DBConnection.java
   private static final String URL = "jdbc:mariadb://localhost:3306/clink_db";
   private static final String USERNAME = "root";
   private static final String PASSWORD = "your_password";
   ```

### 4. 서버 실행

1. Tomcat 서버에 프로젝트 배포
2. 서버 시작
3. 브라우저에서 `http://localhost:8080/ClinkProject` 접속

## 🎮 주요 기능

### 🔐 사용자 인증
- **회원가입/로그인**: 학생과 교수 역할 구분
- **계정 찾기**: 아이디/비밀번호 찾기 기능

### 👨‍🏫 교수 기능
- **수업 생성 및 관리**: 수업 코드로 학생 참여 관리
- **실시간 질문 답변**: 학생들의 질문에 실시간 응답
- **투표 진행**: 실시간 투표를 통한 학생 참여 유도
- **과제 관리**: 과제 등록 및 제출 관리
- **통계 조회**: 수업 참여도 및 활동 통계

### 👨‍🎓 학생 기능
- **수업 참여**: 수업 코드로 강의실 입장
- **질문하기**: 교수에게 실시간 질문
- **투표 참여**: 교수가 진행하는 투표에 참여
- **과제 제출**: 온라인으로 과제 제출

### 📋 게시판 시스템
- **자유게시판**: 일반적인 소통 공간
- **질문게시판**: 학습 관련 질문과 답변
- **사진게시판**: 이미지 위주의 게시글
- **자료게시판**: 학습 자료 공유

### 📁 파일 관리
- **파일 업로드**: 다양한 형식의 파일 업로드 지원
- **파일 다운로드**: 한글 파일명 완벽 지원
- **파일 보안**: 확장자 검증 및 안전한 업로드 경로

## 🏗 아키텍처 설계

### 하이브리드 라우팅 시스템

```
URL 패턴 구조:
├── MainController     → *.do         (모든 .do 요청 받아서 위임)
├── BoardController    → /board/*     (게시판 관련)
├── ClassController    → /class/*     (수업 관련)
└── FileController     → /file/*      (파일 관련)
```

### MVC 패턴 적용

- **Model**: DTO, DAO, Service 계층으로 분리
- **View**: JSP를 이용한 프레젠테이션 계층
- **Controller**: 요청 처리 및 비즈니스 로직 호출

### 하이브리드 서비스 구조

- **자유게시판**: FreeBoardDAO/Service 사용 (최적화)
- **다른 게시판**: BoardDAO/Service 사용 (범용)
- **자동 선택**: BoardController가 적절한 서비스 자동 선택

## 🔒 보안 기능

- **SQL 인젝션 방지**: PreparedStatement 사용
- **파일 업로드 보안**: 확장자 검증 및 안전한 경로
- **세션 관리**: 사용자 인증 상태 관리
- **XSS 방지**: 입력값 검증 및 이스케이프 처리

## 📈 성능 최적화

- **파일 처리 최적화**: 대용량 파일 처리 지원
- **스트리밍 다운로드**: 메모리 효율적인 파일 다운로드
- **게시판 최적화**: 자유게시판 전용 DAO로 성능 향상
- **페이징 처리**: 대량 데이터 효율적 처리

## 🚀 완성된 기능

### ✅ 백엔드
- [x] **컨트롤러**: MainController, BoardController, ClassController, FileController
- [x] **서비스**: BoardService, FreeBoardService, ClassService, FileService
- [x] **DAO**: BoardDAO, FreeBoardDAO, ClassDAO, FileDAO
- [x] **DTO**: Post, Comment, Class, FileInfo, User

### ✅ 프론트엔드
- [x] **게시판**: 4개 게시판 (자유/질문/사진/자료) 완성
- [x] **게시글**: 작성/수정/삭제/조회 (파일 첨부 포함)
- [x] **수업 관리**: 교수 수업 참여 기능 완성
- [x] **파일 시스템**: 업로드/다운로드 (한글 파일명 지원)

### ✅ 핵심 기능
- [x] 게시글 작성/수정/삭제 (파일 첨부 포함)
- [x] 게시판별 목록 보기 (페이징, 검색)
- [x] 게시글 상세보기 (첨부파일 다운로드)
- [x] 댓글 작성/수정/삭제
- [x] 검색 기능 (제목, 내용, 작성자)
- [x] 파일 업로드/다운로드 (한글 파일명 지원)
- [x] 수업별 게시판 분리

## 🛣 로드맵

### 🔄 진행 중
- [ ] 사용자 관리 시스템 (UserController, UserService)
- [ ] 학생 수업 참여 기능 완성
- [ ] 투표 시스템 완성
- [ ] 과제 관리 시스템 완성

### 📅 계획
- [ ] 실시간 알림 시스템
- [ ] 모바일 반응형 UI 개선
- [ ] API 문서 자동 생성
- [ ] 단위 테스트 코드 작성

## 👥 팀 정보

- **팀명**: TeamNoise
- **이메일**: TeamNoise@dit.ac.kr
- **GitHub**: [TeamNoise Repository](https://github.com/mipotapota/Backend/tree/main/TeamNoise)

## 📄 라이선스

© 2025 Positivus. All Rights Reserved.

---

## 🔧 개발자를 위한 추가 정보

### 서블릿 매핑 규칙
- ❌ `@WebServlet` 어노테이션 사용 금지
- ✅ `web.xml`에서만 서블릿 매핑 설정

### 코딩 컨벤션
- **패키지 구조**: `com.clink.{layer}.{feature}`
- **네이밍**: CamelCase 사용, 의미있는 변수명
- **주석**: JavaDoc 스타일 주석 권장

### 데이터베이스 설계
- **문자셋**: UTF-8 (utf8mb4) 사용
- **외래키**: CASCADE 옵션으로 참조 무결성 보장
- **인덱스**: 성능 최적화를 위한 적절한 인덱스 설정

---

📞 **문의사항이나 버그 신고는 GitHub Issues를 이용해주세요!**
