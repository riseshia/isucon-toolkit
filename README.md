## Bootstrap

Specify required information to `config.yml`.

## Commands

```bash
bin/pull-source
bin/push-source
bin/deploy
```

## Initialize log

```bash
bin/pull-logs
bin/truncate-logs
```

## Analyze

### access log

use alp.

```
cat log/isucon1/access.log | alp json -m '/api/condition/[a-f0-9-]+,/api/isu/[a-f0-9-]+/icon'
```

### mysql slow log

```
mysqldumpslow slow.log > tmp/analyzed.log
```
