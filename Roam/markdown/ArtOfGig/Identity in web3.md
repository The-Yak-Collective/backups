# Identity in web3
    - Nathan Acks ([necopinus.eth](https://twitter.com/necopinus))
    - [May 16, 2022]([[May 16th, 2022]])
> To a certain extent, I’m not going to cover anything new here.

Instead, this presentation is going to be about fleshing out some of the connections between the things we’re already familiar with.

At least as much as one can in 30 – minutes.

^^**Note to self:** To stay on-time, each slide needs to be kept to ~2 minutes.^^
---
## Identity in web3
### The TL;DR
    - “Wallets” are just public/private key pairs
    - Identity on web3 is rooted in your wallet
    - Authentication is just your wallet’s private key signing some piece of data
    - __None of this is about blockchain!__
    - …But blockchain makes “real” world use cases *much* easier
> ^^02:00 – 03:00^^
---
## Public Key Crypto
### Let’s Define Some Terms
    - **Public/Private Keys:** Large integers with a hard-to-determine relationship (kinda)
    - **Public Keys:** Encryption + verification
    - **Private Keys:** Decryption + signing
    - **Hashes:** Uniquely identify data (kinda)
    - **Signatures:** Hashes encrypted by a private key + other stuff (sometimes)
> The “key” thing to understand about public/private key pairs is that it should be __very difficult__ to determine the relationship between the two keys.

This doesn’t mean that you can choose __any__ keys — the public and private keys __are__ related in a fashion determined by the cryptographic algorithm you’re using.

An important thing to remember is that the relationship between the two keys is actually __symmetric__ — what the public key encrypts, the private key can decrypt, and vice versa.

Sometimes, which key is public and which is private is kind of arbitrary. But sometimes one key is derived from the other (this is the case with the type of cryptography used by blockchains), in which case we __must__ keep the first key private.

When it comes to hashing algorithms, these days we’re generally producing a 256-bit number to represent our data.

Now, obviously most pieces of data have more than 256 bits, so it __is__ possible for two pieces of data to have the same hash.

This is called a “collision”, and if you can reliably produce it we say that the hashing algorithm is __broken__.

But collisions are actually quite rare.

Another important property of hashes is that small changes in the source data should produce radically different hash values, and it should not be possible to determine how the original source data changed from those changes.

Finally, while the simplest signatures are just encrypted hashes, Ethereum uses a more complicated signature.

That “other stuff” that’s part of the Ethereum signature is going to be important, and I’ll talk about it more in a bit.

^^04:00 – 06:00^^
---
## Public Key Crypto
### web3 Specifics
    - All blockchains are built off of elliptic curve cryptography
        - Bitcoin and Ethereum use secp256k1
        - Solana uses the more standard Curve25519
    - A private key is just any integer in a defined 256-bit space
> I’ll show you an example of an elliptic curve in just a moment.

Curve25519 is the “standard” curve that just about everyone uses; it’s not really clear to me why Bitcoin chose secp256k1.

Despite its differences, Ethereum uses the same cryptographic components as Bitcoin; Ethereum’s using secp256k1 because Bitcoin is.

The fact that a private key is literally __any__ integer in a given range means that it’s very fast to come up with one.

^^06:00 – 09:00^^
---
## Public Key Crypto
### web3 Specifics
    - In elliptic curve cryptography, the *public* key is a just defined point on a defined curve multiplied by the private key
![Elliptic curve addition](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FYRxCYBkFhy.png?alt=media&token=b729828f-32e4-4f38-b636-b58215ed419e)
> Elliptic curve cryptography defines a special notion of “adding” points on an elliptic curve.

There’s four cases, illustrated here.

We’re interested in the second one, but it’s clearer to see what’s going on in the first one.

^^Next slide.^^

We “add” a point to itself by taking the __tangent__ of the curve at that point and then finding the next intersection — following the animated example, we’d say that `Q + Q = -P`.

Since we can add `Q` to itself, we have a notion of “scalar multiplication”, and this is how we find the __public__ elliptic curve key — we start at a __pre-defined point__ and then “add” multiply that point by the __private key__ we picked (so, add it to itself in an elliptic curve sense that many times).

It turns out that elliptic curve addition is __also__ a fast process… But even if you already know the curve and the starting point and the public key, it’s __very hard__ to figure out what the private key (the “scalar multiplier” of the fixed starting point) is.

The reason the public key is a single number is that we only need to know the x-coordinate and whether the point was above or below the x-axis to fully determine the coordinate. So that lets us compress a coordinate pair into a single (binary) number.

^^08:00 – 12:00^^
---
![Elliptic curve addition (animation of the general case)](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FxE7ahIzNKp.gif?alt=media&token=75763a1b-5792-48f1-8f7b-8c82fe082af8)
> Basically, when you “add” two points in an elliptic curve, you draw a line between them, go to the __furthest__ intersection of that line with the curve as you can that __isn’t__ one of the original points, and then __reflect__ that point across the x-axis.

Here we see `A + B = C`, `C + A = D`, and `D + A = E`.

Got that?

^^Previous slide.^^
---
## Public Key Crypto
### web3 Specifics
    - Hashing is fundamental to blockchains
        - Bitcoin and Solana use the tried-and-true SHA-256
        - Ethereum uses the newer (and much weirder) Keccak-256
    - Blockchains __love__ their hashes (perhaps a little __too__ much)
> Okay, so that’s elliptic curve cryptography in a nutshell.

Hashing is also very important in blockchains.

It shows up __everywhere__.

Bitcoin and Solana use pretty vanilla hashes.

The Keccak-256 hash used by Ethereum is very, __very__ weird.

Blockchain application design likes to use hashes.

As an outside observer, it all feels a bit like “when all you have is a hammer”…

You’ll see hashes of hashes of hashes.

You’ll see hashes used when doing so actually makes things __less__ computationally efficient (and not necessarily in a privacy-preserving way).

__So many hashes…__

^^12:00 – 18:00^^
---
## Wallets
### In Theory
    - A wallet is just a public/private key pair
    - …But addresses __aren’t__ public keys!
        - Bitcoin addresses __were__ public keys, but are now SHA-256 hashes
        - Ethereum addresses are __part__ of the Keccack-256 hash of the public key
        - Solana still just uses public keys
> Bitcoin addresses __were__ public keys pre-2017.

Ethereum addresses are the __last__ 20 bits of the __hash__ of the public key.

Solana addresses and old-style Bitcoin addresses use Base58 encoding, which is a –z, A –Z, and 0 – 9, less I, l, O, and 0.

Base58 encoding might be the single most enduring legacy of Bitcoin, actually.

You see it __everywhere__ now.

Ethereum addresses are just `0x` prefixed hexadecimal numbers.

Modern Bitcoin addresses are a hash of a hash of the wallet’s public key, along with a version prefix and a hash.

Bitcoin addresses now use bech32-encoding, I guess because they needed to one-up Ethereum’s choice of Keccak-256 as a hashing algorithm.

^^14:00 – 21:00^^
---
## Wallets
### In Practice
    - Wallet apps are __hierarchical deterministic__
    - Seed phrase = initial secret + checksum
    - Public/Private keys generated from this
    - Wallets “paths”: `m/44'/60'/0'/0/n`
        - `60'` is Ethereum
        - `0'` is Bitcoin
        - `501'` is Solana
> “Hierarchical deterministic wallets” are also sometimes just called “HD wallets”.

^^Next slide.^^

So this gives us our key path.

While an HD wallet could theoretically generate __a lot__ of different key pairs, these days the path is highly standardized and almost always looks a bit like what’s shown here.

The wallets you see in MetaMask are actually __six__ steps removed from your seed phrase!

The node number used for the second key pair derivation is determined by the blockchain you’re running the derivation for.

It’s worth noting here that Bitcoin and Ethereum don’t use a hardened derivation for the “change” node (the depth immediately above the actual wallets), but Solana __does__.

This means that HD Solana wallets like Phantom are actually resistant to the disclosure of one wallet’s private keys, though in practice I’m not sure how much difference this makes since all of the public and private wallet keys live in a single file that’s encrypted using your passphrase (__not__ the seed phrase!).

This process is why you can restore all of your wallets in MetaMask, Phantom, Ledger, Trezor, etc. through just knowing a single number (your seed phrase).

(As an aside, if you’ve gotten this far you may be thinking that Solana basically sounds like somebody thought, “what if a blockchain, but not needlessly weird?”)

^^18:00 – 27:00^^
---
![Example HD wallet derivation tree](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FLAcDVkzGWU.png?alt=media&token=3502bc86-70b9-4248-a2b7-34a083e4d677)
> The seed phrase is turned into a longer “master” key pair using a hashing algorithm designed to securely “lengthen” numbers.

Subsequent key pairs are then derived in a deterministic way that depends on the depth and the node number in the tree.

Using the private key to derive the next set of keys is said to “hardened” the derivation, as in the algorithm used it’s impossible in this case for the disclosure of one public/private key pair to impact the security of other key pairs (this is __not__ true if the public key is used).

This process gives rise to a “path” that (along with the seed phrase) uniquely determines a given wallet.

Derivations that are hardened — use the private rather than public key from the previous node in the path — are denoted using a “prime”.

^^Previous slide.^^
---
## Authentication in web3
    - In web3 your wallet is you __identity__
    - __Authentication__ is proving that you control the private key
    - This is done by __signing__ data provided by the website
    - MetaMask lets sites know that you can sign in by injecting JavaScript
    - But does __every__ wallet need to do this…?
> So that gets us the public/private key pair that comprises a wallet.

And in web3, the wallet is an identity.

Remember how I said that some kinds of signatures could contain “other stuff” beyond just the encrypted hash of the data?

Well, in Ethereum, some of that “other stuff” is a copy of the wallet’s private key!

This means that a site processing an Ethereum signature can verify the signature __and__ determine the corresponding wallet address __without__ requiring any additional communication!

(I strongly suspect that packaging the public key in with the signature is one of the things that really gave Ethereum a leg up when it came to applications beyond cryptocurrency.)

But how does a site know that you have a wallet?

^^20:00 – 30:00^^
---
## Enter WalletConnect
    - WalletConnect removes the need for code injection
        1. The site uploads encrypted payload to a proxy
        2. The proxy location + encryption secret is sent to the wallet
        3. The wallet grabs, decrypts, signs, and pushes back the payload
        4. The site can now authenticate the wallet
> WalletConnect 2.0 is more complicated, but that complication gains us more secure encryption and the removal of Ethereum-specific assumptions about signature structure.

WalletConnect 2.0 is also strongly reminiscent of the W3C’s “decentralized identities” initiative, which I’ll talk a little more about shortly.

^^22:00 – 33:00^^
---
## Making Identity Friendly
### Name Services
    - **Problem:** Wallet addresses aren’t friendly
    - **Solution:** Blockchain “DNS” for wallets!
        - `.eth` ([Ethereum Name Service](https://ens.domains/))
        - `.sol` ([Solana Name Service](https://naming.bonfida.org/))
        - `.crypto` ([Unstoppable Domains](https://unstoppabledomains.com/))
    - ENS is widely supported already
        - Can be used with Gnosis Safe!
> It’s worth noting that this is the first time we’ve actually needed to think about blockchains!

^^24:00 – 36:00^^
---
## Making Identity Safe
### Multi-Sig Smart Contracts
    - **Problem:** It’s easy to lose control of wallet-based identities
    - **Solution:** Use a multi-signature smart contract “vault” like Gnosis Safe
        - Recoverability: 1-out-of-2 vault with MetaMask + a hardware wallet
        - High Security: 2-out-of-3 vault with MetaMask + two hardware wallets
> (This is kinda the “opinion” section of the presentation.)

^^26:00 – 39:00^^
---
## The Sad Tale of DIDs
### or, web3 at the W3C
    - W3C “distributed identities” (DIDs) bridge Web 2.0 and web3 identity
        - Website & app login
        - Identity & document verification
    - Objected to by Google, Apple, and Mozilla
        - Likely dead without browser support
> (This is a tale that might be relevant for Commits Vortex and/or the Online Governance Studies group…)

Importantly, DIDs are key to making another W3C initiative, verifiable credentials, work.

In general, you can think of DIDs as abstracting the notion of a “wallet” into a set of cryptographic properties that __could__ be performed by a wallet, but also could be performed by a Web 2.0 identity provider like Okta or Google.

DIDs __don’t__ actually require blockchain, but recording both DID documents and documents that are being attested to with DIDs on a distributed ledger eliminates the need to trust centralized parties when it comes to DID portability and document verification. The use of distributed ledgers also allows for things like W3C verifiable credentials to be validated even if the original issuing body disappears.

It’s not really clear what the actual reason is behind Apple, Google, and Mozilla’s objections to DIDs.

Mozilla seems focused on the notion that blockchain use is strongly tied to CO₂ emissions.

The objections from Apple and Google seem to be playing “no true Scottsman” with the spec, which is one reason why the smart money is on DIDs — and perhaps more importantly, verifiable credentials — being effectively dead.

Perhaps coincidentally, Apple and Google are two of the biggest identity providers, and both are in the process of rolling out centralized technologies that would compete with the verifiable credential standard.

^^28:00 – 42:00^^
---
## Future Directions
    - Do a deep dive into `.eth`, `.sol`, etc.
    - Compare wallet-based identity with [Namecoin](https://www.namecoin.org/)/[NameID](https://nameid.org/)’s approach.
    - How do multi-signature smart contracts like Gnosis Safe actually work?
    - Look into [Ceramic](https://ceramic.network/), which provides a lot of __practical__ web3 identity functionality.
    - What are “soulbound NFTs” and do they actually provide an identity solution?
> ^^30:00 – 45:00^^
---
## Resources
    - This presentation:
        [[Identity in web3]]
    - My research notes:
        [[web3 Identity Research Notes]]
> ^^32:00 – 48:00^
---
# Questions?
