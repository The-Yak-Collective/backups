About:: __Notes on the Yak Collective Threat model and assets.__
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[June 30th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Threats
    ## Current
        - Data loss ([[Roam]], [[Yak Collective Robot]], [[GitHub]], etc.)
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
            - [[Discord]]?
        - Disclosure (This probably only really matters if we have projects where premature disclosure would be harmful to the client.)
            - Works in progress
            - [[Discord]] chats
        - Financial (We don't have a bank account now, but as soon as we do there are all sorts of new internal and external risks.)
    ## Non-Threats
        - Physical threats
            - We don't work together in the same space, many of us have never even met in person.
            - Personal risks are similar to any other online activity.
            - What might change this?
                - The more information we gather about our members, the more dangerous we become to them (stalkers, etc.).
                - If the Yak Collective ever worked on a particularly controversial project, this would raise __all__ of our risks -- including physical risks to our members.
# Asset Classes
    - ## Class 1 (Existential Threats)
        - [[Yak Collective Robot]]
            - Chief Page Wrangler:: [[Nathan Acks]]
        - [[Namecheap]]
            - Chief Page Wrangler:: [[Venkatesh Rao]]
        - Password managers or databases
        - [[Roam]]
            - Chief Page Wrangler:: [[Venkatesh Rao]]
        - [[Knack]]
            - ((AAhkfps_m))
        - Bank accounts, should we ever have such a thing
    - ## Class 2 (Serious Disruption to Normal Operations)
        - [Don't Waste the Reboot](https://docs.google.com/presentation/d/1OfBuSq4SImE1Gq2EaAGCAlkwC8LZRCWx-7O_VOHJ5TI/edit) deck
            - Owner:: [[Paul Millerd]]
        - [The New Old Home](https://docs.google.com/presentation/d/1Bgs4e6YIEydMot0VM4lf-onZM2z6Zei3n87f3JHCeSk/edit) deck
            - Owner:: [[Drew Schorno]]
        - [[GitHub]]
            - Chief Page Wrangler:: [[Nathan Acks]]
        - [[Netlify]]
            - Chief Page Wrangler:: [[Nathan Acks]]
        - [[Discord]]
            - Chief Page Wrangler:: [[Jordan Peacock]]
    - ## Class 3  (Inconvenience)
        - [Registration Form](https://docs.google.com/forms/d/e/1FAIpQLSfVUUvuIkzEGffk1CoEgzOkeO_yI05Nuw6zU3H1TNLmiQOf7g/viewform)
            - Owner:: [[Venkatesh Rao]]
        - [Google Calendar](https://calendar.google.com/calendar/embed?src=o995m43173bpslmhh49nmrp5i4%40group.calendar.google.com)
            - Owner:: [[Venkatesh Rao]]
        - [Google Analytics](https://analytics.google.com/analytics/web/#/report-home/a164565897w230197394p216651325)
            - Owner:: [[Tom Critchlow]]
        - [[IFTTT]]
            - Chief Page Wrangler:: [[Nathan Acks]]
        - [[Carl]]
            - Chief Page Wrangler:: [[Jordan Peacock]]
        - [[Zapier]]
            - Chief Page Wrangler:: [[Venkatesh Rao]]
        - [[Substack]]
            - Chief Page Wrangler:: [[Matthew Sweet]]
        - [[Twitter]]
            - Chief Page Wrangler:: [[Jordan Peacock]]
        - [[Facebook]]
            - Chief Page Wrangler:: [[Venkatesh Rao]]
        - [[LinkedIn]]
            - Owner:: [[Venkatesh Rao]]
    - ## Class 4 (¯\_(ツ)_/¯)
        - [[Glitch]]
            - Chief Page Wrangler:: [[Nathan Acks]]
# Possible Mitigations
    - Trust between members (especially members with access to various assets)
    - Separation of duties for Class 1 and 2 assets
        - No one person should have access to __all__ assets in a category
        - Conversely, none of these asset should be controlled by only a single person
        - The [[Yak Collective Robot]] acts as a failsafe for a set of our accounts. Only __very__ trusted people should have access to this account!
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
        - All assets should be centrally tracked in the [[IT Infrastructure]] document.
            - All users with access to a service should be tracked in a page for that service linked off of the [[IT Infrastructure]] document. When a service supports multiple roles or levels of access, this should be noted there.
        - All admins are responsible for periodically auditing access for assets they control (that record login information) __at least__ once per month.
        - All admins are responsible for periodically backing up and auditing access for assets they control __at least__ once per month.
        - If we have two admins per asset, each admin does a backup/audit of their assets every two months with a one-month offset, then we easily meet this goal with probably only an hour or so of time commitment (on average) per admin.
    - We should copy critical documents into the [[Yak Collective Robot]] Google Drive.
        - This doesn't mean that project contributors have to work out of that Drive. When a project is ready, we should just copy assets into the Drive and use those assets for actual sharing on the website, etc.
    - All admins should move to using strong, randomized passwords from a password manager + 2FA for all accounts that support it.
        - Fine for the moment, I think, to store 2FA in the password manager. This __does__ make the password manager a single point of failure for those logins, but it is still better than having no 2FA. If we start dealing with bank accounts, etc., then we may want to rethink this.
        - Passwords should be rotated whenever someone steps away from their role, or if they think they may have been compromised (ransomware, etc.), or at a minimum annually.
# Questions
    - Should we have some kind of heads-up + veto system for new admins?
        - Not sure what this should be... Everything I think about feels like bureaucratic larping.
    - Having only one person in charge of paying for a service is risky. Can we mitigate this without adopting a more formal structure?
