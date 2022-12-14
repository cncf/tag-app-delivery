# Platforms whitepaper

CNCF TAG App Delivery maintains and publishes this paper describing platforms
for cloud-native computing to support project maintainers and cloud users in
planning and designing such platforms.

An initial v0.1 release is proposed for early January 2023 to be followed by
ongoing updates and releases as appropriate.

The paper is divided into several sections which are automatically merged for
releases and reviews.

## TODO

1. adopt a document publishing framework that automatically merges sections and
   publishes paper as Markdown and PDF
1. create PRs for initial content for top-level sections
1. add executive summary and ensure consistent voice
1. publish with CNCF

## Technical info

The document is generated using
[bikeshed](https://github.com/tabatkins/bikeshed), a tool also used by W3C and TC39.
Follow [these instructions](https://tabatkins.github.io/bikeshed/#installing)
to install `bikeshed`.

Once installed, run `bikeshed` in this directory to generate an HTML doc, then
open it in a browser.

The document is generated and published to the TAG's blog site by the GitHub
action at
[`.github/workflows/publish-platforms-paper.yaml`](../.github/workflows/publish-platforms-paper.yaml)
