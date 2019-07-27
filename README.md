# README

## Setup
This app is built using Ruby 2.5.1 and Rails 5.2.3 with a Postgres database

To create a postgres user and password for the app, run 
`su - postgres`
`create role myapp with createdb login password 'password1';`


## Secrets
You'll need to update your credentials.yml file to include the following:

```
postgresql:
  database_dev: openweather_dev
  database_test: openweather_test
  username: /your-apps-postgres-username/
  password: /your-apps-postgres-password/
open_weather_api_key: /your-api-key/
```


Running Locally

Run `rails s` to start your server.  The form should be available at 
