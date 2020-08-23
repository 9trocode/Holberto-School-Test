# Holberto-School-Test
- Register
- Select a library (location)
- See all available books
- Rent a book for a certain duration
- See when a book should be back
- Each book should be link to one or multiple genres
- Search book by genre


### System Configuration
This application is built with Ruby (v2.6.3) on Rails (v5.1.7).

### Installation
- Clone the repository to your local environment.
```sh
$ git clone https://github.com/9trocode/Holberto-School-Test.git
```
- Open Terminal and navigate to the cloned repository.
```sh
$ cd Holberto-School-Test
```
- Install existing gems.
```sh
$ bundle install
```

### Database Configuration
- Download and install [PostgreSQL](https://www.postgresql.org/download/).
- Create and configure *database.yml* and *secrets.yml* files in the *config* directory. You may refer to the samples provided in that same directory: [database.yml](config/database.yml) and [secrets.yml](config/secrets.yml).
- Turn on your database server.
- Run the following *rake* commands in your Terminal.
```sh
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

### Launch
- Run the following command and navigate to http://localhost:3000 in your browser.
```sh
$ rails server
```


### Run Using Docker
- Download and install [Docker](https://www.docker.com/products/docker-desktop).
- Turn on Docker Client.
- Run the following *rake* and *docker* commands in the project root Terminal.
```sh
$ docker-compose build
$ rdocker-compose run web rake db:create
$ docker-compose run web rake db:migrate
$ docker-compose run web rake db:seed
$ docker-compose up
```
- Run the following command and navigate to http://localhost:3000 in your browser.
