# This Works!
# cause: "newuidmap is not setuid that would explain the failures you're seeing." —https://github.com/lxc/lxc/issues/1454#issuecomment-286226662

fix(){
    # Fix
    echo "" | sudo tee /etc/subuid
    echo "" | sudo tee /etc/subgid

    # Fix Setuid Permission
    sudo chmod u+s /usr/bin/newuidmap
    sudo chmod u+s /usr/bin/newgidmap
}

test(){
    
    subuid=`cat /etc/subuid`
    subgid=`cat /etc/subgid`

    newuidmap=`ls -al /usr/bin/newuidmap`
    newgidmap=`ls -al /usr/bin/newgidmap`
    
    # Should output:
    '''
    -rwsr-xr-x 1 root root 41864 /usr/bin/newuidmap
    
    me:100000:65536
    '''

    if
    [ ! echo "$subuid" | grep -q "me:100000:65536" ] &&
    [ ! echo "$subgid" | grep -q "me:100000:65536" ] &&
    [ ! echo "$newuidmap" | grep -q "-rwsr-xr-x" ] &&
    [ ! echo "$newuidmap" | grep -q "-rwsr-xr-x" ]
    then
        # If all passes: you can create a container
        lxc-create --template download --name penguin
    fi
}

fix
test

# graph:
# https://www.liquidweb.com/kb/how-do-i-set-up-setuid-setgid-and-sticky-bits-on-linux/#:~:text=What%20is%20Setuid%3F,privileges%20of%20the%20current%20user.