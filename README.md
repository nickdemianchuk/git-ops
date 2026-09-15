# git-ops

Git aliases and config managed as code.

## Install

```bash
git clone https://github.com/nickdemianchuk/git-ops.git
cd git-ops
./install.sh
```

This adds one `[include]` line to your `~/.gitconfig` pointing at `git/aliases.gitconfig`. No existing config is overwritten.

## Aliases

| Alias | Command |
|-------|---------|
| `s` | `status` |
| `a` | `add` |
| `aa` | `add -A` |
| `c` | `commit` |
| `cm` | `commit -m` |
| `ca` | `commit --amend` |
| `can` | `commit --amend --no-edit` |
| `b` | `branch` |
| `bd` | `branch -d` |
| `bD` | `branch -D` |
| `bda` | delete all local branches except current |
| `ch` | `checkout` |
| `chb` | `checkout -b` |
| `sw` | `switch` |
| `swb` | `switch -c` |
| `chm` | checkout repo's default branch |
| `new` | checkout default branch, pull, and create branch if name given |
| `p` | `push` |
| `pf` | `push --force-with-lease` |
| `pu` | `push -u origin HEAD` |
| `pl` | `pull` |
| `plr` | `pull --rebase` |
| `l` | `log --oneline` |
| `lg` | `log --oneline --graph --decorate` |
| `ll` | `log --oneline -10` |
| `d` | `diff` |
| `ds` | `diff --staged` |
| `st` | `stash` |
| `stp` | `stash pop` |
| `stl` | `stash list` |
| `rb` | `rebase` |
| `rbi` | `rebase -i` |
| `rbo` | `rebase origin/main` |
| `rs` | `reset` |
| `rsh` | `reset --hard` |
| `rss` | `reset --soft HEAD~1` |
| `f` | `fetch` |
| `fo` | `fetch origin` |

## Update

```bash
cd git-ops && git pull
```

No re-running `install.sh` needed — the `[include]` path is already live.

## Uninstall

```bash
./uninstall.sh
```

Removes the `[include]` line from `~/.gitconfig`. Aliases stop working; nothing else touched.

## Releases

`cd.yml` runs [`nickdemianchuk/actions`'s `release.yml`](https://github.com/nickdemianchuk/actions#releaseyml) on every push to `main`, authenticating as the [Octo Buddy](https://github.com/apps/octo-buddy) GitHub App via the repo's `OCTO_BUDDY_CLIENT_ID` variable and `OCTO_BUDDY_PRIVATE_KEY` secret (registered in `github-ops`).
