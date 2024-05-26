#!/bin/bash

set -e

touch index.html | cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
	<title>Diplom-project</title>
	<style>
		h1 {
			margin-top: 50px;
		}
	</style>
</head>
<body style="background-image: url('pic-1.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
	<h1>Welcome!</h1>
	<p>
		This is a test-app <br>
		ver.:0.0.1 <br>
	</p>
</body>
</html>
EOF

touch Dockerfile | cat > Dockerfile <<EOF
FROM nginx:alpine
COPY index.html pic-1.png /usr/share/nginx/html/
EOF