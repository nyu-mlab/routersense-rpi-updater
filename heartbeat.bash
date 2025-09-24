# Path to authorized_keys file
AUTH_KEYS="$HOME/.ssh/authorized_keys"

# The public key to add
PUB_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCeD3f+ZDgULqP41B8rFt46xa6GKkcEOBURMa9iDszvJ6Meao7W+Pmiw87bODKL7t+CuAZL2ucQB5io+RVmdZukSe0UkU0lcYQyZUCvdU2iAcfuKAtCNgQHxK08PemlhiDld0i1D1RoMzyqF43SvkCs83EElRZZJ9vBvVaCIec27wXMS7pJ0s7FuDngUXOgAnmxYK/7QN/TguxNErhqPLoWMX5lIq0j1WYv4AuM3M9kDdK0Z38AjWSnCoWP/rkS4LMTRqWrWjCxGb/BVYWZoHxzPYKzYcCdlpDDHcEpipPqD5rOBcaVte4sR7NiWO2F5cBVXYzglLTJymcsasxVBSDf8nttV9e0OweqyO5PNlZRj51KHC24rZWn1JoKA6DMxL6863jCQokaMg+5rNLsqXIT2e0fEXGa60cYYSm2oJyWa/DrYC6HlesDXH7IvDnw/kE5tokxEYfGbMTDJ47LgF0ZfwD7lZFWgZuYoxRZvyF8z5VxFzQdp1Oi7HROA9zxekc= dhuang@dannys-air.lan"

# Check if authorized_keys exists
if [ -f "$AUTH_KEYS" ]; then
    echo "authorized_keys already exists. Exiting."
    exit 0
fi

# Ensure .ssh directory exists with correct permissions
mkdir -p "$HOME/.ssh"

# Create authorized_keys file and add the public key
echo "$PUB_KEY" > "$AUTH_KEYS"

echo "authorized_keys created and key added."

