# install some basics
yum -y update
amazon-linux-extras install R4 python3.8 postgresql11 vim golang1.11 ruby2.6 
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum-config-manager --enable epel
yum install gedit libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver

#install rstudio server
wget https://download2.rstudio.org/server/centos6/x86_64/rstudio-server-rhel-1.3.1093-x86_64.rpm
yum install rstudio-server-rhel-1.3.1093-x86_64.rpm

#install r package dependencies
yum install udunits2-devel
yum -y install make automake gcc gcc-c++ libcurl-devel proj-devel geos-devel proj-nad proj-epsg
yum-builddep gdal
wget http://download.osgeo.org/gdal/2.4.0/gdal-2.4.0.tar.gz
tar xf gdal-2.4.0.tar.gz
cd gdal-2.4.0/
./configure
make -j4
make install
# make sure the library can be found
echo /usr/local/lib | tee -a /etc/ld.so.conf.d/local.conf
ldconfig

#install r packages
#installing sf in this way seems to fail, it works if you manually install in rstudio though.
Rscript -e 'install.packages("pacman", repos="https://cloud.r-project.org")'
Rscript -e 'pacman::p_load(shiny, tidyverse, leaflet, viridis, shinythemes, ggthemes, leaflet)'

#install rshiny server
wget https://download3.rstudio.org/centos6.3/x86_64/shiny-server-1.5.14.948-x86_64.rpm
sudo yum install --nogpgcheck shiny-server-1.5.14.948-x86_64.rpm