# Usar a imagem PHP 7.4 com Apache
FROM php:7.4-apache

# Instalar extensões necessárias, incluindo pdo_mysql para suporte a MySQL com PDO
RUN docker-php-ext-install pdo pdo_mysql

# Habilitar reescrita de URL no Apache
RUN a2enmod rewrite

# Configuração do Apache para permitir .htaccess com reescrita de URL
RUN echo "<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>\n\
" > /etc/apache2/conf-available/override.conf && \
    a2enconf override

# Definir o VirtualHost para aprendentophp.com.dev
RUN echo "<VirtualHost *:80>\n\
    ServerAdmin webmaster@aprendentophp.com.dev\n\
    DocumentRoot /var/www/html\n\
    ServerName aprendentophp.com.dev\n\
    ErrorLog ${APACHE_LOG_DIR}/error.log\n\
    CustomLog ${APACHE_LOG_DIR}/access.log combined\n\
</VirtualHost>\n" > /etc/apache2/sites-available/000-default.conf

# Instalar o Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Instalar PHPUnit
RUN curl -sSL https://phar.phpunit.de/phpunit-9.phar -o /usr/local/bin/phpunit && \
    chmod +x /usr/local/bin/phpunit




# Adicionar Node.js (versão 18 LTS ou superior), npm, Axios e Jest
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    apt-transport-https \
    ca-certificates && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm@latest && \
    npm install -g axios jest && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

    

# Configurar o diretório de trabalho
WORKDIR /var/www/html

# Expor a porta 80 do Apache
EXPOSE 80
