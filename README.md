# Assignment Project

1. Create a new application
2. Go through tv_series.csv and reviews.csv
3. Design and define your database schema
4. Write a seeding script to import the data in csv files into your database.
5. Develop a page to show all the TV series in your application (can be a basic view with bootstrap). The page should also show the average rating against the TV Series.
6. Include functionality to search for TV series that an actor has acted in. 
7. Extra points for writing unit tests

# Technologies
  - Rails
  - Mysql  
  
Project revisions are managed in **tv_series** repository on private server with [GIT]( https://github.com/Nishi1/tv_series.git ).


### Installation

```
Clone the git repository and install packages.
```sh
$ git clone "CLONE_URL"
$ cd tv_series
$ bundle install
```
Setup database and start the rails.
```sh
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s
```
