https://discuss.linuxcontainers.org/t/lxc-opensuse-unprivileged-container/3667/4

# Solution:
>Jeremy
>Jihyun Yoon
>Jan '19
>As you see logs, I think this problem is related to accessing cgroup.
>Regardless of whether OS is Ubuntu or not, unprivileged container could work.
>But in order to make it work well, there are some prerequisite.
>
>First, you need to use PAM with pam_cgfs.so
>==> https://brauner.github.io/2018/02/28/lxc-includes-cgroup-pam-module.html 15
>
>from https://github.com/lxc/lxc/issues/1998 9
—https://discuss.linuxcontainers.org/t/lxc-opensuse-unprivileged-container/3667/5
