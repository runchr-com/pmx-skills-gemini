# pm-skills-gemini

![License](https://img.shields.io/badge/license-MIT-blue)
![Gemini CLI](https://img.shields.io/badge/Gemini-CLI-green)
![PM Skills](https://img.shields.io/badge/PM%20Skills-65-orange)
![Workflows](https://img.shields.io/badge/Commands-36-purple)

Gemini CLI를 위한 AI 기반 Product Management 워크플로우 모음입니다.

`pm-skills-gemini`는 PM용 구조화된 프레임워크를 Gemini CLI에 연결해서, 긴 프롬프트를 직접 작성하지 않아도 슬래시 커맨드만으로 제품 업무 흐름을 실행할 수 있게 해줍니다.

🌐 **언어**

- [English](./README.md)
- 한국어

---

## 이 프로젝트는 무엇인가요?

대부분의 AI 도구는 텍스트 생성에는 강합니다.
하지만 실제 제품 업무는 단순한 텍스트보다 아래 같은 것이 더 중요합니다.

- 문제를 명확히 정의하는 것
- 반복 가능한 사고 흐름을 만드는 것
- 구조화된 결과물을 만드는 것
- 의사결정을 돕는 것

`pm-skills-gemini`는 Gemini CLI를 재사용 가능한 PM 워크플로우 시스템으로 바꿔줍니다. 설치 후에는 `/discover`, `/write-prd`, `/plan-launch` 같은 명령을 어느 폴더에서든 바로 사용할 수 있습니다.

---

## 이런 분들에게 잘 맞습니다

특히 아래 사용자에게 유용합니다.

- 프로덕트 매니저
- 창업자와 인디해커
- 운영, 전략, 신사업 담당자
- 새로운 아이디어를 검증하려는 빌더
- Gemini CLI 안에서 구조화된 PM 사고를 활용하고 싶은 사람

---

## 할 수 있는 일

`pm-skills-gemini`로 할 수 있는 대표적인 작업은 다음과 같습니다.

- 제품 아이디어를 발굴하고 검증하기
- PRD, 유저 스토리, 테스트 시나리오 작성하기
- 시장, 경쟁, 가격, 포지셔닝 분석하기
- 인터뷰 질문지, 런치 플랜, OKR 준비하기
- 회의 메모를 정리하고 흩어진 생각을 구조화하기
- NDA, 개인정보처리방침 같은 PM 인접 문서 초안 만들기

---

## 사전 준비

설치 전에 아래가 준비되어 있어야 합니다.

- Node.js 18+
- Gemini CLI
- Gemini CLI 로그인에 사용할 Google 계정

---

## Gemini CLI 설치

Gemini CLI를 전역 설치합니다.

```bash
npm install -g @google/gemini-cli
```

한 번 실행합니다.

```bash
gemini
```

브라우저 창이 열리면 Google 계정으로 로그인하세요.
인증이 끝나면 CLI를 종료해도 됩니다.

---

## pm-skills-gemini 설치

저장소를 클론합니다.

```bash
git clone https://github.com/runchr-com/pm-skills-gemini
cd pm-skills-gemini
```

설치 스크립트를 실행합니다.

```bash
chmod +x install.sh
./install.sh
```

이 작업은 commands와 skills를 전역 Gemini 디렉토리에 설치하므로, 어떤 폴더에서든 바로 사용할 수 있습니다.

일반적인 전역 구조는 아래와 같습니다.

```text
~/.gemini/
├── commands/
└── skills/
```

---

## 빠른 시작

Gemini CLI를 실행합니다.

```bash
gemini
```

그 다음 아래 명령 중 하나를 시도해보세요.

```bash
/discover AI meeting summarizer
```

```bash
/write-prd AI customer support automation
```

```bash
/plan-launch creator analytics tool
```

---

## 커맨드 사용법

각 커맨드는 일반 프롬프트보다 더 구조화된 업무 흐름을 실행하도록 설계되어 있습니다.

기본 형식은 아래와 같습니다.

```bash
/<command> <topic>
```

예시:

```bash
/discover AI bookmark manager
```

```bash
/strategy B2B collaboration platform
```

```bash
/pricing API-first analytics product
```

팁:

- topic은 짧고 명확하게 쓰는 것이 좋습니다
- 제품, 기능, 시장, 문제 정의 형태로 시작하면 좋습니다
- 추가 배경 설명은 두 번째 메시지에서 덧붙여도 됩니다
- 아이디어 단계에서 실행 단계로 갈 때는 여러 커맨드를 연속해서 쓰는 것이 좋습니다

---

## 처음 쓰는 사람을 위한 추천 흐름

아래처럼 순서대로 써보면 가장 이해하기 쉽습니다.

### 1. 아이디어 탐색

```bash
/discover AI bookmark manager
```

### 2. 전략과 포지셔닝 정리

```bash
/strategy AI bookmark manager
/value-proposition AI bookmark manager
/business-model AI bookmark manager
```

### 3. 제품 기획 문서 작성

```bash
/write-prd AI bookmark manager
/write-stories AI bookmark manager
/plan-okrs AI bookmark manager
```

### 4. 실행과 런치 준비

```bash
/test-scenarios AI bookmark manager
/plan-launch AI bookmark manager
/setup-metrics AI bookmark manager
```

---

## 전체 command 가이드

아래는 현재 저장소에서 제공하는 모든 command에 대한 설명입니다.

---

### `/analyze-cohorts`

코호트 데이터를 시간 흐름에 따라 분석합니다.

**이럴 때 사용하세요:** 리텐션 분석, 활성화 패턴 확인, 반복 사용 추세 확인, 고객 생애주기 분석.

**보통 이런 결과가 나옵니다:** 코호트별 차이, 추세 해석, 원인 가설, 추가로 확인할 질문.

**예시:**

```bash
/analyze-cohorts signup and 30-day retention data for a B2B SaaS product
```

---

### `/analyze-feedback`

사용자 피드백을 구조화해서 분석합니다.

**이럴 때 사용하세요:** VOC 정리, 인터뷰 메모 정리, 앱 리뷰 분석, 설문 응답 요약, 기능 요청 분류.

**보통 이런 결과가 나옵니다:** 주요 테마, 불편 사항, 요청 기능, 감정 신호, 우선순위 제안.

**예시:**

```bash
/analyze-feedback user feedback for a note-taking app
```

---

### `/analyze-test`

테스트나 실험 결과를 분석합니다.

**이럴 때 사용하세요:** A/B 테스트, 파일럿, 런치 실험, 메시지 실험, 퍼널 개선 실험.

**보통 이런 결과가 나옵니다:** 가설 검토, 결과 해석, 주의점, 리스크, 다음 액션 제안.

**예시:**

```bash
/analyze-test pricing experiment results for a freemium SaaS
```

---

### `/battlecard`

경쟁사 배틀카드를 작성합니다.

**이럴 때 사용하세요:** 세일즈 자료, 경쟁사 비교, 반박 포인트 정리, 시장 포지셔닝 정리.

**보통 이런 결과가 나옵니다:** 경쟁사 강점과 약점, 예상 반론, 대응 포인트, 차별화 메시지.

**예시:**

```bash
/battlecard compare our AI search product against Perplexity
```

---

### `/brainstorm`

아이디어를 빠르게 확장하고 구조화합니다.

**이럴 때 사용하세요:** 신규 기능 아이디어, 스타트업 아이디어, 문제 정의, 성장 아이디어 탐색.

**보통 이런 결과가 나옵니다:** 아이디어 묶음, 방향성, 기회 영역, 제약사항, 후속 질문.

**예시:**

```bash
/brainstorm AI products for small retail stores
```

---

### `/business-model`

비즈니스 모델 옵션을 탐색합니다.

**이럴 때 사용하세요:** 수익 모델 설계, 마켓플레이스 구조 검토, SaaS 패키지 설계, 서비스형 비즈니스의 제품화 검토.

**보통 이런 결과가 나옵니다:** 수익 모델 옵션, 가격 논리, 비용 가정, 리스크, 추천 방향.

**예시:**

```bash
/business-model workflow automation product for legal teams
```

---

### `/competitive-analysis`

경쟁 상황을 구조적으로 분석합니다.

**이럴 때 사용하세요:** 카테고리 파악, 시장 진입 검토, 차별화 포인트 정리, 대체재 비교.

**보통 이런 결과가 나옵니다:** 경쟁 구도, 포지셔닝 맵, 강점과 약점, 빈 공간 기회.

**예시:**

```bash
/competitive-analysis AI meeting assistant market
```

---

### `/discover`

아이디어부터 가설과 실험까지 이어지는 Product Discovery 워크플로우를 실행합니다.

**이럴 때 사용하세요:** 초기 아이디어 검증, 무엇을 먼저 검증해야 할지 정리할 때, 문제와 기회를 정의할 때.

**보통 이런 결과가 나옵니다:** 문제 정의, 타깃 사용자, 핵심 가설, 리스크, 실험 아이디어, 기회 영역.

**예시:**

```bash
/discover AI meeting summarizer
```

---

### `/draft-nda`

기본 NDA 스타일 문서 초안을 만듭니다.

**이럴 때 사용하세요:** 협업 논의 전 단계, 외주/계약자 논의, 법무 검토 전 초안 준비.

**보통 이런 결과가 나옵니다:** NDA 섹션 구조, 비밀정보 정의, 예외 조항, 기간 관련 문구, 검토 포인트.

**예시:**

```bash
/draft-nda mutual NDA for a product design contractor
```

**주의:** 중요한 법률 문서는 반드시 전문가 검토를 거치세요.

---

### `/generate-data`

샘플 데이터나 모의 데이터를 생성합니다.

**이럴 때 사용하세요:** 데모, 테스트 환경, 분석 예시, UI 목업, SQL 테스트.

**보통 이런 결과가 나옵니다:** 합성 데이터 예시, 테이블 구조, 레코드 샘플, 엣지 케이스.

**예시:**

```bash
/generate-data sample subscription events for a SaaS billing dashboard
```

---

### `/growth-strategy`

성장 전략을 설계합니다.

**이럴 때 사용하세요:** 유입, 활성화, 리텐션, 루프 설계, 채널 우선순위 검토.

**보통 이런 결과가 나옵니다:** 성장 레버, 채널 옵션, 퍼널 아이디어, 실험안, 측정 제안.

**예시:**

```bash
/growth-strategy growth plan for a creator analytics tool
```

---

### `/interview`

사용자 인터뷰 질문지나 인터뷰 계획을 만듭니다.

**이럴 때 사용하세요:** 디스커버리 인터뷰, 가설 검증 인터뷰, JTBD 인터뷰, 사용성 인터뷰.

**보통 이런 결과가 나옵니다:** 인터뷰 목표, 질문 흐름, 후속 질문, 편향 방지 메모, 정리 포인트.

**예시:**

```bash
/interview interview script for power users of a team wiki product
```

---

### `/market-product`

시장 니즈와 제품 컨셉을 연결해서 정리합니다.

**이럴 때 사용하세요:** 누구를 위해 무엇을 만들지 정리할 때, market-product fit 관점에서 볼 때.

**보통 이런 결과가 나옵니다:** 타깃 세그먼트, 핵심 불편, 제품 방향, 적합성 논리, 가정 사항.

**예시:**

```bash
/market-product AI workflow tool for accountants
```

---

### `/market-scan`

시장 전체를 폭넓게 스캔합니다.

**이럴 때 사용하세요:** 시장 이해, 인접 카테고리 확인, 트렌드 파악, 기회 탐색.

**보통 이런 결과가 나옵니다:** 카테고리 개요, 트렌드, 경쟁사, 수요 신호, 기회 메모.

**예시:**

```bash
/market-scan tools for restaurant operations automation
```

---

### `/meeting-notes`

흩어진 회의 내용을 정리된 노트로 바꿉니다.

**이럴 때 사용하세요:** 이해관계자 미팅, 디스커버리 세션, 내부 리뷰, 정기 회의 정리.

**보통 이런 결과가 나옵니다:** 요약, 결정사항, 열린 질문, 액션 아이템, 다음 단계.

**예시:**

```bash
/meeting-notes product planning meeting about onboarding friction
```

---

### `/north-star`

North Star Metric을 정의합니다.

**이럴 때 사용하세요:** 성장 정렬, 제품 집중도 강화, 경영진 보고, 팀 우선순위 정리.

**보통 이런 결과가 나옵니다:** 후보 지표, 선택 이유, 가드레일 지표, 측정 메모.

**예시:**

```bash
/north-star creator marketplace
```

---

### `/plan-launch`

런치 계획을 만듭니다.

**이럴 때 사용하세요:** 신규 기능 출시, 제품 출시, 베타 런치, GTM 준비.

**보통 이런 결과가 나옵니다:** 타깃 고객, 포지셔닝, 메시지, 채널, 일정, 체크리스트.

**예시:**

```bash
/plan-launch AI code review tool
```

---

### `/plan-okrs`

제품 또는 팀 OKR을 작성합니다.

**이럴 때 사용하세요:** 분기 계획, 팀 정렬, 주요 이니셔티브 목표 정의, 로드맵 집중도 강화.

**보통 이런 결과가 나옵니다:** Objective, Key Result, 오너십 아이디어, 성공 논리, 리뷰 주기 메모.

**예시:**

```bash
/plan-okrs onboarding improvement initiative
```

---

### `/pre-mortem`

실행 전 실패 가능성을 미리 검토합니다.

**이럴 때 사용하세요:** 런치 리스크 검토, 실패 모드 점검, 전략적 주의점 정리.

**보통 이런 결과가 나옵니다:** 실패 시나리오, 원인, 경고 신호, 완화 방안, 담당자 제안.

**예시:**

```bash
/pre-mortem launch of a new self-serve pricing plan
```

---

### `/pricing`

가격 전략과 패키징을 검토합니다.

**이럴 때 사용하세요:** 패키지 설계, 수익화, 가치 측정 단위 고민, SaaS 요금제 구성.

**보통 이런 결과가 나옵니다:** 가격 모델, 패키지 옵션, value metric, 리스크, 테스트 제안.

**예시:**

```bash
/pricing AI document workflow product for SMBs
```

---

### `/privacy-policy`

개인정보처리방침 초안을 만듭니다.

**이럴 때 사용하세요:** 초기 서비스 문서 준비, 내부 검토 초안, 웹사이트 정책 골격 작성.

**보통 이런 결과가 나옵니다:** 정책 섹션 구조, 데이터 수집 문구, 처리 항목, 검토 메모.

**예시:**

```bash
/privacy-policy SaaS product that stores user documents and analytics events
```

**주의:** 실제 공개 전에는 반드시 법률 검토를 거치세요.

---

### `/proofread`

문서를 교정하고 표현을 다듬습니다.

**이럴 때 사용하세요:** 문서, 이메일, 제품 소개 문구, 런치 글, 이력서, 보고서.

**보통 이런 결과가 나옵니다:** 문법 수정, 더 자연스러운 문장, 톤 개선, 재작성 제안.

**예시:**

```bash
/proofread launch email for a beta waitlist
```

---

### `/research-users`

사용자나 세그먼트를 구조적으로 탐색합니다.

**이럴 때 사용하세요:** 페르소나 정리, 세그먼트 이해, JTBD 탐색, 사용자 니즈 확인.

**보통 이런 결과가 나옵니다:** 조사 방향, 세그먼트 가설, 질문, 살펴볼 패턴.

**예시:**

```bash
/research-users independent designers using async collaboration tools
```

---

### `/review-resume`

이력서를 검토하고 개선점을 제안합니다.

**이럴 때 사용하세요:** 이력서 피드백, 더 강한 경력 표현, 구조 개선.

**보통 이런 결과가 나옵니다:** 강점과 약점, 문장 개선 포인트, 구조 제안, 채용 관점 피드백.

**예시:**

```bash
/review-resume product manager resume for growth roles
```

---

### `/setup-metrics`

제품 메트릭 체계를 설계합니다.

**이럴 때 사용하세요:** KPI 설계, 대시보드 정의, 런치 측정, 건강 지표 설계.

**보통 이런 결과가 나옵니다:** 핵심 지표, 보조 지표, 가드레일, 정의 방식, 측정 가이드.

**예시:**

```bash
/setup-metrics new user onboarding funnel for a SaaS product
```

---

### `/sprint`

스프린트 업무를 정리하고 계획합니다.

**이럴 때 사용하세요:** 스프린트 범위 설정, 우선순위 정리, 계획 회의 준비, 실행 집중.

**보통 이런 결과가 나옵니다:** 스프린트 목표, 업무 범위, 리스크, 순서 제안, 계획 포인트.

**예시:**

```bash
/sprint next sprint for onboarding redesign work
```

---

### `/stakeholder-map`

이해관계자와 영향 관계를 정리합니다.

**이럴 때 사용하세요:** 정렬 계획, 경영진 커뮤니케이션, 조직 내 협업, 변화관리.

**보통 이런 결과가 나옵니다:** 이해관계자 그룹, 영향도/관심도 맵, 우려 사항, 커뮤니케이션 전술.

**예시:**

```bash
/stakeholder-map enterprise feature rollout affecting sales, support, and security teams
```

---

### `/strategy`

제품 전략을 설계합니다.

**이럴 때 사용하세요:** 비전 수립, 전략 방향 설정, 시장 선택, 중장기 계획.

**보통 이런 결과가 나옵니다:** 제품 비전, 전략 축, 시장 집중 방향, 트레이드오프, 의사결정 원칙.

**예시:**

```bash
/strategy B2B collaboration platform
```

---

### `/tailor-resume`

특정 포지션에 맞게 이력서를 맞춤 수정합니다.

**이럴 때 사용하세요:** 지원서 제출, 역할별 강조점 조정, 적합성 강화.

**보통 이런 결과가 나옵니다:** 요약문 수정, 성과 문장 재작성, 키워드 정렬, 적합성 제안.

**예시:**

```bash
/tailor-resume product manager resume for an AI startup role
```

---

### `/test-scenarios`

기능 테스트 시나리오를 만듭니다.

**이럴 때 사용하세요:** QA 계획, 출시 전 점검, acceptance 체크, 엣지 케이스 검토.

**보통 이런 결과가 나옵니다:** 테스트 케이스, 정상 흐름, 엣지 케이스, 실패 시나리오, 검증 체크리스트.

**예시:**

```bash
/test-scenarios team invitation flow for a B2B SaaS app
```

---

### `/transform-roadmap`

기존 로드맵을 더 명확한 구조로 재정리합니다.

**이럴 때 사용하세요:** 로드맵 정리, 경영진 보고용 정돈, 이니셔티브 묶기, 우선순위 재프레이밍.

**보통 이런 결과가 나옵니다:** 테마별 묶음, 순서 제안, 설명 방식 개선, 더 선명한 로드맵 구조.

**예시:**

```bash
/transform-roadmap roadmap with mixed platform, growth, and infrastructure items
```

---

### `/triage-requests`

들어오는 요청을 구조적으로 분류하고 우선순위를 검토합니다.

**이럴 때 사용하세요:** 기능 요청, 이해관계자 요청, 지원 이슈, 내부 요구 관리.

**보통 이런 결과가 나옵니다:** 요청 분류, 긴급도, 영향도, 트레이드오프, 추천 처리 방향.

**예시:**

```bash
/triage-requests incoming requests from sales and customer success
```

---

### `/value-proposition`

가치 제안을 정리하거나 더 날카롭게 다듬습니다.

**이럴 때 사용하세요:** 홈페이지 문구, 포지셔닝, 제품 메시지, 투자자 설명, GTM 준비.

**보통 이런 결과가 나옵니다:** 타깃 사용자, 문제, 약속, 근거, 차별화 포인트, 메시지 변형안.

**예시:**

```bash
/value-proposition AI documentation assistant for engineering teams
```

---

### `/write-prd`

구조화된 Product Requirements Document를 작성합니다.

**이럴 때 사용하세요:** 아이디어를 실행 문서로 바꿀 때, 기능 기획, 이해관계자 정렬.

**보통 이런 결과가 나옵니다:** 개요, 문제 정의, 목표, 요구사항, 사용자 흐름, 메트릭, 범위 메모.

**예시:**

```bash
/write-prd AI customer support automation
```

---

### `/write-query`

분석용 쿼리나 SQL을 작성하거나 개선합니다.

**이럴 때 사용하세요:** SQL 작성, 데이터 탐색, 리포트 설정, 이벤트 분석.

**보통 이런 결과가 나옵니다:** 쿼리 초안, 가정, 로직 설명, 수정 방향.

**예시:**

```bash
/write-query SQL to calculate weekly active teams and retention by signup month
```

---

### `/write-stories`

유저 스토리를 작성합니다.

**이럴 때 사용하세요:** 백로그 작성, PRD 후속 작업, 기능 범위 설정, acceptance 기준 정리.

**보통 이런 결과가 나옵니다:** user story, 작업 맥락, acceptance criteria 아이디어, 엣지 케이스.

**예시:**

```bash
/write-stories AI note-taking app
```

---

## 처음에는 어떤 command부터 쓰면 좋을까요?

처음이라면 아래부터 시작하는 것을 추천합니다.

- `/discover` : 아이디어 탐색
- `/strategy` : 전략 방향 정리
- `/write-prd` : 실행 문서 작성
- `/write-stories` : 실행 상세화
- `/plan-launch` : 런치 준비
- `/north-star`, `/setup-metrics` : 측정 체계 설계

---

## 업데이트

저장소 최신 내용을 반영하려면 아래처럼 실행하세요.

```bash
git pull
./install.sh
```

다시 설치하면 기존에 설치된 commands와 skills가 최신 버전으로 덮어써집니다.

---

## 제거

```bash
chmod +x uninstall.sh
./uninstall.sh
```

이 작업은 이 프로젝트가 설치한 commands와 skills를 제거합니다.

---

## 프로젝트 구조

```text
pm-skills-gemini/
├── commands/
├── scripts/
│   └── sync-upstream.sh
├── install.sh
├── uninstall.sh
├── pm-skills-manifest.json
└── README.md
```

---

## 왜 전역 설치를 하나요?

전역 설치는 속도와 편의성을 위한 선택입니다.

장점:

- 어떤 폴더에서든 바로 사용 가능
- 프로젝트마다 다시 설정할 필요 없음
- PM 워크플로우를 항상 같은 방식으로 재사용 가능
- 솔로 빌더나 빠른 실험에 특히 적합

트레이드오프:

- 버전 격리가 약함
- 다른 전역 command 세트와 충돌 가능성 있음

---

## FAQ

### Gemini CLI가 꼭 필요한가요?

네. 이 프로젝트는 Gemini CLI를 확장합니다.

### API Key가 필요한가요?

아니요. Gemini CLI의 Google 로그인 방식을 쓰면 됩니다.

### 전역 Gemini 설정이 바뀌나요?

네. `~/.gemini` 아래에 commands와 skills가 설치됩니다.

### 어느 폴더에서든 사용할 수 있나요?

네. 이 프로젝트는 전역 설치를 전제로 설계되었습니다.

### NDA나 개인정보처리방침 초안을 그대로 써도 되나요?

아니요. 초안 작성 보조 용도로 사용하고, 최종 문서는 반드시 법률 전문가 검토를 거치세요.

---

## Upstream 프로젝트

이 프로젝트는 원래의 `pm-skills` 프레임워크를 기반으로 합니다.

원본 프로젝트:

- https://github.com/phuryn/pm-skills

---

## License

MIT
