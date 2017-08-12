# Kontuzja with Docker

## Komendy
Start bazy danych
```bash
sudo docker-compose up -d db
```
Budowa aplikacji
```bash
sudo docker-compose build app
```

Tworzenie bazy i uruchomienie migracji
```bash
sudo docker-compose run --rm app rake db:create db:migrate RAILS_ENV=production
sudo docker-compose run --rm app rake db:create db:migrate RAILS_ENV=development
```

Tworzenie użytkownika
```bash
sudo docker-compose run --rm app rake create_user
```

Uruchomienie aplikacji
```bash
sudo docker-compose up -d app
```

Przejście do konsoli w aplikacji
```bash
sudo docker-compose exec app bash
```

Startowanie/Wygaszanie aplikacji
```bash
sudo docker-compose start/stop
```

Startowanie/Wygaszanie elasticsearch
```bash
sudo /etc/init.d/elasticsearch start/stop
```

Czyszczenie obrazów dockera
```bash
sudo docker rmi --force $(sudo docker images | grep "^<none>" | awk "{print $3}")
```
