#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

su - bitnami
export PATH='/opt/bitnami/rvm/bin:/opt/bitnami/memcached/bin:/opt/bitnami/perl/bin:/opt/bitnami/git/bin:/opt/bitnami/nginx/sbin:/opt/bitnami/redis/bin:/opt/bitnami/nodejs/bin:/opt/bitnami/sphinx/bin:/opt/bitnami/sqlite/bin:/opt/bitnami/varnish/bin:/opt/bitnami/php/bin:/opt/bitnami/python/bin:/opt/bitnami/mysql/bin:/opt/bitnami/postgresql/bin:/opt/bitnami/letsencrypt/:/opt/bitnami/apache2/bin:/opt/bitnami/subversion/bin:/opt/bitnami/ruby/bin:/opt/bitnami/common/bin:/opt/bitnami/memcached/bin:/opt/bitnami/perl/bin:/opt/bitnami/git/bin:/opt/bitnami/nginx/sbin:/opt/bitnami/redis/bin:/opt/bitnami/nodejs/bin:/opt/bitnami/sphinx/bin:/opt/bitnami/sqlite/bin:/opt/bitnami/varnish/bin:/opt/bitnami/php/bin:/opt/bitnami/python/bin:/opt/bitnami/mysql/bin:/opt/bitnami/postgresql/bin:/opt/bitnami/letsencrypt/:/opt/bitnami/apache2/bin:/opt/bitnami/subversion/bin:/opt/bitnami/ruby/bin:/opt/bitnami/common/bin:/usr/local/bin:/usr/bin:/bin:/usr/games'
cd /opt/bitnami/projects/jekyll
nohup /bundle exec jekyll serve &
