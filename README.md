hugo container for todogroup.org
================================

1. Fork https://github.com/todogroup.org
2. Clone your fork
3. Run `git submodule update --init --recursive` in cloned directory
4. Set following envs:
  - `TODO_DIR`: Full path for source directory of cloned todogroup.org repo
  - `TODO_HUGO`: Full path for `run-hugo.sh` script included in this repo
  These will be mounted into hugo container.
5. Run `hugo-container-todogroup.org.sh`
  This will build and start website for todogroup.org locally.
  Then access http://localhost:1313
