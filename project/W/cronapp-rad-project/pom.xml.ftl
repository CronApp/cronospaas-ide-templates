<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <parent>
        <groupId>io.cronapp</groupId>
        <artifactId>cronapp-framework-spring</artifactId>
        <version>2.8.0-SNAPSHOT</version>
        <relativePath/>
    </parent>
    <modelVersion>4.0.0</modelVersion>
    <groupId>${appid}</groupId>
    <artifactId>${appid}</artifactId>
    <packaging>war</packaging>
    <name>${appname}</name>
    <version>1.0-SNAPSHOT</version>
    <url>http://maven.apache.org</url>
    <build>
        <resources>
            <resource>
                <directory>src/main/java</directory>
                <includes>
                    <include>**</include>
                </includes>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </resource>
            <resource>
                <targetPath>META-INF</targetPath>
                <directory>config</directory>
                <includes>
                    <include>app.config</include>
                </includes>
            </resource>
        </resources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.3</version>
                <configuration>
                    <source>11</source>
                    <target>11</target>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-war-plugin</artifactId>
                <version>2.6</version>
                <configuration>
                    <warSourceDirectory>src/main/webapp</warSourceDirectory>
                    <packagingExcludes>WEB-INF/**/*.java</packagingExcludes>
                    <failOnMissingWebXml>false</failOnMissingWebXml>
                    <webResources>
                        <resource>
                            <directory>config</directory>
                            <targetPath>META-INF</targetPath>
                        </resource>
                    </webResources>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>    
    <dependencies>
        <dependency>
            <groupId>com.h2database</groupId>
            <artifactId>h2</artifactId>
            <version>1.4.197</version>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter</artifactId>
            <scope>compile</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>compile</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-data-jpa</artifactId>
            <scope>compile</scope>
            <exclusions>
                <exclusion>
                    <artifactId>hibernate-entitymanager</artifactId>
                    <groupId>org.hibernate</groupId>
                </exclusion>
            </exclusions>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
            <scope>compile</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-tomcat</artifactId>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-security</artifactId>
        </dependency>
        <dependency>
            <groupId>org.glassfish</groupId>
            <artifactId>javax.json</artifactId>
            <version>1.1.2</version>
        </dependency>
        <dependency>
            <groupId>org.seleniumhq.selenium</groupId>
            <artifactId>selenium-java</artifactId>
            <version>3.141.59</version>
        </dependency>
        <dependency>
            <groupId>io.cronapp</groupId>
            <artifactId>cronapi-java</artifactId>
            <exclusions>
                <exclusion>
                    <artifactId>commons-lang3</artifactId>
                    <groupId>org.apache.commons</groupId>
                </exclusion>
                <exclusion>
                    <artifactId>junit</artifactId>
                    <groupId>junit</groupId>
                </exclusion>
            </exclusions>
        </dependency>
        <dependency>
            <groupId>io.cronapp</groupId>
            <artifactId>cronapp-framework-java</artifactId>
        </dependency>
        <dependency>
            <groupId>io.cronapp</groupId>
            <artifactId>olingo-odata2-jpa-processor-core</artifactId>
        </dependency>
        <dependency>
            <groupId>org.apache.tomcat</groupId>
            <artifactId>tomcat-dbcp</artifactId>
            <version>${r"${tomcat.version}"}</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>io.cronapp</groupId>
            <artifactId>cronapi-apm</artifactId>
            <version>1.0.0</version>
        </dependency>
    </dependencies>
    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
        <project.cronospass.resource mimetype="folder/servercontext">config</project.cronospass.resource>
<#if ((backend??) && (backend?lower_case) == "true") >
        <project.cronospass.resource mimetype="folder/src">src/main/java</project.cronospass.resource>
	    <project.cronospass.resource mimetype="folder/src">src/main/resources</project.cronospass.resource>
</#if>
        <project.cronospass.resource mimetype="folder/web">src/main/mobileapp/www</project.cronospass.resource>
        <project.cronospass.resource mimetype="folder/web">src/main/webapp</project.cronospass.resource>
    </properties>
</project>
