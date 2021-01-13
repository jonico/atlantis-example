#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

sudo -u bitnami -i 'cd /opt/bitnami/projects/jekyll && nohup bundle exec jekyll serve &'
