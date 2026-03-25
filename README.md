# Terraform Import Existing AWS EC2 Instance

##  Objective

Import an existing AWS EC2 instance into Terraform state and manage it using Infrastructure as Code.

---

##  Prerequisites

* Terraform installed
* AWS CLI configured
* Existing EC2 instance

---

##  Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Define Resource Block

```hcl
resource "aws_instance" "my_existing_instance" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t2.micro"
}
```

### 3. Import EC2 Instance

```bash
terraform import aws_instance.my_existing_instance <INSTANCE_ID>
```

### 4. Verify State

```bash
terraform state list
```

### 5. Extract Configuration

```bash
terraform state show aws_instance.my_existing_instance
```

### 6. Update Configuration

Update `main.tf` with actual values.

### 7. Validate

```bash
terraform plan
```

---

##  Outcome

* Existing EC2 is now managed by Terraform
* Infrastructure is version-controlled
* Enables automation and CI/CD integration

---

##  Notes

* Import does NOT create resources
* It only updates Terraform state
* Always run `terraform plan` before `apply`

---


