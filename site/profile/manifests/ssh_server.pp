class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCkRcqP2VV16AXFIE5BA6nEEsvMxTTXoCm8SzfXFBVP1v2AH7JoZkPNH5Pu61ppKdH8EcIX2UJZ/j4HKg7kG3SKGqd2CyFfMzym6Fn2v4l3bxdJRQB4/VNBYcIuqjtrCSsXaxgz0iNWFVmr+LGDHnG3gOgkqqNs2JjUX0K7PyruG+lfOlBvf76fbX5WYPC8F54nUqsvYxJfy1vscJZ7MJbBSqgkK6RxgT90oEy9mru4Q1XmOj9QZV9i9qEpNQscXCxGub8HwAHb863O467tp5Yxbzw1x8LpNgJKLwpjVSmL0Ek9iWXm1Wl1bffxOa8q1SdfYQQjsb73yLUFl5Z5/bEj',
        }
}
