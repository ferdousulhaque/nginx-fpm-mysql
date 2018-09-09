FROM php:7.2-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libpq-dev locales \
    && pecl install mcrypt-1.0.1 redis && docker-php-ext-enable mcrypt redis \
    && docker-php-ext-install gettext pdo pdo_mysql pdo_pgsql mysqli mbstring

# Locales

RUN dpkg-reconfigure locales \
	&& locale-gen C.UTF-8 \
	&& /usr/sbin/update-locale LANG=C.UTF-8

RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen \
	&& locale-gen

RUN echo 'bn_BD UTF-8' >> /etc/locale.gen \
	&& locale-gen

RUN echo 'my_MM UTF-8' >> /etc/locale.gen \
    && locale-gen

#ENV LC_ALL C.UTF-8
#ENV LANG bn_BD.UTF-8
#ENV LANGUAGE bn_BD.UTF-8
