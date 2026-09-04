# Create VPC n/w step by step.
1. create a VPC with CIDR block
2. create internet gateway and attach it to the VPC.
3. create a public subnet in the VPC.
4. create a route table and attach internet gateway and  associate it with the public subnet. 
5. create a security group and allow inbound traffic on port 22 (SSH) and port 80 (HTTP).
6. create a key pair to access the EC2 instance.
7. create an EC2 instance in the public subnet using the specified AMI ID and instance type, 
and associate it with the security group and key pair.
8. output the public IP, private IP, and instance type of the EC2 instance.