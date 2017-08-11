Directory to contain imports of external repositories.

These are not submodules because I don't want to lose the information if the
owners of the repositories decide to delete them.

Steps to import:
```
git fetch REMOTE BRANCH
git merge -s ours --alow-unrelated-histories --no-commit FETCH_HEAD
git read-tree --prefix=external/SOMETHING/ -u FETCH_HEAD
git commit -m "Imported XXX as a subtree."
``

List of externals:

  xmonad - https://github.com/davidbrewer/xmonad-ubuntu-conf (branch:trusty)

