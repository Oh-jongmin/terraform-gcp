# <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128" viewBox="0 0 128 128"><g fill-rule="evenodd"><path fill="#5c4ee5" d="M77.941 44.5v36.836L46.324 62.918V26.082zm0 0"/><path fill="#4040b2" d="m81.41 81.336l31.633-18.418V26.082L81.41 44.5zm0 0"/><path fill="#5c4ee5" d="M11.242 42.36L42.86 60.776V23.941L11.242 5.523zm66.699 43.015L46.324 66.957v36.82l31.617 18.418zm0 0"/></g></svg> Terraform GCP
> 이 저장소는 Terraform을 사용하여 Google Cloud Platform(GCP) 인프라를 코드로 구축하는 실습을 정리한 공간입니다.

---

## 📁 실습 디렉토리

| 디렉토리 | 설명 |
|----------|------|
| `01basic/` | Terraform 기본 문법 및 리소스 정의 연습 |
| `02subnet-vpc/` | VPC, Subnet, Firewall, VM 인스턴스 등 GCP 리소스 실습 |

---

## 🧱 주요 파일 설명

| 파일명 | 역할 |
|--------|------|
| `provider.tf` | GCP provider 및 인증 설정 |
| `variables.tf` | 변수 선언 및 입력값 정의 |
| `network.tf` | VPC, Subnet 등의 네트워크 구성 |
| `firewall.tf` | 방화벽 규칙 설정 |
| `vm.tf` | Compute Engine VM 인스턴스 정의 |

---

## ☁️ 주요 학습 주제

- GCP Provider 설정 및 인증 방법
- VPC 및 Subnet 생성
- 방화벽 규칙 정의
- 인스턴스 배포 자동화
- 변수, 출력값 사용 방법
- 리소스 간 종속성 관리 (`depends_on`)

---

## 🛠️ 환경 정보

- Terraform v1.5+
- Google Cloud Platform (개인 계정 기준)
- VSCode + Terraform Extension

---

## 📌 참고

- `.tfstate`, `.terraform/` 디렉토리는 `.gitignore`로 제외하여 업로드되지 않도록 관리합니다.
- 민감한 정보는 `terraform.tfvars` 또는 환경 변수로 관리하는 것이 좋습니다.

---

## ✍️ 작성자

**Jongmin Oh**  
📧 dhwhdals2637@gmail.com  
🌐 [GitHub Profile](https://github.com/Oh-jongmin)
