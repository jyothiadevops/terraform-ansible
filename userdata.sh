#!/bin/bash
/usr/sbin/useradd ansadmin
echo "ansadmin        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/ansadmin
/usr/bin/mkdir /home/ansadmin/.ssh
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh
/usr/bin/chmod 700 /home/ansadmin/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCgrBLNnYPi4yPPxpkWa1eWKYicgvjspe1xjgIMi/01+rzLAjdSuLNnvJrBH36KHsc24zm/XuO0z7Zk5VsoLUBfs3KabQyQkhlZxFCNbDkMC0a/GQPh6goFQvfWi3Kc/PlOIgVWTeKADVXVRGF3N4EKNd3IqX8gSCXGFfSNqiUwVO8DsvfjvqOIrRZRIdVCjK9nEceTLx85cuVv8RXg9WG42DTAJse6oRsdHtmWHdJMTJX28S3/lhz9juj0kKvrHK40BrUdnrR0iK6pm7lcZLRL+aoit/GC/FceMhlqdH+ADNI1U48tWqCP/cFBnYPkSGLwD4Mj7DVSb11Pniwvv1DWJZcLryd/jFlvCiVnQBhHbzGmimkeW9qljWOg856VJX8vxWV3kYBPerYmhvYbM/s+bHkNzRyCUTJImATCcjy7LrUVtzDrMNtWpFf23vsDreqyvZ+XfP5yz6RAYXl66CFxJZHT8YHlGlkNTJ4me7t+HJAjEfzLdf6983F+O1jf3R0= ansadmin@ip-10-0-1-252.ec2.internal" >> /home/ansadmin/.ssh/authorized_keys
/usr/bin/chmod 600 /home/ansadmin/.ssh/authorized_keys
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh/authorized_keys
