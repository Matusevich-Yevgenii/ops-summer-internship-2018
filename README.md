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
$ make # Show help and more options
$ make build # Build the image
$ make run # Run the container
$ make exec # Run bash into a running container
```

Then go to your browser and open [localhost](http://localhost) or [internship.macpaw.io](http://internship.macpaw.io) on your host OS where you have run docker.

Scripts for unpacking archive are located in the scripts folder.

Dockerfile is also can be used through custom docker commands.

### Deleting
```sh
$ make clean # Clean the images and the container if exists
```

## Author
Matusevych Yevhenii 
* [LinkedIn](https://www.linkedin.com/in/ygritte/)
* [Telegram](https://t.me/YevheniiMatusevich)
