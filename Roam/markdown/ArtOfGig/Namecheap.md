About:: __Documentation for Namecheap (Yak Collective DNS).__
Chief Page Wrangler:: [[Venkatesh Rao]]
    - Additional Page Wranglers:: `[[Fname Lname]]` | `[[Fname Lname]]`
Created:: [[August 31st, 2020]] by [[Nathan Acks]]
Last Updated:: [[December 7th, 2020]] by [[Nathan Acks]]
Last Gardened:: `/Today` by `[[Fname Lname]]`
# Purpose
    - DNS
        - `yakcollective.org` -- A record pointing to [[Netlify]]'s CDN/load balancer
            - Why? Because [CNAME record "alias" other records, and thus can't be combined with other record types](https://www.freecodecamp.org/news/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c/#cname-limitations) (MX, NS, etc.).
        - `www.yakcollective.org` -- CNAME pointing to current [[Netlify]] site (https://practical-lichterman-20c7e0.netlify.app/)
