Vi bildar vår image lokalt för att testa
docker build -t mydatabase .

Pushar till github
docker build -t ghcr.io/katerinalantsevich/shopdatabase .


Skapa upp ett nätverk som hör till det här projectet.
docker network create network-shop

docker run -itd --network=network-shop --name=databaseshop -p 3306:3306 mydatabase

docker logs databaseshop (logs på containern)

docker rm --force databaseshop 



