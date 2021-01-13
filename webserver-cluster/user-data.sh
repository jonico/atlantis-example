#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

export

su - bitnami
export
cd /opt/bitnami/projects/jekyll
nohup /bundle exec jekyll serve &
