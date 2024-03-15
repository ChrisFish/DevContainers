# Template example
This is a template devcontainer folder with examples and steps to set up a new project container.
This setup is for a devcontainer with addtional docker containers (docker-compose)

Keep notes here

## devcontainer.env
Loaded environment variables added to devcontainer. Not checked into source control via .gitignore
Must be created if not existed on git clone

## devcontainer.json notes

## dockerfile notes

## docker-compose.yml notes

## docker-compose.workspace.yml notes

## Eslint linting tool

## Prettier code formatter
https://prettier.io/docs/en/install
Add rule to eslint to ignore prettier
https://github.com/prettier/eslint-config-prettier
Manually check for changes to be made
```
npx prettier src/ --check 
```
Manually write changes to disk
```
npx prettier src/ --write
```
# install-dependencies.sh
```
npm install --save-dev eslint-config-prettier
```
```
git config --global --add safe.directory /workspace
```
```
npm install --save-dev husky lint-staged
npx husky init
node --eval "fs.writeFileSync('.husky/pre-commit','npx lint-staged\n')"
```

# package.json
```
{
  "lint-staged": {
    "**/*": "prettier --write --ignore-unknown"
  }
}
```