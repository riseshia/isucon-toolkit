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
cat access.log | alp json -m '/api/condition/[a-f0-9-]+,/api/isu/[a-f0-9-]+/icon'
```

### mysql slow log

```
mysqldumpslow slow.log > analyzed.log
```

## Checklist

- [ ] pull related source
- [ ] `$PATH` set correctly on non-interactive shell
- [ ] switch target language to ruby from default
- [ ] Update reverse proxy log format
