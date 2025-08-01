# AutoScaling-WebApp-AWS

This project demonstrates how to deploy a scalable PHP web application on AWS using EC2 Auto Scaling, an Application Load Balancer, and an Amazon RDS MySQL database.

## 📌 Overview
- Deploy PHP web servers in an Auto Scaling Group across two Availability Zones
- Load balanced using an Application Load Balancer
- Data entered via a web form is stored in an Amazon RDS MySQL DB
- Auto Scaling reacts to CPU load to scale out/in

## 🛠️ Technologies
- EC2 (Amazon Linux 2023)
- ALB
- Auto Scaling Group
- RDS (MySQL)
- PHP + Apache
- Bash (User data)

## 🏗️ Architecture
See `docs/architecture.png`.

## 🚀 Setup Summary
1. Launch Template with user data to install LAMP stack and PHP form
2. Auto Scaling Group linked to ALB
3. RDS instance created in private subnet
4. Scaling policies triggered by CPU usage

## 🧪 Testing
- Inserted records from multiple instances via ALB
- Auto Scaling successfully launched additional instances under load
- Verified DB inserts from different EC2 instances
- Demonstrated recovery after shutdown

## 📷 Screenshots
See `screenshots/` folder.

## ⚠️ Security
Credentials and endpoint details are excluded from the repository. Use environment variables or AWS Secrets Manager for real deployment.

## 👩‍💻 Author
Edra Temja – 2025 Cloud Architecture Project

