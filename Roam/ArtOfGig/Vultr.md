About:: __Documentation for the the Vultr server and associated Discord bots.__
Chief Page Wrangler:: [[Maier Fenster]]
    - Additional Page Wranglers:: [[Nathan Acks]]
Created:: [[November 24th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 11th, 2021]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Notes
    ## Updating SSL Certificates
        - Every three months, the SSL certificates for *.rovers.yakcollective.org (for the [Yak Rovers](((6BNamvVZb))) and robots.yakcollective.org (for general automation) need to be updated. The [[Yak Collective Robot]] will get notification reminders about two weeks before the renewal date.
        - You'll need to have access to [[Namecheap]] to complete this process.
        - ```shell
          # (1) SSH into the Vultr server.
          #
          # (2) Become root.
          #
          sudo -s
          #
          # (3) Renew the certificates. During this process, you'll be promted
          # to update the _acme-challenge.robots and _acme-challenge.rovers
          # TXT records in Namecheap. After updating, wait 30 - 60 seconds
          # before continuing the script.
          #
          # (The below links can be used to check DNS propagation.)
          #
          # https://toolbox.googleapps.com/apps/dig/#TXT/_acme-challenge.rovers.yakcollective.org
          # https://toolbox.googleapps.com/apps/dig/#TXT/_acme-challenge.robots.yakcollective.org
          #
          certbot certonly --manual --preferred-challenges=dns --force-renewal -d "robots.yakcollective.org"
          certbot certonly --manual --preferred-challenges=dns --force-renewal -d "*.rovers.yakcollective.org"
          #
          # (4) Pagekite requires a combined cert/key file. We need to create
          # this ourselves.
          #
          cat /etc/letsencrypt/live/rovers.yakcollective.org/privkey.pem /etc/letsencrypt/live/rovers.yakcollective.org/cert.pem > /etc/letsencrypt/live/rovers.yakcollective.org/keycert.$(date "+%Y%m%d").pem
          ln -sf /etc/letsencrypt/live/rovers.yakcollective.org/keycert.$(date "+%Y%m%d").pem /etc/letsencrypt/live/rovers.yakcollective.org/keycert.pem
          #
          # (5) Restart Pagekite.
          #
          systemctl restart pagekite
          #
          # (6) Drop back to our normal user and restart the robots.
          #
          exit
          ~/robot/onboarding_robot/killandrestartbots
          #
          # Fin.
          ```
# Purpose
    - [gigayak](https://github.com/The-Yak-Collective/gigayak)
        - Provides access to a variety of convenience functions for members.
            - Add, remove, and view available gigs (`$gighelp`).
                - Builds `#gig-list`.
            - Add, remove, view, and vote on projects (`$projhelp`).
            - Add, remove, and view per-channel meeting agendas (`$agendahelp`).
            - etc.
        - DM `gigayak` to access.
    - [Project_UI](https://github.com/The-Yak-Collective/project_ui)
        - Manages the `#events-this-week` and `#experimental-project-ui` channels.
    - Shepherd/yak_scraper (a.k.a. [onboarding_robot](https://github.com/The-Yak-Collective/onboarding_robot))
        - Aggregates information about the [[Discord]] server and provides a variety of utility functions related to server and member access.
        - DM `yak_scraper`, then use `$help` to access command list.
    - yakdate (a.k.a. [gmail_hook](https://github.com/The-Yak-Collective/gmail_hook))
        - Receives incoming notifications about Google Calendar events via the Gmail API, and posts event details to the [[Discord]] `events` channel
        - Currently unused.
    - [Pagekite](https://pagekite.net/) frontend
        - Provides web front ends for the [[Yak Rover]] robots
