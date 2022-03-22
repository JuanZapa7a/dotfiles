#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

wikipedia() {
lynx -vikeys -accept_all_cookies "https://en.wikipedia.org/wiki/$@"
}

duckduckgo() {
lynx -vikeys -accept_all_cookies "https://lite.duckduckgo.com/lite/?q='
$@'"
}

onedrive() {
    sshfs -p22 juan@212.128.45.18:/media/ST4000/juan/OneDrive /home/juan/OneDrive
}
uonedrive(){
    fusermount -u /home/juan/OneDrive
}

musica() {
    sshfs -p22 juan@212.128.45.18:/media/ST4000/juan/Música /home/juan/Música
}
umusica(){
    fusermount -u /home/juan/Música
}

           
