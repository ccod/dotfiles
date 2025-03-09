$env.config.buffer_editor = "nvim"
$env.config.show_banner = false
$env.SSH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"

$env.PATH = ($env.PATH | split row (char esep) | append "~/.local/bin")
$env.PATH = ($env.PATH | split row (char esep) | append "~/.bun/bin")
