# Debug:
test: `lxc-checkconfig | grep "Cgroup v1 systemd"`

result: `Cgroup v1 systemd controller: missing`
