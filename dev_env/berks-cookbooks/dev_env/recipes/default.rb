#
# Cookbook:: Project_1
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# bash 'install python3' do
#   user 'root'
#   code <<-EOH
#   sudo apt-get install python3.8 -y
#   EOH
# end
#
# package "python" do
#   action :install
# end
#
#
# package "python3-pip" do
#   action :install
# end

# bash 'install python3-pip' do
#   user 'root'
#   code <<-EOH
#   sudo apt update
#   sudo apt install python3-pip
#   EOH
# end

apt_update
# package ["python3.6", "python3-pip"]

# ////////////////////////////////////////////////////////////////

# package "python-pip" do
#   action :install
# end
#
#
# bash 'install dependecies for app' do
#   user 'root'
#   code <<-EOH
#   sudo pip install -U pluggy
#   sudo pip install -U atomicwrites==1.3.0
#   sudo pip install -U attrs==19.1.0
#   sudo pip install -U beautifulsoup4==4.8.0
#   sudo pip install -U certifi==2019.6.16
#   sudo pip install -U chardet==3.0.4
#   sudo pip install -U idna==2.8
#   sudo pip install -U importlib-metadata==0.19
#   sudo pip install -U more-itertools==7.2.0
#   sudo pip install -U packaging==19.1
#   sudo pip install -U py==1.8.0
#   sudo pip install -U pyparsing==2.4.2
#   sudo pip install -U pytest==5.1.0
#   sudo pip install -U requests==2.22.0
#   sudo pip install -U six==1.12.0
#   sudo pip install -U soupsieve==1.9.2
#   sudo pip install -U urllib3==1.25.3
#   sudo pip install -U wcwidth==0.1.7
#   sudo pip install -U zipp==0.5.2
#   sudo pip install configmanager
#   EOH
# end

# ////////////////////////////////////////////////////////////////////

package "python3-pip" do
  action :install
end


bash 'install dependecies for app' do
  user 'root'
  code <<-EOH
  sudo pip3 install -U pluggy
  sudo pip3 install -U atomicwrites==1.3.0
  sudo pip3 install -U attrs==19.1.0
  sudo pip3 install -U beautifulsoup4==4.8.0
  sudo pip3 install -U certifi==2019.6.16
  sudo pip3 install -U chardet==3.0.4
  sudo pip3 install -U idna==2.8
  sudo pip3 install -U importlib-metadata==0.19
  sudo pip3 install -U more-itertools==7.2.0
  sudo pip3 install -U packaging==19.1
  sudo pip3 install -U py==1.8.0
  sudo pip3 install -U pyparsing==2.4.2
  sudo pip3 install -U pytest==5.1.0
  sudo pip3 install -U requests==2.22.0
  sudo pip3 install -U six==1.12.0
  sudo pip3 install -U soupsieve==1.9.2
  sudo pip3 install -U urllib3==1.25.3
  sudo pip3 install -U wcwidth==0.1.7
  sudo pip3 install -U zipp==0.5.2
  sudo pip3 install configmanager
  EOH
end

# ///////////////////////////////////////////////////////////////////////

directory '/home/ubuntu/Downloads/' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

directory '/home/jenkins/Downloads/' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end
