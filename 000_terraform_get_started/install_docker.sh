sudo yum update -y
sudo yum install docker -y
sudo service docker start
# Add the ec2-user to the docker group so you can execute Docker commands without using sudo.
sudo usermod -a -G docker ec2-user