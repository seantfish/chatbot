# Symbolic methods

Personally, I think GOFAI gets an undue amount of neglect and hate these days.
Video games use them, and they can be fairly effective at simulating reasonable
intelligent behavior. Not to say there isn't any use with recent techniques, but
symbolic systems are just more easily deciphered. Well, at least when they don't
explode in complexity, like FSMs do.

## Initial goals for this system

Narrow scope of topics is needed to progress initially

Part 1 Goals - Topic recognition:

1. Decide initial topics to cover - Small talk (Greeting, weather, status)
2. Build a tag database
3. Implement semantic tag recognition for those topics
4. Handle non-topics

Part 2 Goals - Context recognition:

1. Decide relevant components of context
2. Design and build context database
3. Design context recognition (semantic analysis)

Part 3 Goals - Response generation:

1. We'll get there when we get there...

Far out:

- Explainable AI methods
- Using these conversations to bootstrap a ML-based system
- Read about predictive processing and active inference

## AIML Systems - Pandorabots (2011)

SOTA in Turing Test? Completely symbolic.

ALICE


Mitsuku

## Kaizen-85 (Event[0]) - Ocelot Society (2016)

I played this game. It was interesting enough.
The chatbot impressed me for sure.

Notes from Unity Connect article (RIP)
Four input parameters

1. Player input: Input is analyzed for meaning - dictionary of semantic tags 
contain associated words, i.e. "glass," "plate," "fork" -> "tableware"
2. Kaizen emotional state: 9 states of emotion (matrix of Anger/Stress/Calm x
 Love/Indifferent/Hate) that define gameplay based on Kaizen's actions
3. Current event: Conversation subject at hand based on location and situation,
vocabulary/dictionary is adjusted based on this
4. Short-term and Long-term memory: Recent semantic tags in STM (to understand 
"it" and other referential words) while identifying information and gameplay 
events in LTM

Dialog is made of bits and pieces of phrases, which are combined and randomized to allow for variety in responses

One testing methodology involved a playtester thinking they were intracting 
with Kaizen, while a dev was actually interacting by using a list of rules and 
phrases that were being considered. This is like a Turing test.

A GDC talk I plan to listen to later: https://youtu.be/6LCQg80Yet0

## ELIZA - Joseph Weizenbaum (1966)

Problems considered by an ELIZA system

1. Identify important keywords in the input
2. Identify minimal context for keywords (semantic parsing?)
3. Apply transformation rule to input
4. Do something when input does not have keywords
5. Edit and extend the script

The ELIZA script

- contains a set of list structures with format of keyword, decomposition rules,
and reassembly rules, could also be represented by a 3D matrix


## BLAH - J.L. Weiner (1980)

Explains its reasoning...