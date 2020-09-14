owner:: [Venkatesh Rao](<Venkatesh Rao.md>)
last updated:: [September 13th, 2020](<September 13th, 2020.md>) by [Nathan Acks](<Nathan Acks.md>)
# Purpose
    - DNS
        - `yakcollective.org` -- A record pointing to [Netlify](<Netlify.md>)'s CDN/load balancer
            - Why? Because [CNAME record "alias" other records, and thus can't be combined with other record types](https://www.freecodecamp.org/news/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c/[cname-limitations](<cname-limitations.md>)) (MX, NS, etc.).
        - `www.yakcollective.org` -- CNAME pointing to current [Netlify](<Netlify.md>) site (https://practical-lichterman-20c7e0.netlify.app/)
# Access ^^(Shared Login!)^^
    - [Venkatesh Rao](<Venkatesh Rao.md>)

# Backlinks
## [IT Infrastructure](<IT Infrastructure.md>)
- [Namecheap](<Namecheap.md>)

## [Netlify](<Netlify.md>)
- [Namecheap](<Namecheap.md>)

## [Threat Model](<Threat Model.md>)
- [Namecheap](<Namecheap.md>)

