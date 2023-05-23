dmesg:
`audit: type=1400 audit(1684841533.392:3): apparmor="DENIED" operation="change_profile" info="label not found" error=-2 profile="unconfined" name="lxc-container-default-cgns" pid=3192 comm="lxc-start`

# Solution:
## 0. Disable Kernel Module
https://tadeubento.com/2019/armbian-enable-apparmor/

```
# CONFIG_SECURITY_APPARMOR is not set
```

# test:
`cat /boot/config-* | grep -i apparmor`