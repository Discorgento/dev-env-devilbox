alias l='ls -a --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --colour=auto'
alias cl='clear'
alias q='exit'
alias www='cd /shared/httpd && pwd && l'
alias startproj='n98 db:import mage_${PWD##*/}_$(date +"%d-%m-%Y").sql.gz && n98urlbaseset && mgbm app:config:import && mgbm config:set catalog/search/elasticsearch7_server_hostname "172.16.238.240" && mgdev && mgir && mgsu'
alias grun='grunt clean && grunt exec && grunt less && grunt watch'
alias mgcp='php ./vendor/bin/ece-patches apply'
alias mgbm='bin/magento'
alias mgcf='mgbm c:f'
alias mgsu='mgbm setup:upgrade'
alias mgir='mgbm indexer:reindex'
alias mgdev='mgbm deploy:mode:set developer'
alias mgcr='mgbm cron:run'
alias mgredis='mgbm setup:config:set --cache-backend=redis --cache-backend-redis-server=127.0.0.1 --cache-backend-redis-db=0 -n && mgbm setup:config:set --page-cache=redis --page-cache-redis-server=127.0.0.1 --page-cache-redis-db=1 -n && mgbm setup:config:set --session-save=redis --session-save-redis-host=127.0.0.1 --session-save-redis-db=2 -n'
alias mguserjonatan="mgbm admin:user:create --admin-user='jonatanmachado' --admin-password='jonatan@123' --admin-email='jonatan@jonatan.tk' --admin-firstname='Jonatan' --admin-lastname='Machado'"
alias mgms='mgbm module:status'
alias mgme='mgbm module:enable'
alias mgmd='mgbm module:disable'
alias mgrmgv='rm -rf generated/* var/*'
alias mgcback='php bin/magento setup:di:compile && php bin/magento setup:static-content:deploy -f --jobs 4 && php bin/magento c:f && php bin/magento c:c'
alias mgcfront='php bin/magento setup:static-content:deploy -f --jobs 4 && php bin/magento c:f && php bin/magento c:c'
alias mysqle='mysqldump -h 127.0.0.1 -u root -p mage_${PWD##*/} | gzip -c | cat > mage_${PWD##*/}_$(date +%Y-%m-%d-%H).sql.gz'
alias mysqli='zcat mage_${PWD##*/}_$(date +%Y-%m-%d-%H).sql.gz | mysql -P 3306 -h 127.0.0.1 -u root -p mage_${PWD##*/}'
alias n98='n98-magerun2.phar'
alias n98dump='n98 db:dump mage_${PWD##*/}_$(date +"%d-%m-%Y") --compression="gzip"'
alias n98import='n98 db:import'
alias n98urlbase='n98 db:query "select * from core_config_data where path like \"%base%url%\";"'
alias n98urlbaseset='n98 db:query "update core_config_data set value = \"https://${PWD##*/}.local/\" where path = \"web/unsecure/base_url\";update core_config_data set value = \"https://${PWD##*/}.local/\" where path = \"web/secure/base_url\";update core_config_data set value = \"https://${PWD##*/}.local/\" where path = \"web/unsecure/base_link_url\";update core_config_data set value = \"https://${PWD##*/}.local/\" where path = \"web/secure/base_link_url\";" && n98urlbase'
alias n98th='n98 dev:template-hints && mgcf'
alias ccw='~/.composer/vendor/bin/cache-clean.js --watch'
alias c1='composer-1'
alias c='composer-2'
