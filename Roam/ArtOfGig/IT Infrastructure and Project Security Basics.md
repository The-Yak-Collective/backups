About:: __Some basic tips for how to approach security for Yak Collective IT infrastructure and projects. Much of this is more broadly applicable as well, so feel free to steal it.__ 😁
Chief Page Wrangler:: [[Nathan Acks]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[December 11th, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 11th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Settings and Configuration
    - Disable services and features that aren't currently being used.
    - __In general__ you should choose the most restrictive settings offered that allow the system to function as required. A little inconvenience is fine; breaking required functionality, not so much.
# User Accounts
    - Users (__especially admins__) should turn on two-factor authentication (sometimes also called "2-step verification" or "multifactor authentication") whenever possible.
        - In general, you should prefer the strongest authentication factor offered, deactivating less-strong methods.
            1. Security keys (such as [YubiKeys](https://www.yubico.com/products/))
            2. Phone-based "one touch" authentication (such as [Google Prompt](https://support.google.com/accounts/answer/7026266))
            3. Time-based authentication codes (such as [Google Authenticator](https://en.wikipedia.org/wiki/Google_Authenticator)) 
            4. Emailed authentication codes
            5. SMS or voice calls
    - Use [key-based SSH authentication](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server), rather than a plain username + password.
    - Use OAuth or unique, revocable tokens to authenticate automated systems, rather than a username + password.
    - __Strongly consider__ using a password manager, and generating a unique, random password for every site.
# Data
    - __Gather as little data as possible__ in order to make decisions or provide services. You can't lose control over data you never collected to begin with.
    - Whenever possible, aggregate or otherwise anonymize data that does not need to be linked to a specific individual.
    - __Strongly consider__ building a process that purges old data after some time. The online world changes fast, which means that the risk/reward ratio can begin to grow quite quickly even after a few months.
# Code
    - Don't re-invent the wheel. If a stable library (or equivalent) exists for a function, use it rather than writing your own code. __This goes double for any functionality related to encryption!__
    - Take advantage of [GitHub's automatic security alerts](https://docs.github.com/en/free-pro-team@latest/github/managing-security-vulnerabilities).
    - Sanitize your inputs. If possible, use a restrictive "whitelist" of acceptable user inputs.
    - Just as with the configuration of existing systems, you should drop unused code and features from your final deployment. Complexity is often the enemy of security.
    - Make your project as "stateless" as possible. The less you need to assume about the current state of your system, the better. As a bonus, this will often simplify recovery and reinstallation tasks.
    - Avoid filesystem access where possible. So many race conditions!
