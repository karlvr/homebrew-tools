# How to publish the tools

## Update formula

Tag the repo that contains the source archive with the new versions, e.g. `1.3.1`

Compute the hash for that release, e.g.

```shell
curl -L https://github.com/karlvr/punch/archive/1.3.1.tar.gz | shasum -a 256
```

Update the formula ruby file with the new archive URL and checksum.

Commit and push.

Then update your local copy of the repo:

```shell
cd $(brew --repo karlvr/tools)
git pull
```

Then try to install the tool, e.g.

```shell
brew install karlvr/tools/punch
```

or

```shell
brew upgrade karlvr/tools/punch
```

## Commands

List current taps:

```shell
brew tap
```
