sch: https://www.google.com/search?q=Cgroup+v1+systemd+controller%3A+missing

# Debug:
test: `lxc-checkconfig | grep "Cgroup v1 systemd"`

result: `Cgroup v1 systemd controller: missing`

# Bug:
- https://github.com/lxc/lxc/issues/3302

# Solution:
