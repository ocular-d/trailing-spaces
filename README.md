<!-- PROJECT LOGO -->

<br />
<p align="center">
  <h1 align="center">Trailing Spaces</h1>

  <p align="center">
    GitHub Action for finding trailing spaces in Markdown
    <br />
    <a href="https://github.com/ocular-d/trailing-spaces"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ocular-d/trailing-spaces/issues">Report Bug</a>
    ·
    <a href="https://github.com/ocular-d/trailing-spaces/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Credits](#credits)

## About

GitHub Action for finding trailing spaces in Markdown.

This action is based on [find-trailing-spaces](https://github.com/harupy/find-trailing-whitespace).

### Differences

- Bash script validated with [ShellCheck](https://www.shellcheck.net/)
- Uses non-root user
- Based on 'official' Docker Alpine Image
- Dockerfile validated with [hadolint](https://github.com/hadolint/hadolint)
- Checks only Markdown files

## Usage

Add the a workflow file in your repository: .github/workflows/trailing-spaces.yml.

```yaml
name: Example

on: push

jobs:
  example:
    name: Find Trailing Whitespace
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: ocular-d/trailing-spaces@main
```

## Contributing

We are a community effort, and everybody is most welcome to participate!

Be it filing bugs, formulating enhancements, creating pull requests, or any other means of contribution,
we encourage contributions from everyone.

## License

Distributed under the [MIT](https://choosealicense.com/licenses/mit/ "Link to license") license.

## Credits

- [Harutaka Kawamura](https://github.com/harupy)
