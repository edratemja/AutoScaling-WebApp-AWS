#!/bin/bash
dnf update -y
dnf install -y httpd php php-mysqli mariadb105 -y
systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.php
<form method="post">
Name: <input type="text" name="name">
Email: <input type="text" name="email">
<input type="submit">
</form>
<?php
echo "<p>Server: " . gethostname() . "</p>";
\$conn = new mysqli("YOUR_RDS_ENDPOINT", "admin", "DB_PASSWORD", "userdb");
if (\$conn->connect_error) die("Connection failed: " . \$conn->connect_error);
if (!empty(\$_POST)) {
  \$name = \$_POST['name'];
  \$email = \$_POST['email'];
  \$sql = "INSERT INTO users (name, email) VALUES ('\$name', '\$email')";
  if (\$conn->query(\$sql) === TRUE) echo "New record created successfully";
}
?>
EOF
