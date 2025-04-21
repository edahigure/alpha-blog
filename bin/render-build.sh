#!/usr/bin/env bash
set -o errexit

# Instala dependencias
bundle install --without development test

# Precompila assets
bundle exec rails assets:precompile

# Ejecuta migraciones
bundle exec rails db:migrate