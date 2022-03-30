sudo su
yum update -y
yum install -y httpd
service httpd start
chkconfig httpd on
sudo echo "<h1>hello, this index.html page is from $(hostname -f)</h1>" > /var/www/html/index.html