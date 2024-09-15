- [Figma from Feb 7 meeting](https://www.figma.com/file/HIuzXD2VdsAgIY5omnqKcu/Three-Laws-of-Roverics?node-id=14%3A162)
- [Github repo for 3 laws simulator project](https://github.com/The-Yak-Collective/three-laws)
- Refs on original 3 laws
    - [Wikipedia page on Asimov 3 laws](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#First_Law_modified)
    - Asimov's original 3 laws
        - **First Law:** A robot may not injure a human being or, through inaction, allow a human being to come to harm.
            - In "[Little Lost Robot](https://en.wikipedia.org/wiki/Little_Lost_Robot)" several NS-2, or "Nestor", robots are created with only part of the First Law.[[1]](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#cite_note-IROBOT-1) It reads:
            - 1. A robot may not harm a human being.
            - This modification is motivated by a practical difficulty as robots have to work alongside human beings who are exposed to low doses of radiation. Because their [positronic brains](https://en.wikipedia.org/wiki/Positronic_brain) are highly sensitive to [gamma rays](https://en.wikipedia.org/wiki/Gamma_ray) the robots are rendered inoperable by doses reasonably safe for humans. The robots are being destroyed attempting to rescue the humans who are in no actual danger but "might forget to leave" the irradiated area within the exposure time limit. Removing the First Law's "inaction" clause solves this problem but creates the possibility of an even greater one: a robot could initiate an action that would harm a human (dropping a heavy weight and failing to catch it is the example given in the text), knowing that it was capable of preventing the harm and then decide not to do so.
            - [Gaia](https://en.wikipedia.org/wiki/Gaia_%28Foundation_universe%29) is a planet with [collective intelligence](https://en.wikipedia.org/wiki/Collective_intelligence) in the [__Foundation__ series](https://en.wikipedia.org/wiki/Foundation_series) which adopts a law similar to the First Law, and the Zeroth Law, as its philosophy:
            - Gaia may not harm life or allow life to come to harm.
        - **Second Law:** A robot must obey the orders given it by human beings except where such orders would conflict with the First Law.
        - **Third Law**A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.
    - **Zeroth Law** A robot may not harm humanity, or, by inaction, allow humanity to come to harm.
    - New laws by Roger Macbride Allen
    - Additional Laws
        - The 1974 [Lyuben Dilov](https://en.wikipedia.org/wiki/Lyuben_Dilov) novel, __Icarus's Way__ (a.k.a., __The Trip of Icarus__) introduced a Fourth Law of robotics: "A robot must establish its identity as a robot in all cases." Dilov gives reasons for the fourth safeguard in this way: "The last Law has put an end to the expensive aberrations of designers to give psychorobots as humanlike a form as possible. And to the resulting misunderstandings..."[[30]](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#cite_note-30)
        - A fifth law was introduced by [Nikola Kesarovski](https://en.wikipedia.org/wiki/Nikola_Kesarovski) in his short story "The Fifth Law of Robotics". This fifth law says: "A robot must know it is a robot." The plot revolves around a murder where the forensic investigation discovers that the victim was killed by a hug from a humaniform robot that did not establish for itself that it was a robot.[[31]](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#cite_note-31) The story was reviewed by [Valentin D. Ivanov](https://en.wikipedia.org/wiki/Valentin_D._Ivanov) in SFF review webzine __The Portal__.[[32]](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#cite_note-32)
        - For the 1986 tribute anthology, __[Foundation's Friends](https://en.wikipedia.org/wiki/Foundation%27s_Friends),__ [Harry Harrison](https://en.wikipedia.org/wiki/Harry_Harrison_%28writer%29) wrote a story entitled, "The Fourth Law of Robotics". This Fourth Law states: "A robot must reproduce. As long as such reproduction does not interfere with the First or Second or Third Law."
        - In 2013 Hutan Ashrafian proposed an additional law that considered the role of artificial intelligence-on-artificial intelligence or the relationship between robots themselves – the so-called AIonAI law.[[33]](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics#cite_note-33) This sixth law states: "All robots endowed with comparable human reason and conscience should act towards one another in a spirit of brotherhood."
    - [xkcd comic on 3 laws](https://xkcd.com/1613/)
        - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FidxZAeyAm3.png?alt=media&token=2d9da059-3640-4b0b-b791-3774f5781eac)
- **"Potential Bias Operating System"**
    - **A set of "laws"** (kinda like manifestos for robots)
        - eg
            - a rover must attempt to maximize its operational lifespan
            - a rover must attempt to maximize its lifetime range unless it conflicts with law 1
            - a rover must undertake specific missions as requested by people unless it conflicts with laws 1 and 2
    - **An opinionated default mode network**
        - It should not sit around doing nothing in the absence of commands
    - **A personality**
        - eg. happy/sad/depressed
        - The rover should be recognizable by the choices it makes (eg: daring vs. cautious)
- **Notes/Reverse Engineering Asimov's 3 laws**
    1. **Witnessing Principle** Asimovian robots are not mere agents/instruments. They also bear witness to events they can't affect. They will suffer irreversible damage merely from watching humans come to harm, even if they could do nothing to stop it. 
    2. **Action Bias:** Asimovian robots don't just sit around in the absence of commands. They have ideas about what to do with themselves.
    3. **Irreversibility effects:** The more you override a conflict to act, the more irreversible damage it does
        - There is a blockchain like aspect here
        - There appears to be no way to shut down an Asimovian robot besides irreversibly damaging it. They are nuclear powered and can be hurt by some kinds of fields, but otherwise only 3-laws conflicts can shut them down.
        - Shades of [crash-only programming](https://en.wikipedia.org/wiki/Crash-only_software)
    4. **Non-abstraction:** Interestingly, there don't seem to lots of levels of abstraction, it looks like circuit-level logic, not even firmware really
        - the robots often talk of "my circuits"
        - This maps well to the [graph-compiler](https://deci.ai/resources/blog/graph-compilers/) type logic of deep learning models
        - Three laws effects seem to modulate the gestalt of state across the stack like limbic system/emotions do in humans
    5. **Bayesian: **They seem to do bayesian updating on harm based on modeling humans
    6. **Gestalt Potential-Bias Modulation:** The 3 laws seem to be "potentials" that weight possible courses of actions
        - They operate at the level of inhibition and amplification **at all levels of the stack**
    7. **Runtime Utilitarianism:** The basic design is utilitarian summation cost function but as a runtime, not waterfall speculative weighting of policies
    8. **Leaky Subsumption:** first law absolutely trumps 2nd law and can sway the balance in a first law conflict (cf: Runaround story), but robots can reason their way out of it at great cost. Giskard invents and programs the Zeroth Law at the cost of his own life.
    9. **Bounded-Rationality Constrained** The robots do the obvious kind of speculative execution simulation of various futures and appear to follow the "least harm" ones.
        - Tracks well with Dennett's "multiple drafts" model of consciousness
    10. **Deadlock/livelock potential:** You can get stasis (cf: Buridan's Ass) if 2 policies have equal potential
    11. **Observability Constrained:** The laws operate on observable state
        - Most robots can only operate on what they can sense with eyes/ears
        - When a robot can observe mental state, it expands definition of harm to mental harm
            - Original story Liar where a robot
            - Giskard can operate on sensed mental states of individuals and groups
                - Which is easier
    12. **Ontologically Constrained: **The laws are vulnerable to ontological ambiguity ("you define the first law, I'll decide who counts as human")
        - A hack is to mess with the definition of "human" (eg in Robots of Dawn the Solarian robots define as "human" only those who speak in a Solarian accent)
- Other inspiration sources
    - Sirus Cybernetics Corporation
        - "Real people personalities"
            - Elevator
            - Marvin
    - Culture "Minds"
        - Picks their own name (highly opinionated, strong personality dualist robots)
        - Insensitive to context
        - Has a long history that frames behavior
    - Bender/Futurama robots
    - Terminator
- Best robots
    - 1. Marvin
    - 2. Bender
    - 3. R. Daneel
    - 3. Robocop (Honorable inductee despite being part human)
    - 4. Terminator
    - 5. Sirius cybernetics door
    - 6. Sirius cybernetics pre-cog elevator
    - 7. WALL-E
    - 8. R. Giskard
    - 9. Commander Data
    - 10. Vicki
