#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

cd /opt/bitnami/projects/jekyll
nohup /opt/bitnami/ruby/bin/bundle exec jekyll serve &
