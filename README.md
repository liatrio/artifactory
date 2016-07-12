### Components
* centos7
* java 8 with openjdk
* artifactory


This is a vagrant box for artifactory pro or oss. The default is pro. To have it install the open source version, change pro.sh to oss.sh.

To create the vagrant box, run: ```vagrant up```

### Use

 1. Add a user such as dev with read/write access.
 2. Add the  following to servers section in your settings.xml in your .m2 directory on your machine.

 ```
<server>
  <id>local-snapshot</id>
  <url>http://localhost:8081/artifactory/libs-snapshot-local</url>
  <username>dev</username>
  <password>password</password>
</server>
<server>
  <id>local-release</id>
  <url>http://localhost:8081/artifactory/libs-release-local</url>
  <username>dev</username>
  <password>password</password>
</server>
   ```
 3. Reference repos in pom file.

 ```
 <distributionManagement>
  <repository>
    <id>local-release</id>
    <name>release</name>
    <url>http://localhost:8081/artifactory/libs-release-local</url>
    <uniqueVersion>false</uniqueVersion>
  </repository>
  <snapshotRepository>
    <id>local-snapshot</id>
    <name>snapShot</name>
    <url>http://localhost:8081/artifactory/libs-snapshot-local</url>
    <uniqueVersion>false</uniqueVersion>
  </snapshotRepository>
<distributionManagement>
 ```



Default login:
  * username: admin
  * password: password
