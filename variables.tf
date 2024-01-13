variable "aws_region" {
  description = "AWS region where the infrastructure will be provisioned."
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the EC2 instance."
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC for the security group."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance to launch."
  type        = string
}

variable "key_pair" {
  description = "Name of the key pair for SSH access."
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group for EC2 instance."
  type        = string
}

variable "app_name" {
  description = "Name of the EC2 instance and security group."
  type        = string
}

variable "user_data_script" {
  description = "User data script for EC2 instance."
  type        = string
  default     = <<-EOF
    #!/bin/bash

    # Function to display error messages
    function error_exit {
        echo "Error: $1" >&2
        exit 1
    }

    # Function to check if the command was successful
    function check_command {
        if [ $? -ne 0 ]; then
            error_exit "Failed to execute: $1"
        fi
    }

    # Function to install Docker
    function install_docker {
        echo "Installing Docker..."
        sudo apt-get update
        sudo apt-get install -y docker.io
        check_command "Docker installation"
    }

    # Function to install Java (Java 17 or above)
    function install_java {
        echo "Installing Java..."
        sudo apt-get install -y openjdk-17-jdk
        check_command "Java installation"
    }

    # Function to install Jenkins
    function install_jenkins {
        echo "Installing Jenkins..."
        sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
            https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
        echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
            https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
            /etc/apt/sources.list.d/jenkins.list > /dev/null
        sudo apt-get update
        sudo apt-get install -y jenkins
        check_command "Jenkins installation"
    }

    # Function to install Kubectl
    function install_kubectl {
        echo "Installing Kubectl..."
        sudo apt-get update
        sudo apt-get install -y kubectl
        check_command "Kubectl installation"
    }

    # Install Docker
    install_docker

    # Install Java
    install_java

    # Install Jenkins
    install_jenkins

    # Install Kubectl
    install_kubectl

    echo "Installation completed successfully."
    EOF
}

variable "public_ip_output" {
  description = "Output the public IP address of the provisioned instance."
  type        = bool
  default     = true
}

