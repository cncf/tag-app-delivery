# TAG App Delivery Website

This directory contains a [Hugo](https://gohugo.io) web site published via
[Netlify](https://www.netlify.com/) to <https://appdelivery.cncf.io/>.

When the `main` branch of this repo is updated a fresh build and deploy of the
website is executed. Recent Netlify builds and deployments are listed at
<https://app.netlify.com/sites/tag-app-delivery>.

Add content by adding Markdown files to directories in [./content](./content).

Update layouts for each content type in [./layouts](./layouts/).

Configuration is set in [config.toml](./config.toml).

To test changes in your local environment, install
[Hugo Extended](https://gohugo.io/installation/linux/#editions) and run
`hugo server` in this `website` directory.
