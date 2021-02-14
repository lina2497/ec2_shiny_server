# install some basics
sudo yum -y update
sudo amazon-linux-extras install R4 python3.8 postgresql11 vim golang1.11 ruby2.6 
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum-config-manager --enable epel

# Increase virutal memory if using free tier with only 1GM ram
# https://aws.amazon.com/premiumsupport/knowledge-center/ec2-memory-swap-file/
sudo dd if=/dev/zero of=/swapfile bs=128M count=32
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s


sudo yum install gedit libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver

#install rstudio server
sudo wget https://download2.rstudio.org/server/centos7/x86_64/rstudio-server-rhel-1.4.1103-x86_64.rpm
sudo yum install rstudio-server-rhel-1.4.1103-x86_64.rpm

#install r package dependencies
sudo yum install udunits2-devel openssl-devel libxml2-devel

# install gdal (useful if you're using r package sf)
sudo yum -y install make automake gcc gcc-c++ libcurl-devel proj-devel geos-devel proj-nad proj-epsg
sudo yum-builddep gdal
sudo wget http://download.osgeo.org/gdal/2.4.0/gdal-2.4.0.tar.gz
sudo tar xf gdal-2.4.0.tar.gz
cd gdal-2.4.0/
./configure
sudo make -j4
sudo make install
# make sure the library can be found
echo /usr/local/lib | tee -a /etc/ld.so.conf.d/local.conf
ldconfig

#install r packages
#installing sf in this way seems to fail, it works if you manually install in rstudio though.
sudo Rscript -e 'install.packages("pacman", repos="https://cloud.r-project.org")'
sudo Rscript -e 'pacman::p_load(shiny, tidyverse, leaflet, viridis, shinythemes, ggthemes, leaflet, DT)'

#install rshiny server
wget https://download3.rstudio.org/centos7/x86_64/shiny-server-1.5.16.958-x86_64.rpm
sudo yum install --nogpgcheck shiny-server-1.5.16.958-x86_64.rpm
