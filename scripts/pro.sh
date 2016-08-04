sudo wget https://bintray.com/jfrog/artifactory-pro-rpms/rpm -O bintray-jfrog-artifactory-pro-rpms.repo
sudo mv bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/
sudo yum install -y artifactory
sudo service artifactory start
