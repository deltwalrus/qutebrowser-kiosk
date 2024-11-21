# Autoplay videos
config.set("content.autoplay", True)

# Start in fullscreen mode
config.set("content.fullscreen.window", True)

# Disable developer tools
config.set("content.developer_extras", False)

# Hide status bar
config.set("statusbar.show", "never")

# Disable tab bar (single tab mode)
config.set("tabs.show", "never")

# Disable URL bar
config.set("url.auto_search", "never")
config.set("url.default_page", "about:blank")
config.set("url.start_pages", [os.getenv("START_URL", "https://www.fast.com")])
config.set("url.auto_search", False)

# Security: Disable JavaScript on untrusted sites
config.set("content.javascript.enabled", True, "https://*")

# Kiosk Lockdown
config.set("keyhint.show", False)
config.set("input.forward_unbound_keys", "none")
