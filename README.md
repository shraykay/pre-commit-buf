# pre-commit-buf

[buf](https://github.com/bufbuild/buf) hooks for <https://pre-commit.com>.

## Usage

```yaml
- repo: git@github.com:shraykay/pre-commit-buf.git
  rev: v2.0.0
  hooks:
    - id: buf-lint
    - id: buf-breaking
      args: [.git#branch=master] # required --against-input arg
    - id: buf-format
```
