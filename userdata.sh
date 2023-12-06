#!/bin/bash
/usr/sbin/useradd ansadmin
echo "ansadmin        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/ansadmin
/usr/bin/mkdir /home/ansadmin/.ssh
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh
/usr/bin/chmod 700 /home/ansadmin/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDW8Gc2nU/BHlhVflVychdiYsoC6KP75vHLEKON4Hk1A6jWm6vmgreTTl5Q5E/z4dthrANFpDs6ox6TOUxX1PkTD43ZnpMGTfGTxLQj9TKETI5hQAjw9A+n0Q4Sf5A4fOLsZ8ArYAQmQGH0R9nU8psJ+unYNgD3IX+8ml7B+/xL+x79PStQB+YieJGuuUrVhwb95eFDXiPZpE9tPN2UraECHqjViqCX9ld2a23U1Gh9e1snG0hf/gjgYI/sC+cs2Z8ppyDsNfCPPJ2cNRSBjt5dsC8jBADEeHeYN4z3NeRIaj3wUDIuWWzJHghPQVzcw1i5e3F2JKpwZD7oJU6Zlc3nfd7RLXaPNzCThxLpo/koQ/4Uru66aKpqM1tdaAznNYy1kgEyYiisuFkBxQ7NS12bgUO46Jd/Lvdmol8qhQzb+3T6k7gYZUQNV9xELm6p65yPjARwvMnZbUSCdwMGqZ/TZtUsm/Woa+M1Hxy3JqqQbgOS+QQ9qkYmCH8GuGQ6r+U= ansadmin@ip-10-0-1-252.ec2.internal" >> /home/ansadmin/.ssh/authorized_keys
/usr/bin/chmod 600 /home/ansadmin/.ssh/authorized_keys
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh/authorized_keys
