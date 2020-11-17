#!/usr/bin/env sh

dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
yarn add --dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react-hooks
cp $dir/config/.eslintrc.js .
cp $dir/config/.prettierrc.json .

