#!/bin/bash
/usr/sbin/useradd ansadmin
echo "ansadmin        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/ansadmin
/usr/bin/mkdir /home/ansadmin/.ssh
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh
/usr/bin/chmod 700 /home/ansadmin/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCflv+NtInXoG6s0Umfhi2aEtRmea7sL7F0MZOYhSoZ+MmKeufgn3WfAGsCRoIcJ2DZRVhas4lvxHKzaJHsIWLF9KiTtdJS2wAFWPFNSRvp65s/sBGAv7MhGIQ0iMC2tisOFbBMvEnk6WFgdXnnZaIKkYrbsfdNGDBgn7VACDKHVydapLNjtRdDzy9TF+eAoFkHln68Oz/o89JVXcjr0YNrGS6b+/P69rbHERn1Gk/59Qwj+m3SxLby2ikDvQeBXGbdCTfcc1u20Zg3Sro+D1qbkv5Sr4zyi1sCbmjPVtjjQ6C63q9cVeIIOqsi2XlVAx/so/eRKgJQaM0qn6i3GgTCugpe7OxZkPOB5lq+nPYZQVMU+VFsUFfK1GyWLXRaDj96DgxnLn7qFMWZEhUswNTx0g7qh9chvFnX7yF5GxXoPSUaHGhHmFHocyiQpi0hxAtmXN/jF6y4D3paIM2gSzLsnQCH43SNWt7BUaPi8as2BR+5opvMXc3mwNOreyS7lW0= ansadmin@ip-10-0-1-115.ec2.internal" >> /home/ansadmin/.ssh/authorized_keys
/usr/bin/chmod 600 /home/ansadmin/.ssh/authorized_keys
/usr/bin/chown ansadmin:ansadmin /home/ansadmin/.ssh/authorized_keys
