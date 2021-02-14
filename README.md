# ec2_shiny_server
Instructions to configure an EC2 instance running amazon linux to host shiny apps

# Configuring your EC2 instance

Login to aws and navigate to the management console. Under services, select EC2.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/EC2.png)

Within the instances tab of the EC2 page, select <b>Launch Instance</b>.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/instances.png)

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


