F_NAME=/etc/nginx/sites-available/default
V_ON=$(cat $F_NAME | grep -e "autoindex on;" | wc -l | tr -d ' ')
if [ $V_ON == 1 ]
    then
    sed -i 's/autoindex on;.*/autoindex off;/' $F_NAME
    echo "auto index has been turned off."
else
    sed -i 's/autoindex off;.*/autoindex on;/' $F_NAME
    echo "auto index has been turned on."
fi
service nginx restart