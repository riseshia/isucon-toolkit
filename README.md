## Bootstrap

`cookbook/deploy-script/default.rb` に `<repository_url>`, `<deploy_to>` 設定
`alias` を設定しまくる

## Itamae

```bash
bin/itamae <aliased server> <cookbook name>
bin/itamae-dryrun <aliased server> <cookbook name>
```

## Initialize log

```bash
bin/init_logs
```

## Analyze

```bash
bin/access_log # nginx log
bin/slow_log   # mysql slow log
```

## Deploy

### deploy-script cookbook

```bash
bin/itamae <aliased server> deploy-script
```

### Go deploy

```bash
bin/deploy <aliased server>
```
