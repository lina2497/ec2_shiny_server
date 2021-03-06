# ec2_shiny_server
Instructions to configure an EC2 instance running amazon linux to host shiny apps

# Configuring your EC2 instance

Login to AWS and navigate to the <b>Management Console</b>. Under services, select <b>EC2</b>.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/EC2.png)

Within the instances tab of the EC2 page, select <b>Launch Instances</b>.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/instances.png)

Shinyserver requires linux to run so you need to select a linux AMI. Select the Amazon Linux 2 AMI.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/AMI.png)

Select the T2 micro instance type as it is eligible for the Free Tier and proceed to configure instance details.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/T2.png)

Accept the defaults for the instance details and proceed to adding storage.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/instance_details.png)

You can have up to 30GB in the free tier so increase the storage size to 30GB.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/storage.png)

You do not need to add any tags, you can proceed to the security settings.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/storage.png)

Configure your security group like this screenshot. This will open up ports to allow your shiny apps to be visible on the internet and also allow you to access the browser based rstudio server. It will limit who can directly SSH onto the machine to your current IP address.

![](https://github.com/lina2497/ec2_shiny_server/blob/main/images/security.png)


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


