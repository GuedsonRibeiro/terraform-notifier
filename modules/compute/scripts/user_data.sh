#!/bin/bash

# Update/Install packages
yum update -y
amazon-linux-extras install -y php7.2 epel
yum install -y httpd mysql php-mtdowling-jmespath-php php-xml telnet tree git

# Config AWS SDK for PHP
mkdir -p /opt/aws/sdk/php/
cd /opt/aws/sdk/php/
wget https://docs.aws.amazon.com/aws-sdk-php/v3/download/aws.zip
unzip aws.zip

# Config Connection to Database
cat <<EOT >> /var/www/config.php
<?php
define('DB_SERVER', '${rds_endpoint}');
define('DB_USERNAME', '${rds_dbuser}');
define('DB_PASSWORD', '${rds_dbpassword}');
define('DB_DATABASE', '${rds_dbname}');
?>
EOT

# Config AWS Account
cat <<EOT >> /var/www/html/.aws/credentials
[default]
aws_access_key_id=${access_key_id}
aws_secret_access_key=${secret_access_key}
aws_session_token=${session_token}
EOT

# Config Application
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
cd /tmp
git clone https://github.com/kledsonhugo/notifier
cp /tmp/notifier/public/sendsms.php /var/www/html/index.php

# Config Apache WebServer
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;

# Start Apache WebServer
systemctl enable httpd
service httpd restart