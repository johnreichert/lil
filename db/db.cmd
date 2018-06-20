
create docker postgres:
docker run --name lawyer -e POSTGRES_PASSWORD=1421inglewood -d postgres

connect to database:
docker run -it --rm --link lawyer:postgres postgres psql -h postgres -U apps -d lil
