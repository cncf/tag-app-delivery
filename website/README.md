# TAG App Delivery Website

This directory contains a [Hugo](https://gohugo.io) web site published via [Netlify](https://www.netlify.com/) to <https://tag-app-delivery.cncf.io/>.

When the `main` branch of this repo is updated a fresh build and deploy of the website is executed. Recent Netlify builds and deployments are listed at <https://app.netlify.com/sites/tag-app-delivery>.

Add content by adding Markdown files to directories in [./content](./content).

Update layouts for each content type in [./layouts](./layouts/).

Configuration is set in [config.toml](./config.toml).

## Setting up a dev instance

There a two ways to run the webserver for developing the site.

### Run in Dev Container
With a development container (called workspace), the entire toolchain can be bundled up and run in any environment that can run containers.

Requirements:
- [DevPod](https://devpod.sh/docs/getting-started/install)
- An environment with a [DevPod provider](https://devpod.sh/docs/managing-providers/what-are-providers), e.g. [Docker Desktop](https://www.docker.com/products/docker-desktop/)

DevPod can be run with a GUI or via CLI.

#### GUI

To start a workspace through the GUI click the below button.
Then choose the desired provider and IDE.

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open)

#### CLI
To startup a devcontainer through the CLI, follow below steps
```
# Add a provider for your environment, e.g. docker (this only needs to be done once)
devpod provider add docker

# Create workspace from local path
git clone git@github.com:cncf/tag-app-delivery.git
cd tag-app-delivery
devpod up .

# OR Create workspace from remote git repository
devpod up github.com/cncf/tag-app-delivery

# Start the workspace
devpod up tag-app-delivery --ide openvscode
```

Once the workspace is up, DevPod will start your IDE. Open up a terminal to execute the server startup script

```
/bin/bash .devcontainer/start.sh
```
Navigate to localhost:1313 with your browser to view the site.

### Run directly on machine

To set up a local dev environment make sure you have [Hugo Extended](https://gohugo.io/installation/linux/#editions) and [npm](https://www.npmjs.com/) installed, then run the following:

```
git clone git@github.com:cncf/tag-app-delivery.git
cd tag-app-delivery
git submodule update --init --recursive
cd website
npm install
```

You can then run the site using `hugo server`.

