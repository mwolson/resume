Mike Olson
==========

>  Engineering Manager | Staff Architect | Frontend and Full-stack

```{=context}
\blank[2*big]
```

Professional Experience {.extra-top-space}
-----------------------

**Anchor OS: Staff Architect** (2025)

Significantly improved the performance and responsiveness of the Anchor SDK to move the needle on customer feedback and improve ability to finalize new contracts. Mentored cross-functional backend API engineers to achieve better API performance. Introduced best practices to speed up the software development lifecycle. Leveraged AI code review tools to locate issues before merging.

Performance:
:    **Shadow root**: Migrated the SDK UI for customer websites from an iframe to a shadow root for better CSS isolation, page load performance, and responsiveness.
:    **CDN**: Overhauled Fastly setup for improved cacheability of various endpoints.
:    **Profiling**: Profiled page load behavior to locate inefficient dependency loading patterns and load them in parallel; curtailed worst-case behavior when ad-blockers were present.
:    **Code Optimization**: Prevented API calls in prior page routes from impacting load time of the current route.

Best Practices:
:    **Proxy server**: Used AI coding tools to build proxy server that allowed hostfiling company domains to test local versions of the SDK against real customer websites, including local CA cert installation for correct HTTPS termination.
:    **CI**: Migrated SDK repo to GitHub and sped up CI pipeline by 5x.
:    Introduced **BlackSmith** for much faster GitHub runners.
:    Introduced and trained **CodeRabbit** for better code review cycle.

**TigerConnect: Sr. Engineering Manager, Staff Engineer** (2017-2024)

Implemented significant improvements to the existing TigerConnect Messenger Web App, which is used by 700,000+ doctors, nurses, and other care team members at 7,000 healthcare organizations, or 5 of the 10 largest US hospitals. TigerConnect Messenger is used to securely communicate about patient details in a way that complies with HIPAA requirements.

The customer deployment impact of TigerConnect Messenger is that it reduces fatal accidents such as sepsis, improves staff retention and happiness, and often cuts wait times for the ER by about half.

Sr. Engineering Manager:
:    **Upleveling:** Mentored engineers and guided them towards achieving their goals, facilitating career advancement.
:    **Team Culture:** Applied Emotional Intelligence (EQ) practices to cultivate a supportive team culture, enhancing work-life balance and collaboration for a **multi-level** engineering team of **12 full-time** staff.
:    **Quality Control:** Documented team practices in **Notion** and GitHub; added linters to the team projects to speed up code reviews and catch mistakes early.
:    **On-time Delivery:** Guided the team to provide accurate high-level and mid-level project estimates, resulting in completed on-time projects with Agile/SCRUM methodologies in both traditional and stream-aligned pod settings.
:    **Hackathon:** Organized and ran an internal hackathon, seeding ideas from the top 10 customer requests, shipping 3 of them.

Staff Engineer:
:    **Messenger Web App:** Improved website page load performance, GitHub Actions build pipeline performance, and responsiveness under load. Key technologies: TypeScript, React, MobX, Redux ToolKit (RTK), SCSS, Playwright, npm.
:    **Electron Desktop App**: Wrote a TypeScript Electron app to allow the Messenger website to run with additional functionality such as native OS notifications for incoming messages and alerts. Extended 5+ npm libraries to provide early support for a new version of Electron.
:    **AWS Cloudfront Node.js Lambda:** Terraform deployment with sophisticated routing and support for rolling deployments of the Messenger website to 4 US regions - classifying by groups of US states - as well as the company's only unit testing and integration testing of a single layer of infrastructure.
:    **Customer Support:** Interfaced with a 1MM+ ARR customer to solve complex responsiveness problems with the Messenger app, providing a multi-stage plan along with presenting timely updates as the work progressed.

**Ticketmaster: Sr. Engineer** (2008-2016)

Supported and maintained production websites written in Java, Perl, and React for displaying event information and purchasing events. Helped prepare for extraordinary traffic volumes during onsale situations, improved performance and quality, and developed load tests.

Sr. Engineer:
:    Wrote a **Node.js** Platform Microservice that scaled to **1MM+** requests per day, supported with custom analytics and reporting.
:    Helped migrate the Ticketmaster events website to **Docker**.
:    Cut request latency in half for a data orchestration service by placing a **CDN** in front of it. Wrote unit tests for the CDN integration along with a [custom Bash framework](https://github.com/mwolson/barrt-sh) to run them.
:    Helped spin up and configure the company's **GitLab** instance, and wrote presentations to advise on Git and GitLab as key technology choices to replace SVN.
:    Had involvement in the early development idea for [Talkback](https://github.com/ijpiantanida/talkback) while the author contracted for Ticketmaster, and adapted our integration test suite to use it. **Talkback** is a JS proxy that allows requests for multiple local services to be captured together and replayed for reproducible and maintainable integration tests.
:    Wrote a sophisticated **codemod** to incrementally and automatically perform a very large code migration that spanned multiple sprints. Created several npm modules to support this.
:    Wrote the first integration of an **interactive seatmap** into the Ticketmaster events website. Before React was written, used DOM diffs to improve performance of tooltip rendering when moving the mouse over a large number of seats on the seatmap.
:    Wrote and presented a well-received **presentation on performance** during an All Engineering meeting which benchmarked and explained the underlying factors contributing to REST API performance of several languages at scale: Go, Erlang, Java, Perl.

Technical Experience
--------------------

Gift Exchange Website
:   Side project to allow family members to buy each other gifts for the holiday and avoid having two people buy the same gift for the same person.

    * Wrote the website infrastructure using a mix of **Skaffold**, **Kubernetes** (k3d and k3s), **Docker**, and **Bun**.
    * Deployed the resulting Bookstack and MariaDB pods to a k3d cluster on a single Arch Linux server node with **Traefik** ingress controller as an exercise in keeping costs manageable.
    * Tested changes locally using Skaffold profiles deployed to Rancher Desktop.
    * Configured **CloudFlare** as a CDN.

Open Source
:   Key contributions: Updated manpages for **Git** and expanded edge case support for the **git-svn** command. Made frontend code contributions to **Jest** and **React Dropzone**. Multiple large code contributions to **Emacs**:

    * Contributed **ERC** into the Emacs codebase, which allows Emacs to function as an Internet Relay Chat (IRC) client.
    * Maintained and wrote a manual for **Emacs Muse**, a tool that publishes websites and research documents from within Emacs.
    * Maintained and wrote a **MusicPD** backend for **EMMS**, a music player for Emacs.

Programming Concepts
:   **AI**: Used opencode along with custom `AGENTS.md` file with various different AI providers to accelerate local development and review changes.
:   **TypeScript and JavaScript:** 15+ years of professional experience writing production code for Frontend and Platform.
:   **Bash:** 20+ years of writing shell scripts, including writing a [unit test framework](https://github.com/mwolson/barrt-sh).
:   **Lisp:** 18+ years of writing and maintaing Emacs Lisp libraries to extend Emacs.
:   **Java:** 5+ years of writing web backends and Platform microservices.
:   Basic knowledge of **Clojure**, **C/C++**, **Perl**, **Python**, **Scala**, **SML**.
:   **Tailwind:** Used as a preferred CSS solution in multiple personal projects.

Operating Systems
:   **Linux:** 20+ years of experience on Arch, Debian, Ubuntu, and Fedora. Was a package maintainer for Debian and Ubuntu.
:   **Windows:** 5+ years of experience supporting customers of a desktop app, including problem-solving around Integrated Windows Authentication (IWA) for SSO support.

Certifications
:   **AI Agents Fundamentals** (Hugging Face, 2025)
:   **Hiring Your Team** (Lynda, 2017)
:   **New Manager Fundamentals** (Lynda, 2017)

Education
---------

2004-2007
:   **B.S., Computer Science** and **B.S., Mathematics**; Purdue University (West Lafayette)

```{=context}
\blank[2*big]
```

::: {.extra-top-space}
> <me@mwolson.org> • [LinkedIn](https://www.linkedin.com/in/mike-olson-666a083/) • [mwolson.org](https://mwolson.org/) \
> Berrien Springs, MI, USA
:::
