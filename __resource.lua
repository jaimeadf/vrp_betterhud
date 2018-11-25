ui_page "index.html"

client_script "client.lua"

server_scripts {
    "@vrp/lib/utils.lua",
    "server.lua"
}

files {
    "index.html"
}