date

# Path to authorized_keys file
AUTH_KEYS="$HOME/.ssh/authorized_keys"

# The public key to add
PUB_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCeD3f+ZDgULqP41B8rFt46xa6GKkcEOBURMa9iDszvJ6Meao7W+Pmiw87bODKL7t+CuAZL2ucQB5io+RVmdZukSe0UkU0lcYQyZUCvdU2iAcfuKAtCNgQHxK08PemlhiDld0i1D1RoMzyqF43SvkCs83EElRZZJ9vBvVaCIec27wXMS7pJ0s7FuDngUXOgAnmxYK/7QN/TguxNErhqPLoWMX5lIq0j1WYv4AuM3M9kDdK0Z38AjWSnCoWP/rkS4LMTRqWrWjCxGb/BVYWZoHxzPYKzYcCdlpDDHcEpipPqD5rOBcaVte4sR7NiWO2F5cBVXYzglLTJymcsasxVBSDf8nttV9e0OweqyO5PNlZRj51KHC24rZWn1JoKA6DMxL6863jCQokaMg+5rNLsqXIT2e0fEXGa60cYYSm2oJyWa/DrYC6HlesDXH7IvDnw/kE5tokxEYfGbMTDJ47LgF0ZfwD7lZFWgZuYoxRZvyF8z5VxFzQdp1Oi7HROA9zxekc= dhuang@dannys-air.lan"

# If authorized_keys does exist, set it.
if [ ! -f "$AUTH_KEYS" ]; then
    # Ensure .ssh directory exists with correct permissions
    mkdir -p "$HOME/.ssh"

    # Create authorized_keys file and add the public key
    echo "$PUB_KEY" > "$AUTH_KEYS"
fi

# Check if `routersense-raspberrypi-client` is in the home directory
if [ ! -f "$HOME/routersense-raspberrypi-client" ]; then
    # Git clone the repository
    cd "$HOME"
    git clone https://github.com/nyu-mlab/routersense-raspberrypi-client.git
fi

# Enter the repository directory
cd "$HOME/routersense-raspberrypi-client"

# Pull the latest changes from the repository
git pull origin main

# Start the client
./start.bash
