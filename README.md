- IDE ECLIPSE (spring tools suit 3)
- creation d'un projet spring mvc 
- configuration
- gérer les dependences

new other -> spring -> spring legacy project 

	nom -> Gestion_de_stock
		spring mvc project
	package -> com.stock.mvc
	
- en bas un dossier 
	- src
		- main
			- java
			- resources : les copies de src/main/resources
				-meta-inf
			- webapp : nous metons tous se qu'est web et les fichier de configuration web
				resources
				- web-inf
					classes
					-spring
					-view
						home.jsp
					web.xml

# 1er des choses on va commencer de cree dans :src/main/resources -> meta-inf
	persistence.xml

# 2EME  cree dans :src/main/resources
	configurationContext.xml

# Ajouter les dependences dans pom.xml
	<dependency>
        <groupId>org.springframework</groupId>
        <artifactId>spring-jdbc</artifactId>
        <version>${org.springframework-version}</version>
    </dependency>
	<dependency>
		<groupId>org.springframework</groupId>
		<artifactId>spring-orm</artifactId>
		<version>3.1.1.RELEASE</version>
	</dependency>
	<dependency>
		<groupId>org.hibernate</groupId>
		<artifactId>hibernate-entitymanager</artifactId>
		<version>3.6.0.Final</version>
	</dependency>
	<dependency>
		<groupId>org.hibernate</groupId>
		<artifactId>hibernate-commons-annotations</artifactId>
		<version>3.2.0.Final</version>
	</dependency>
	<dependency>
		<groupId>org.hibernate</groupId>
		<artifactId>hibernate-validator</artifactId>
		<version>4.1.0.Final</version>
	</dependency>
	<dependency>
		<groupId>org.hibernate.javax.persistence</groupId>
		<artifactId>hibernate-jpa-2.0-api</artifactId>
		<version>1.0.1.Final</version>
	</dependency>
	<dependency>
		<groupId>mysql</groupId>
		<artifactId>mysql-connector-java</artifactId>
		<version>5.1.6</version>
	</dependency>

# modifier le fichier web.xml
	pour executer ces modification et cree la BDD
	<context-param>
		<param-name>contextConfigLocation</param-name>
		<param-value>classpath*:applicationContext.xml</param-value>
	</context-param>
# ----------------------------------------------------------
# creation des entity JPA
- cree un nouveu package dans com.stock.mvc
		com.stock.mvc.entities
	dans ce package on va cree des classes(les entities)
		- Article (une entity JAP il doit implementer automatiquement serializable)
			@entity //=>pour dir qu'il est une class entity
			@Table(name ="article" )//il est possible de ne pas montioné le name 
			public class Article impliments Serializable{
				@Id
				@GeneratedVAlue//pour autoIncriment
				private Long IdArticle;
			}

			de meme facons les autres classes

- Ajouter les autres champ dans les classes crees

- ASTUS DANS IDE ECLIPSE
Pour changer int or string... d'un variable avec son getter and setters en meme fois
alt+shift+r+r    // boutton r 2 fois
Ajouter les constructeur vides# GestionDeStock
