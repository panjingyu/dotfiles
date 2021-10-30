# Jingyu's dotfiles

My dotfiles for macOS/Ubuntu.

## Rules

- Do not link directories. `install` should only link files.

## Pylint

The `config/pylintrc` file is based on the configuration suggested by [Google Python style guide](https://google.github.io/styleguide/pyguide.html). You can check the [canonical open-source version](https://google.github.io/styleguide/pylintrc).

## TODO
- Add a script for linking all `.local` files under this repo. These files should not be tracked by git. Having the `.local`s here make dotfile management easier.
