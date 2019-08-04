# Docklara

Install [Laravel](https://laravel.com/) with postgresql using [Docker](https://docker.com).


## Installation

Clone the repository

```bash
git clone https://github.com/CronoxD/docklara.git
```

Clone the laravel repository in your project
```bash
cd docklara
git clone https://github.com/laravel/laravel.git src
```

Set the .env configuration
```bash
cp src/.env.example src/.env
```
Set the database configuration in the .env file
```env
APP_KEY=any_dev_key
.
.
.
DB_CONNECTION=pgsql
DB_HOST=dbadip
DB_PORT=5432
DB_DATABASE=adip
DB_USERNAME=octavio
DB_PASSWORD=secret@123
```

Install dependencies and generate key
```bash
docker-compose run --rm web bash -c "composer install"
docker-compose run --rm web bash -c "php artisan key:generate"
```

## Usage


Build and up with docker-compose
```bash
docker-compose up --build
```

Open your localhost [http://localhost:8000](http://localhost:8000)

## License
[MIT](https://choosealicense.com/licenses/mit/)
