#!/bin/sh

# Install sudo
apk add sudo

# Create user with ID 1000 without password (skip if already exists)
if ! id -u user >/dev/null 2>&1; then
    adduser -D -u 1000 -s /bin/sh user
fi

# Add user to wheel group for sudo access
adduser user wheel

# Allow wheel group to use sudo without password
mkdir -p /etc/sudoers.d
echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel

# Give ownership of /data to user
chown -R user:user /data

echo "User 'user' created with ID 1000"
echo "Can install packages with: sudo apk add <package>"