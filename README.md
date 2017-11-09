# howto-jni-servlet-native

a simple jni native project to learn how jni works.

the purpose is to concatenate a string with a number
## Clone
```
git clone https://github.com/DeseineClement/howto-servlet-jni-native.git
```
## Installation
### requirements
```
sudo apt-get update
sudo apt-get install build-essential wget
```

###  oracle jdk
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install java-common oracle-java8-installer
```

### maven
```
cd /opt/
wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
sudo tar -xvzf apache-maven-3.3.9-bin.tar.gz
```

### Export environnement
```
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export M3_HOME=/opt/apache-maven-3.3.9
export PATH=$PATH:M3_HOME/bin
```

### Testing configurations
```
mvn -v
```

## Execution
### compile the project
```
mvn clean install
```

### execute the project
```
mkdir -p target
cp -v java/target/howto.jni.java-1.0.0.jar target
cp -v native/target/libjninative.so target
cd target
java -jar howto.jni.java-1.0.0.jar "It Works ! -> " 42
```