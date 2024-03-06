```sh
yarn build
sudo rm -rf /var/www/html/* && sudo cp -r ./build/* /var/www/html/
sudo systemctl restart nginx
```

```sh
sudo systemctl restart cc-api.service
```
