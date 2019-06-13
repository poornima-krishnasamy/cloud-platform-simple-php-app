FROM php:7.3.6-fpm-alpine3.9

RUN addgroup -g 1000 -S appgroup && adduser -u 1000 -S appuser -G appgroup

WORKDIR /app

RUN chown -R appuser:appgroup /app

USER 1000

CMD [ "php", "./index.php" ]