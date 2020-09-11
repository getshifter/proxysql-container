# proxysql-container

[![getshifter/proxysql](http://dockeri.co/image/getshifter/proxysql)](https://hub.docker.com/r/getshifter/proxysql/)

for single backend endpoint.

envs

for proxysql.

- `PRSQL_ADMIN`: proxysql admin user. `admin` by default.
- `PRSQL_PASSWORD`: proxysql admin password. `admin` by default.
- `PRSQL_A_PORT`: proxysql admin port. `6032` by default.
- `PRSQL_C_PORT`: proxysql client port. `3306` by default.
- `PRSQL_A_BIND`: proxysql admin listen interface. `0.0.0.0` by default.
- `PRSQL_C_BIND`: proxysql client listen interface. `0.0.0.0` by default.

for backend.

- `MYSQL_HOSTNAME`: backend hostname. `mysql` by default.
- `MYSQL_PORT`: backend mysql port. `3306` by default.
- `MYSQL_USER`: backend mysql user. `user` by default.
- `MYSQL_PASSWORD`: backend mysql user. `passwd` by default.
- `MYSQL_VERSION`: backend mysql version. `5.6.10a` by default.
