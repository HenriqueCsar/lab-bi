sudo apt-get update
sudo apt install postgresql postgresql-contrib
sudo -u postgres psql

CREATE USER admin WITH PASSWORD '2d32d34565erf2#$@#rkdejh7823';
ALTER USER admin WITH SUPERUSER;