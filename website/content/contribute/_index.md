---
title: How to Contribute
linkTitle: "Contribute"
toc_hide: true
menu:
  main:
    weight: 30
description: Welcome! We are glad that you want to contribute to the Cartografos Working Group.
---

## Introduction

The Cartografos working group aims to provide tools to help adopters and end-users to navigate the CNCF landscape and the wider cloud native ecosystem.

We want to educate and inform users with effective and practical guidance to help them understand the cloud native ecosystem. We do this by collaborating with groups inside and outside the CNCF.

We work to engage with CNCF projects at sandbox, incubating, and graduated level to ensure effective and accurate representation within assets, as well as CNCF Technical Advisory Groups. We also provide a vendor neutral forum for validation, discussion and feedback.
As you get started, you are in the best position to give us feedback on areas where the working group needs help. This includes:

- Gaps in our documentation
- Working to define new artifacts
- Engaging with TAGs and SIGs within the CNCF and its projects

## Contributing

Everyone is invited to suggest changes, additions and improvements to the working group’s artifacts.  We employ a community-driven process governed by the CNCF to develop and improve artifacts.  Contributions are welcome from all participants in compliance with the working group’s purpose and charter.  Anyone who wishes to make a contribution can submit a GitHub issue or create a pull request.
As well as contributing to artifacts and documentation, we very much welcome your help in the following ways:

- Creating or contributing artifacts to the working group that help with the group’s mission of helping to navigate the the cloud native landscape
- Contributing updates to existing artifacts
- Ideas for new artifacts and improvements you’d like to see
- Documentation
- Issue Triage
- Communications / Social Media / Blog Posts
- Release management

Not everything happens through a GitHub pull request. Please come to our meetings or contact us and discuss how we can work together.

## Come to Meetings

Everyone is welcome to come to any of our meetings. We hold regular community meetings every second Tuesday at 6PM US/Eastern time

You will need to join the Cartografos Working Group community on <https://community.cncf.io> then simply RSVP within the meeting instance at <https://community.cncf.io/cncf-cartografos-working-group/>

The first time you come, introducing yourself is more than enough. Over time, we hope that you feel comfortable voicing your opinions, giving feedback on others’ ideas, and even sharing your own ideas, and experiences.

## Ask for Help

The best way to reach us with a question when contributing is:

- On the original GitHub issue
- In GitHub Discussions within the repository
- Our CNCF Slack channel - # cartografos-wg
- And of course, in person at a meeting

## Contribution Flow

Outline of what a contributor's workflow looks like:

- Fork it (<https://github.com/cncf/cartografos/fork>)
- Create a branch from where you want to base your work (usually main). Example git checkout -b my-new-feature)
- Make your changes and arrange them in readable commits.
- Commit your changes (Ex. `git commit -am 'Add some feature'``)
- Push to the branch (Ex. git push origin my-new-feature)
- Make sure branch is up to date with upstream base branch (eg. main)
- Create a new Pull Request (PR)

## Submitting a PR

Once you have updated your changes in your branch, you will open a PR to the upstream cartografos repo.
Before opening the PR ensure you have rebased on the latest upstream.
If other commits are pushed upstream before your PR is merged, you will also need to rebase again before it will be merged.
For general advice on how to submit a pull request, please see [Creating a pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) on GitHub.

## Contributor Ladder

This contributor ladder outlines the different contributor roles within the working group, along with the responsibilities and privileges that come with them. Community members generally start at the first levels of the "ladder" and advance up it as their involvement in the working group grows. Our working group members are happy to help you advance along the contributor ladder.

### Participant

A Working Group Participant engages with the group and its community, contributing their time, thoughts, etc. Community participants are usually users who have stopped being anonymous and started being active in group discussions.

Responsibilities:

- Must follow the CNCF Code of Code of Conduct

How users can get involved with the community:

- Participating in community discussions
- Helping other users
- Submitting and commenting on issues
- Providing feedback on new artefact releases
- Attending community events

### Contributor

A Working Group Contributor contributes directly to the group and adds value to it. People at the Contributor level may be new contributors, or they may only contribute occasionally.

Responsibilities include:

- Follow the CNCF Code of Code of Conduct
- Follow the working group contributing guide
- Requirements (one or several of the below):
- Report and sometimes resolve issues
- Occasionally submit PRs
- Contributes to artifacts
- Show up at meetings
- Answer questions from other community members
- Submit feedback on issues and PRs
- Reviews artifact updates and provides feedback
- Runs or helps run events
- Promote the working group in public
- Helps run the working group infrastructure

### Reviewer

A Reviewer has responsibility for specific assets, documentation, or other working group areas. They are collectively responsible, with other Reviewers, for reviewing all changes to those areas and indicating whether those changes are ready to merge. They have a track record of contribution and review in the working group.

Reviewers are responsible for a "specific area." This can be a specific artifact, chapter of documentation, or other clearly-defined group artifact that is smaller than an entire repository. Most often it is one or a set of directories in one or more Git repositories. The "specific area" below refers to this area of responsibility.

Reviewers have all the rights and responsibilities of a Contributor, plus:

- Responsibilities include:
- Following the reviewing guide
- Reviewing most Pull Requests against their specific areas of responsibility
- Helping other contributors become reviewers

Requirements:

- Experience as a Contributor
- Is a working group member
- Has demonstrated in-depth knowledge of their specific area, ideally having authored or significantly contributed to the artifact in their specific area.
- Commits to being responsible for that specific area
- Is supportive of new and occasional contributors and helps get useful PRs in shape to commit

Additional privileges:

- Be an approver for pull requests in specific directories
- Can recommend and review other contributors to become Reviewers
The process of becoming a Reviewer is:

- The contributor is nominated by opening a PR against the appropriate repository, which adds their GitHub username to the OWNERS file for one or more directories.
- At least two members of the team that owns that repository or main directory, who are already Approvers, approve the PR.

### Maintainer

Maintainers are very established contributors who are responsible for the entire working group. As such, they have the ability to approve PRs against any area of the repository, and are expected to participate in making decisions about the strategy and priorities of the working group.

A Maintainer must meet the responsibilities and requirements of a Reviewer, plus:
Responsibilities include:

- Mentoring new Reviewers
- Writing refactoring PRs
- Participating in CNCF maintainer activities
- Determining strategy and policy for the working group
- Participating in, and leading, community meetings

Requirements

- Demonstrates a broad knowledge of the working group across multiple areas
- Is able to exercise judgement for the good of the working group, independent of their employer, friends, or team
- Mentors other contributors
- Can commit to spending time working on the working group

Additional privileges:

- Approve PRs to any area of the working group
- Represent the working group in public as a Maintainer
- Communicate with the CNCF on behalf of the working group
- Have a vote in Maintainer decision-making meetings

Process of becoming a maintainer:

- Any current Maintainer may nominate a current Reviewer to become a new Maintainer, by opening a PR against the root of the cncf/cartografos repository, adding the nominee as an Approver in the OWNERS file.
- The nominee will add a comment to the PR testifying that they agree to all requirements of becoming a Maintainer.
- A majority of the current Maintainers must then approve the PR.

## Contributing to the Website

We use [Hugo](https://gohugo.io/) to format and generate the Maturity Model website, the
[Docsy](https://github.com/google/docsy) theme for styling and site structure,
and [Netlify](https://www.netlify.com/) to manage the deployment of the site.
Hugo is an open-source static site generator that provides us with templates,
content organisation in a standard directory structure, and a website generation
engine. You write the pages in Markdown (or HTML if you want), and Hugo wraps
them up into a website.

All submissions, including submissions by project members, require review. We
use GitHub pull requests for this purpose. Consult
[GitHub Help](https://help.github.com/articles/about-pull-requests/) for more
information on using pull requests.

### Setting up a local instance

Install a local copy of the Cloud Native Maturity Model site with these instructions. Note you must have [npm](https://www.npmjs.com/) and [Hugo](https://gohugo.io/) installed.

```
git clone https://github.com/cncf/cartografos.git
cd cartografos
git submodule update --init --recursive
cd website
npm install
```

You can then run the site using `hugo server`.
