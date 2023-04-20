FROM phpmyadmin:latest

ENV PMA_ARBITRARY=1
ENV PMA_HOST=mysql
ENV PMA_PORT=3306
ENV MAX_EXECUTION_TIME=600
ENV MEMORY_LIMIT=1024M
ENV UPLOAD_LIMIT=2G

# Add custom configuration
# Reference: https://hub.docker.com/r/phpmyadmin/phpmyadmin
COPY config.user.inc.php /etc/phpmyadmin/config.user.inc.php

# Change PHP garbage collection timeout
# Reference: https://hub.docker.com/_/php (Configuration)
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN sed -ri -e "s!session.gc_maxlifetime = 1440!session.gc_maxlifetime = 14400!g" "$PHP_INI_DIR/php.ini"

EXPOSE 80
