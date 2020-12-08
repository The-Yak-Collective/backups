About:: __Documentation for Namecheap (Yak Collective DNS).__
Chief Page Wrangler:: [Venkatesh Rao](<Venkatesh Rao.md>)
    - **[Additional Page Wranglers](<Additional Page Wranglers.md>):** `[Fname Lname](<Fname Lname.md>)` | `[Fname Lname](<Fname Lname.md>)`
Created:: [August 31st, 2020](<August 31st, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Updated:: [December 7th, 2020](<December 7th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
Last Gardened:: `/Today` by `[Fname Lname](<Fname Lname.md>)`
# Purpose
    - DNS
        - `yakcollective.org` -- A record pointing to [Netlify](<Netlify.md>)'s CDN/load balancer
            - Why? Because [CNAME record "alias" other records, and thus can't be combined with other record types](https://www.freecodecamp.org/news/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c/[cname-limitations](<cname-limitations.md>)) (MX, NS, etc.).
        - `www.yakcollective.org` -- CNAME pointing to current [Netlify](<Netlify.md>) site (https://practical-lichterman-20c7e0.netlify.app/)

# Backlinks
## [IT Infrastructure](<IT Infrastructure.md>)
- [Namecheap](<Namecheap.md>)

## [Netlify](<Netlify.md>)
- [Namecheap](<Namecheap.md>)

## [Threat Model](<Threat Model.md>)
- [Namecheap](<Namecheap.md>)

