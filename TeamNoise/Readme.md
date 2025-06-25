📁 Clink 프로젝트 완전한 구조 (2025년 최신화) - 실제 완성 상태만 반영
========================================

🚀 프로젝트 개요:
- 프로젝트명: Clink (온라인 강의실 플랫폼)
- 개발 언어: Java (JSP/Servlet)
- 서버: Apache Tomcat 9.x
- 데이터베이스: MariaDB 10.x
- 빌드 도구: Eclipse IDE (Dynamic Web Project)
- 아키텍처: MVC 패턴 + 하이브리드 컨트롤러 구조

📂 프로젝트 루트: ClinkProject/
========================================

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

========================================
🚨 절대 준수 사항 (변경 금지)
========================================

1. **서블릿 매핑 규칙**
   - 절대 @WebServlet 어노테이션 사용 금지
   - 오직 web.xml에서만 서블릿 매핑 설정

2. **URL 패턴 구조 (완성됨)**
   ```
   MainController     → *.do         (모든 .do 요청을 받아서 위임)
   BoardController    → /board/*     (게시판 관련) - ✅ 완성됨
   ClassController    → /class/*     (수업 관련) - ✅ 완성됨
   FileController     → /file/*      (파일 관련) - ✅ 완성됨
   ```

3. **하이브리드 라우팅 시스템**
   - MainController: 모든 *.do 요청을 받아서 적절한 컨트롤러로 위임
   - 각 전용 컨트롤러: 실제 비즈니스 로직 처리
   - 이 구조는 절대 변경하면 안 됨

4. **데이터베이스 연결**
   - 반드시 DBConnection.java 사용
   - MariaDB JDBC 드라이버: mariadb-java-client-3.x.x.jar
   - 연결 정보: localhost:3306/clink_db, root 계정

5. **게시판 하이브리드 시스템 (완성됨)**
   - 자유게시판: FreeBoardDAO/Service 사용 (최적화)
   - 다른 게시판: BoardDAO/Service 사용 (범용)
   - BoardController가 자동으로 적절한 서비스 선택

========================================
🎯 현재 완성된 기능들
========================================

✅ **완성된 컨트롤러들**
- **FileController.java** (파일 업로드/다운로드 완료)
- **ClassController.java** (교수 수업 참여 완료)
  - ClassPageHandler.java
  - ClassAjaxHandler.java
  - ClassQuestionHandler.java
  - ClassPollHandler.java
  - ClassAssignmentHandler.java
- **BoardController.java** (게시판 완전 완성)

✅ **완성된 서비스들**
- **FileService.java** (파일 관리 완료)
- **ClassService.java** (수업 관리 완료)
- **BoardService.java** (범용 게시판 완료)
- **FreeBoardService.java** (자유게시판 전용 완료)

✅ **완성된 DAO들**
- **FileDAO.java** (파일 DB 연동 완료)
- **ClassDAO.java** (수업 DB 연동 완료)
- **BoardDAO.java** (범용 게시판 DB 완료)
- **FreeBoardDAO.java** (자유게시판 전용 DB 완료)

✅ **완성된 DTO들**
- **FileInfo.java** (파일 정보 완료)
- **Class.java** (수업 정보 완료)
- **Post.java** (게시글 정보 완료)
- **Comment.java** (댓글 정보 완료)

✅ **완성된 프론트엔드**
- **게시판 관련**: freePage.jsp, questionPage.jsp, photoPage.jsp, dataPage.jsp (완료)
- **게시글 관련**: writePost.jsp, viewPost.jsp (파일 업로드/다운로드 완료)
- **수업 관련**: enterClass.jsp (교수 수업 관리 완료)
- **JavaScript**: 모든 게시판 및 파일 기능 완료

✅ **완성된 게시판 기능들**
- 📝 게시글 작성/수정/삭제 (파일 첨부 포함)
- 📋 게시판별 목록 보기 (페이징, 검색)
- 👀 게시글 상세보기 (첨부파일 다운로드)
- 💬 댓글 작성/수정/삭제
- 🔍 검색 기능 (제목, 내용, 작성자)
- 📁 파일 업로드/다운로드 (한글 파일명 지원)
- 🏫 수업별 게시판 분리

========================================
💡 핵심 설계 원칙
========================================

1. **책임 분리**: 각 컨트롤러는 명확한 역할 분담
   - BoardController: 모든 게시판 통합 관리
   - 하이브리드 서비스: 자유게시판 최적화 + 범용 게시판

2. **확장성**: 새로운 기능 추가가 용이한 구조
   - 새 게시판 타입: BoardDAO/Service 사용
   - 특별한 요구사항: 전용 DAO/Service 생성

3. **유지보수성**: 코드 수정 시 영향 범위 최소화
   - 게시판 로직이 BoardController에 집중
   - 파일 처리가 FileController/Service에 집중

4. **성능**: 파일 처리 최적화 및 메모리 효율성
   - 대용량 파일 처리 최적화
   - 스트리밍 다운로드 지원

5. **보안**: SQL 인젝션 방지 및 파일 업로드 보안
   - PreparedStatement 사용
   - 파일 확장자 검증
   - 업로드 경로 보안

========================================
🚀 최종 목표
========================================

1. ✅ 서버가 오류 없이 시작
2. ✅ 모든 URL이 정상 작동 (하이브리드 라우팅)
3. ✅ 데이터베이스 CRUD 기능 완벽 동작
4. ✅ 파일 업로드/다운로드 정상 작동 (한글 파일명 지원)
5. ✅ 교수 수업 참여 기능 완벽 작동
6. ✅ 게시판 시스템 완벽 작동 (4개 게시판 + 파일 첨부)
