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

```bash
bin/access_log # nginx log
bin/slow_log   # mysql slow log
```

## Checklist

- [ ] pull related source
- [ ] `$PATH` set correctly on non-interactive shell
- [ ] switch target language to ruby from default
- [ ] Update reverse proxy log format
