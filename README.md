step1: first we need to create one directory in your local

      * mkdir (directory name)

step2: we need to clone the repository where all the dockercompose files are present

      * git clone (url)

step3: after cloning the repository we need to create a containers

      * docker-compose up -d

step4: then we enter into the browser there we can check whether th server responding or not

      localhost:8082
     here we can found the jenkins page

Step5: then you need to give the password for connecting jenkins dashboard for that you need to follow some steps like below

      * docker exec -it jenkins bash
      * cat  /var/lib/jenkins/secrets/initialAdminPassword here you can found the adminstaation password copy that one and paste overthere
 
Step6: after that you can found the jenkins dashboard


