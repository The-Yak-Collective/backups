owner:: [Nathan Acks](<Nathan Acks.md>)
last updated:: [August 31st, 2020](<August 31st, 2020.md>)
last updated by:: [Nathan Acks](<Nathan Acks.md>)
# Threats
    ## Current
        - Data loss ([Roam](<Roam.md>), [Yak Collective Robot](<Yak Collective Robot.md>), [GitHub](<GitHub.md>), etc.)
            - Wanton destruction or ransom attempts (includes some social media take-overs)
            - Members leaving who have access to data/billing
            - Service disruptions
        - Infrastructure misuse (malware or phishing being hosted on website, spam through our email or mailing list)
        - Griefers
            - Website defacement
            - Social media account take overs
        - Branding and IP?
            - Someone else claiming to be the Yak Collective (species of griefer)
            - Copyright, other IP claims
    ## (Possible) Future
        - Data breach (We don't collect enough, or the right type, of information right now through our sign-up form for this to be a problem, but we might at some point.)
            - Google Form
            - Google Analytics?
            - [Discord](<Discord.md>)?
        - Disclosure (This probably only really matters if we have projects where premature disclosure would be harmful to the client.)
            - Works in progress
            - [Discord](<Discord.md>) chats
        - Financial (We don't have a bank account now, but as soon as we do there are all sorts of new internal and external risks.)
    ## Non-Threats
        - Physical threats
            - We don't work together in the same space, many of us have never even met in person.
            - Personal risks are similar to any other online activity.
            - What might change this?
                - The more information we gather about our members, the more dangerous we become to them (stalkers, etc.).
                - If the Yak Collective ever worked on a particularly controversial project, this would raise __all__ of our risks -- including physical risks to our members.
# Asset Classes
    ## Class 1 (Existential Threats)
        - "[Yak Collective Robot](<Yak Collective Robot.md>)"
        - "[Namecheap](<Namecheap.md>)"
        - Password managers or databases
        - "[Roam](<Roam.md>)"
        - "[Knack](<Knack.md>)"
        - Bank accounts, should we ever have such a thing
    ## Class 2 (Serious Disruption to Normal Operations)
        - Loss of access to important public and internal Google Docs
            - "[Don't Waste the Reboot](https://docs.google.com/presentation/d/1OfBuSq4SImE1Gq2EaAGCAlkwC8LZRCWx-7O_VOHJ5TI/edit) ([Paul Millerd](<Paul Millerd.md>))"
            - "[The New Old Home](https://docs.google.com/presentation/d/1Bgs4e6YIEydMot0VM4lf-onZM2z6Zei3n87f3JHCeSk/edit) ([Drew Schorno](<Drew Schorno.md>))"
        - "[GitHub](<GitHub.md>)"
        - "[Netlify](<Netlify.md>)"
        - "[Discord](<Discord.md>)"
    ## Class 3  (Inconvenience)
        - "[Registration form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform) (who owns this?)"
        - "[Google Calendar](https://calendar.google.com/calendar/embed?src=o995m43173bpslmhh49nmrp5i4%40group.calendar.google.com) ([Venkatesh Rao](<Venkatesh Rao.md>))"
        - "Google Analytics ([Tom Critchlow](<Tom Critchlow.md>))"
        - "[IFTTT](<IFTTT.md>)"
        - "[Carl](<Carl.md>)"
        - "[Substack](<Substack.md>)"
        - "[Twitter](<Twitter.md>)"
        - "[Facebook](<Facebook.md>)"
        - "[LinkedIn](<LinkedIn.md>)"
    ## Class 4 (¯\_(ツ)_/¯)
        - "[Zapier](<Zapier.md>)"?
        - "[Glitch](<Glitch.md>)"
# Possible Mitigations
    - Trust between members (especially members with access to various assets)
    - Separation of duties for Class 1 and 2 assets
        - No one person should have access to __all__ assets in a category
        - Conversely, none of these asset should be controlled by only a single person
        - The [Yak Collective Robot](<Yak Collective Robot.md>) acts as a failsafe for a set of our accounts. Only __very__ trusted people should have access to this account!
    - Principal of least access for access to assets
        - We shouldn't go nuts about this, but we also shouldn't just give people access to something if unneeded
        - Access should be periodically audited
            - Most of our assets use shared logins right now 😓
                - If the app has a list of when someone accessed it, then this should be periodically checked to make sure that times and IPs look okay
                - Use a password manager for tracking too (but don't __only__ use this!)
            - In cases where access isn't shared, periodically check access logs and audit users.
    - Strong passwords, 2FA (can also become a central point of failure)
        - We should definitely be using password managers to make sure that our passwords are strong and not duplicative
        - Using a password manager will also make it easier to routinely rotate passwords and audit who has access to what
    - Backups (can also be a risk)
        - People in charge of a given asset should also be in charge of backing that asset up (preferably locally, to an encrypted computer and/or external drives)
# Recommendations
    - Infrastructure roles:
        - Right now, there are too few assets, and too few people, and YC is too young to worry about well-defined roles. Also, such roles discourage potential cross-pollination between different infrastructure classes.
        - All assets should have no more than 4 and no less than 2 admin users.
            - Given the small size of the Yak Collective, we probably want to aim for 2 in most cases.
        - No one person should have access to more than 50% of the assets in a given category.
        - Class 1 assets should be restricted to only highly trusted users.
        - All assets and admin users should be centrally tracked in the [IT Infrastructure](<IT Infrastructure.md>) document.
        - All admins are responsible for periodically auditing access for assets they control (that record login information) __at least__ once per month.
        - All admins are responsible for periodically backing up and auditing access for assets they control __at least__ once per month.
        - If we have two admins per asset, each admin does a backup/audit of their assets every two months with a one-month offset, then we easily meet this goal with probably only an hour or so of time commitment (on average) per admin.
    - We should copy critical documents into the [Yak Collective Robot](<Yak Collective Robot.md>) Google Drive.
        - This doesn't mean that project contributors have to work out of that Drive. When a project is ready, we should just copy assets into the Drive and use those assets for actual sharing on the website, etc.
    - All admins should move to using strong, randomized passwords from a password manager + 2FA for all accounts that support it.
        - Fine for the moment, I think, to store 2FA in the password manager. This __does__ make the password manager a single point of failure for those logins, but it is still better than having no 2FA. If we start dealing with bank accounts, etc., then we may want to rethink this.
        - Passwords should be rotated whenever someone steps away from their role, or if they think they may have been compromised (ransomware, etc.), or at a minimum annually.
# Questions
    - Should we have some kind of heads-up + veto system for new admins?
        - Not sure what this should be... Everything I think about feels like bureaucratic larping.
    - Having only one person in charge of paying for a service is risky. Can we mitigate this without adopting a more formal structure?

# Backlinks
## [IT Infrastructure](<IT Infrastructure.md>)
- [Threat Model](<Threat Model.md>)

## [infrastructure](<infrastructure.md>)
- revisit [Threat Model](<Threat Model.md>)

