# CLO835 Assignment 1 - Containerized Web Application Deployment on AWS

This project demonstrates the deployment of a 2-tier web application using Docker containers, GitHub Actions for CI/CD, Amazon ECR for image storage, and Amazon EC2 for hosting the application. The infrastructure is provisioned using Terraform.

---

## 📌 Project Objectives

- Create a containerized 2-tier application (Flask web app + MySQL)
- Automatically build and push Docker images to Amazon ECR using GitHub Actions
- Deploy and run containers on an Amazon EC2 instance
- Demonstrate networking, reachability, and container interconnectivity

---

## 🛠 Technologies Used

- **Terraform** – for provisioning EC2 and ECR
- **GitHub Actions** – for CI/CD automation
- **Docker** – for containerizing app and database
- **Amazon EC2** – to run containers
- **Amazon ECR** – to store Docker images


---

## 🚀 Deployment Workflow

### 1. **Infrastructure Deployment**

- Terraform provisions:
  - Amazon EC2 instance (Amazon Linux 2023)
  - Two Amazon ECR repositories (`clo835-webapp` and `clo835-mysql`)

### 2. **CI/CD with GitHub Actions**

- On merge to `main`, GitHub Actions:
  - Builds Docker images for both app and MySQL
  - Pushes them to respective ECR repositories

### 3. **Application Deployment on EC2**

- EC2 instance logs into ECR
- Pulls images and runs:
  - MySQL container
  - Three app containers with `APP_COLOR=blue`, `pink`, and `lime`
  - App containers are mapped to ports `8081`, `8082`, and `8083`

---

## 🌐 Accessing the App

After deployment, access the application via:
http://<EC2_PUBLIC_IP>:8081 # Blue instance
http://<EC2_PUBLIC_IP>:8082 # Pink instance
http://<EC2_PUBLIC_IP>:8083 # Lime instance


---

## 🧪 Verifications Performed

- ✅ Docker containers pulled successfully from ECR
- ✅ App served on ports 8081 (blue), 8082 (pink), and 8083 (lime)
- ✅ Custom bridge network created (`webnet`)
- ✅ All containers can `ping` each other via hostname
- ✅ Application reachable from the public internet

---


## 👤 Author

Rajan H. Patel  
Seneca College – Summer 2025



