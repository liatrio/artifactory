yum install -y java-1.8.0-openjdk
wget https://bintray.com/jfrog/artifactory-pro-rpms/rpm -O bintray-jfrog-artifactory-pro-rpms.repo
sudo mv bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/
yum install -y jfrog-artifactory-pro
sudo systemctl stop firewalld
sudo service artifactory start
