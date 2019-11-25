# get-and-bump-version

> **Github Action**

**Python Only**

Get the version from specified file in the project and bump it using bump2version.

The bumpversion config file `.bumpversion.cfg` need to be at root level and properly configured.
## Inputs

### `file_path`

Path to version file considering you are at project root.

### `bumpversion_part`

Version part to bump.

## Output

### `version`

The version inside the file specified in input after the bumpversion.

## Example usage

```yaml
steps:
- uses: actions/checkout@v1

- name: Get and Bump version
  id: versioning
  uses: actions/get-and-bump-version@v1
  with:
    file_path: "./VERSION"
    bumpversion_part: patch

- name: Echo version
    run: echo 'Latest version is ${{ steps.versioning.outputs.version }}.'
```
