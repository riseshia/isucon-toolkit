## Bootstrap

Specify required information to config.yml.

## Sync sources

```bash
bin/pull-source
bin/push-source
```

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
