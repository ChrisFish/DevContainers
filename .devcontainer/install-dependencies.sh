npm install --save-dev eslint-config-prettier
git config --global --add safe.directory /workspace
npm install --save-dev husky lint-staged
npx husky init
node --eval "fs.writeFileSync('.husky/pre-commit','npx lint-staged\n')"