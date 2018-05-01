# ops-summer-internship-2018
My solution of the task "ops-summer-internship-2018".

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for testing purposes.

### Prerequisites
* [Docker](https://www.docker.com/) - Container manager.

### Installing
```sh
$ git clone https://github.com/MatusevychYevhenii/ops-summer-internship-2018.git # Clone repository
$ cd ops-summer-internship-2018 # Go to local repository
$ docker build -t internship . # Build image
$ docker run -p 80:80 --name internship_container internship # Run container
```
Then go to your browser and open [http://localhost](http://localhost).

Scripts for unpacking archive are located in the scripts folder.

### Deleting
```sh
$ docker rm internship_container # Delete container
$ docker rmi internship # Delete image
```

## Author
Matusevych Yevhenii 
* [LinkedIn](https://www.linkedin.com/in/ygritte/)
* [Telegram](https://t.me/YevheniiMatusevich)
