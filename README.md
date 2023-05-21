## Rector GitHub Action

Implementation [Rector](https://github.com/rectorphp/rector) for GitHub Actions.

### Example

- Contents of file `.github/workflows/rector.yml`:

```yml
name: rector
on: [push]
jobs:
  rector:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Rector
        uses: pietrzakadrian/rector-github-action@v0.0.3
        with:
          directories: src #directories path
          config: rector.php #configuration file
```

### Reason for making

- [zingimmick/rector-action](https://github.com/zingimmick/rector-action) is deprecated and not working.