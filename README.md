#### Jumpserver 3.0 docker

 This image isn't perfect !

## How to use
Clone the project:
> git clone https://github.com/simcu/docker-jumpserver

Then use the docker compose to start the services:
> docker-compose up -d

When all the container running, you should do:
> docker exec -it docker_jumpserver sh
> python /jumpserver/manage.py createsuperuser

Follow the note to add admin user. then you should login to the mysql , and set the user role to SU, It's in table juser_user.role , change it to SU

At last, open the browser , login , create a new admin user!

About more see the wiki:
>https://github.com/jumpserver/jumpserver

The jumpserver offical website:
>http://www.jumpserver.org
