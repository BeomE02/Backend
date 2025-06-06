# TeamNoise - 회원가입 및 로그인 기능 설명

본 프로젝트는 JSP 기반으로 회원가입 및 로그인 기능을 구현하며, 다음 JSP 파일들을 중심으로 구성되어 있습니다.

---

## 📁 주요 JSP 파일 설명

### 1. `signup.jsp` – 회원가입 폼

- 사용자 입력 항목:
  - 이름
  - 아이디
  - 비밀번호 / 비밀번호 확인
  - 역할 선택 (교수 / 학생)
- 기능:
  - 비밀번호 두 칸 입력 → 일치 여부 실시간 확인 (`✅ / ❌`)
  - 교수 선택 시 인증코드 입력란 활성화
  - 클라이언트 측 유효성 검사 (빈 칸/불일치시 가입 불가)

---

### 2. `signupPro.jsp` – 회원가입 처리

- MariaDB와 JNDI(JDBC)를 통해 사용자 정보 DB에 저장
- 교수 선택 시, `auth_codes` 테이블의 인증코드 확인 후 등록 허용
- 가입 성공 시 `index.jsp`로 이동, 실패 시 alert 발생
- 모든 메시지는 한글이 깨지지 않도록 UTF-8 완전 대응

---

### 3. `loginPro.jsp` – 로그인 처리

- 아이디와 비밀번호를 확인하여 사용자 정보 조회
- 로그인 성공 시:
  - 세션에 `userId`, `username`, `name`, `role` 저장
  - `main.jsp`로 이동
- 실패 시 alert로 오류 메시지 출력
- 모든 메시지 한글 인코딩 대응 완료

---

### 4. `main.jsp` – 메인 대시보드

- 로그인한 사용자만 접근 가능 (`session` 체크)
- 상단: 사용자 이름, 로그아웃 버튼
- 게시판 진입 링크:
  - 답변게시판
  - 자료게시판
  - 포토게시판
- "수업 참여" 버튼 클릭 시 역할에 따라 분기:
  - 교수 → `classManage.jsp`
  - 학생 → `enterClass.jsp`

---

### 5. `logout.jsp` – 로그아웃 처리

- `session.invalidate()`로 모든 세션 초기화
- `index.jsp`로 리다이렉트

---

## ⚙️ 환경 설정

- DB명: `noise_db`
- DB 계정: `jbha`
- 비밀번호: `1111`
- JDBC JNDI 이름: `jdbc/mariadb`
- JDBC 드라이버: `mariadb-java-client-3.5.3.jar`
- JSP 파일 인코딩: `UTF-8`

---

## 🧪 테스트 포인트

- 회원가입 시 비밀번호 불일치 → 가입 안 됨
- 교수 인증코드 틀릴 경우 → alert 출력
- 로그인 실패 시 → alert 출력
- 모든 alert, 입력 메시지 → 한글 안 깨짐

---

> 📌 이 문서는 초기 회원 관리 기능의 흐름을 설명하며, 이후 게시판 기능/수업 관리 기능으로 확장됩니다.

작성자 : 하재범
