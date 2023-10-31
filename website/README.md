# TAG App Delivery Website

This directory contains a [Hugo](https://gohugo.io) web site published via
[Netlify](https://www.netlify.com/) to <https://tag-app-delivery.cncf.io/>.

When the `main` branch of this repo is updated a fresh build and deploy of the
website is executed. Recent Netlify builds and deployments are listed at
<https://app.netlify.com/sites/tag-app-delivery>.

A preview site is generated for each PR too, with a link and other info on the
PR build added as a comment to the related issue.

## Contributing

We feature 3 types of content on the site:

1. **Projects looking for contributions**: These are strictly scoped in both time and content. People can contribute without the need for committing long-term.
1. **Blogposts**: Updates about the TAG.
1. **Working Groups**: Long-running interest groups, the scope of which might change. A working group can create multiple projects.

Here's how to create templates for each type of content.

### Create new call for contribution

```
cd website
hugo new content contribute/<project title>.md
```

### Create new blogpost

```
cd website
AUTHOR=ll hugo new content blog/<post title>.md
```

### Create new working group

```
cd website
hugo new wgs/<working group name>
```

## Testing locally

### Run in local OS

To run the site from your local OS:

1. Install [Hugo Extended](https://gohugo.io/installation/linux/#editions) and [npm](https://www.npmjs.com/)
2. Run `git clone git@github.com:cncf/tag-app-delivery.git && cd tag-app-delivery`
3. Initialize submodules with `git submodule update --init --recursive`
4. Change into the website directory: `cd website`
5. Install dependencies with `npm install`
6. Run the site using `hugo server -D`
7. Output from the previous command includes the address to browse to preview the site, by default <http://localhost:1313/>.

Alternatively, once you've cloned this repo you can directly invoke the included
startup script: `./.devcontainer/start-server.sh`

### Run in a special container

You can create a special "development container",
that includes all dependencies required to build and run the site. This reduces
potential differences between local developer environments.

To run the site from a development container:

1. Install [DevPod](https://devpod.sh/docs/getting-started/install)
1. Install a [DevPod provider](https://devpod.sh/docs/managing-providers/what-are-providers)
   such as [docker](https://www.docker.com/), using `devpod provider add docker`.
1. Start the devcontainer (See options below)
1. Open a terminal and execute `.devcontainer/start-server.sh` to start the Hugo server.
```
The startup script updates gitmodules for the theme and installs all necessary dependencies to run hugo.
```
5. Output from the previous command includes the address to browse to preview the site, by default <http://localhost:1313/>.


#### GUI

You can open the devcontainer directly in the DevPod Gui byt pressing the below button:

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open#https://github.com/cncf/tag-app-delivery)

Then follow above steps 4 and 5 to run the website


#### CLI

Or you can start the dev environment via CLI:

1. Run `git clone git@github.com:cncf/tag-app-delivery.git && cd tag-app-delivery`
1. Start the workspace: `devpod up .`
1. Follow above steps 4 and 5 to run the website

Alternatively, create a workspace directly from the repo: `devpod up
github.com/cncf/tag-app-delivery`

Once the workspace has been created on your machine you can open up it any time
with `devpod up tag-app-delivery --ide openvscode`
