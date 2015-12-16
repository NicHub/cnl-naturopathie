#!/bin/bash

case "$1" in

github)
    OUT_PATH="$HOME/Sites/cnl-naturopathie/cnl-spirit-github/"
    # rm -rf $OUT_PATH # !! Ne pas effacer le répertoire .git !!
    echo "Génération des fichiers GitHub"
    hugo                                                                \
        --destination=$OUT_PATH                                         \
        --baseURL="http://nichub.github.io/cnl-spirit/"
    cp README.md $OUT_PATH
    cd $OUT_PATH
    if [ -z "$2" ]
    then
        echo "##########"
        echo "site généré à $OUT_PATH"
        COMMENT="Pas de commit sans commentaires !"
    else
        COMMENT=$2
        git add .
        git commit -m "$COMMENT"
        git push
    fi
    echo "COMMENT = $COMMENT"
    ;;

hostpapa)
    OUT_PATH="$HOME/Sites/cnl-naturopathie/cnl-spirit-hostpapa/"
    rm -rf $OUT_PATH
    echo "Génération des fichiers Hostpapa"
    hugo                                                                \
        --destination=$OUT_PATH                                         \
        --baseURL="http://pausenaturo.com/cnl-spirit/"
    ;;

s3)
    OUT_PATH="$HOME/Sites/cnl-naturopathie/cnl-spirit-s3/"
    rm -rf $OUT_PATH
    echo "Génération des fichiers S3"
    hugo                                                                \
        --destination=$OUT_PATH                                         \
        --baseURL="http://nicocnl.s3-website-eu-west-1.amazonaws.com/"
    ;;

fenix)
    OUT_PATH="$HOME/Sites/cnl-naturopathie/cnl-spirit-github/"
    hugo                                        \
        --baseURL="http://192.168.1.116:8080/" \
        --theme cnl-spirit                      \
        --destination=$OUT_PATH
    ;;

*)
    hugo server                  \
        --watch                  \
        --theme cnl-spirit       \
        --destination=$OUT_PATH
    ;;

esac

exit 0
