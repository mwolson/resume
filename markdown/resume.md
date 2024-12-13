Mike Olson
============

----

>  Qualified for Sr. Staff Software Engineer and Director positions in Frontend, Platform, or DevOps

----

Experience
----------

**TigerConnect: Staff Engineer, Sr. Manager** (2017-2024)

Improved various features on the existing messenger app, which is used by doctors and nurses at hospitals to reduce the number of fatal accidents, improve staff retention and happiness, and cut wait times for the ER by about half.

Staff Engineer:
:    **Messenger Web App:** Improved website page load performance, build pipeline performance, and responsiveness under load. Key technologies: React, MobX, Redux ToolKit (RTK), SCSS, Playwright.
:    **Electron Desktop App**: Wrote a TypeScript Electron app to allow the Messenger website to run with additional functionality such as native OS notifications for incoming messages and alerts. Extended 5+ npm libraries to provide early support for a new version of Electron.
:    **AWS Cloudfront Node.js Lambda:** Wrote sophisticated routing and support for rolling deployments of the Messenger website to 4 US regions, as well as the company's only unit testing and integration testing of a single layer of infrastructure.
:    **Customer Support:** Interfaced with a 1MM+ ARR customer to solve complex responsiveness problems with the Messenger app, providing a multi-stage plan along with presenting timely updates as the work progressed. Result: Customer was impressed and retained their subscription.

Sr. Manager:
:    **Upleveling:** Mentored engineers and guided them towards achieving their goals, facilitating career advancement.
:    **Quality Control:** Added linters to the team projects to speed up code reviews and catch mistakes early.
:    **On-time Delivery:** Guided the team to provide accurate high-level and mid-level project estimates. Result: the team completed projects on time using Agile/SCRUM methodologies.
:    **EQ:** Leveraged Emotional Intelligence practices to foster a collaborative and enabling team environment.

----

\pagebreak

**Ticketmaster: Sr. Engineer** (2008-2016)

Supported and maintained production websites written in Java, Perl, and React for displaying event information and purchasing events. Helped prepare for extraordinary traffic volumes during onsale situations, improved performance and quality, and developed load tests.

Sr. Engineer:
:    Wrote Node.js Platform Microservice that scaled to 1MM+ requests per day, supported with custom analytics and reporting.
:    Helped migrate the Ticketmaster events website to Docker.
:    Cut request latency in half for a data orchestration service by placing a CDN in front of it. Wrote unit tests for the CDN integration along with a [custom Bash framework](https://github.com/mwolson/barrt-sh) to run them.
:    Helped spin up and configure the company's GitLab instance, and wrote presentations to advise on Git and GitLab as key technology choices to replace SVN.
:    Had involvement in the early development idea for [Talkback](https://github.com/ijpiantanida/talkback) while the author contracted for Ticketmaster, and adapted our integration test suite to use it. Talkback is a JS proxy that allowed requests for multiple local services to be captured together and replayed for reproducible and maintainable integration tests.
:    Wrote a codemod to incrementally and automatically perform a very large code migration that spanned multiple sprints. Created several npm modules to support this.
:    Wrote the first integration of an interactive seatmap into the Ticketmaster events website. Before React was written, used DOM diffs to improved performance of tooltip rendering when moving mouse over a large number of seats on the seatmap.
:    Wrote and presented a well-received presentation on Performance during an All Engineering meeting which benchmarked and explained the underlying factors contributing to REST API performance of several languages at scale: Go, Erlang, Java, Perl.

Technical Experience
--------------------

Gift Exchange Website
:   Side project to allow family members to buy each other gifts for the holiday and avoid having two people buy the same gift for the same person.

    * Wrote the website infrastructure using a mix of **Skaffold**, **Kubernetes** (k3d and k3s), **Docker**, and **Deno**.
    * Deployed the resulting Bookstack and MariaDB pods to a k3d cluster on a single server node as an exercise in keeping costs manageable.
    * Tested changes locally using Skaffold profiles deployed to Rancher Desktop
    * Configured CloudFlare as a CDN

Resume Repo
:   Created a [GitHub Repo](https://github.com/mwolson/resume) to publish [my Resume](https://mwolson.github.io/resume/) to HTML and PDF using Markdown as a source format. This was adapted from a different existing project. Key adapations:

    * Improved Makefile to run docker-compose with a list of formats to build
    * Added GitHub Actions pipeline to build and publish to GitHub Pages
    * Implemented landing page using Tailwind CSS.

Open Source
:   Key contributions: Updated manpages for **Git** and expanded edge case support for the **git-svn** command. Made frontend code contributions to **Jest** and **React Dropzone**. Multiple large code contributions to **Emacs**:

    * Contributed **ERC** into the Emacs codebase, which allows Emacs to function as an Internet Relay Chat (IRC) client.
    * Maintained and wrote a manual for **Emacs Muse**, a tool that publishes websites and research documents from within Emacs.
    * Maintained and wrote a **MusicPD** backend for **EMMS**, a music player for Emacs.

HCoop
:   Acted as a volunteer Sysadmin for HCoop for a few years, implementing a Postfix deployment that delivered mail to a research filesystem.

Programming Languages
:   **TypeScript and JavaScript:** 15+ years of professional experience writing production code for Frontend and Platform.

:   **Bash:** 20+ years of writing shell scripts, including writing a [unit test framework](https://github.com/mwolson/barrt-sh).

:   **Java:** 5+ years of writing web backends and Platform microservices.

:   Basic knowledge of **Powershell**, **C/C++**, **Lisp**, **Perl**, **Python**, **SML**.

Education
---------

2004-2007
:   **B.S., Computer Science** and **B.S., Mathematics**; Purdue University (West Lafayette)

----

> <me@mwolson.org> • [LinkedIn](https://www.linkedin.com/in/mike-olson-666a083/)\
> Berrien Springs, MI, USA
