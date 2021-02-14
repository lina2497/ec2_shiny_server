# ec2_shiny_server
Instructions to configure an EC2 instance running amazon linux to host shiny apps

#Create an EC2 instance with Amazon Linux 2 with internet access
#Connect to your instance using putty
 
#Perform a quick update on your instance:
```bash
sudo yum update -y
```
 
#Install git in your EC2 instance
```bash
sudo yum install git -y
```
 
#Check git version
```bash
git version
```

# Download the repo
```bash
git clone https://github.com/lina2497/ec2_shiny_server
```


