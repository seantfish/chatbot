# Symbolic methods

Personally, I think GOFAI gets an undue amount of neglect and hate these days.
Video games use them, and they can be fairly effective at simulating reasonable
intelligent behavior. Not to say there isn't any use with recent techniques, but
symbolic systems are just more easily deciphered. Well, at least when they don't
explode in complexity, like FSMs do.

Additionally, humans do use symbols, is it so wrong to think that we can use
neural and symbolic methods together? Neuro-symbolic if you will?

At the end of the day, I don't want a machine pretending to be human. 
A degree of relatability will suffice.

## Current goals

First, implement a rule-based chatbot script interpreter in Julia.
This allows for extending software with ML and NN techniques without the
2 language problem.
Wait actually look into ChatScript. AIML seems needlessly complicated in some
areas and might be inferior.
Possibly extend it later.

Might try some case based reasoning later if I can think of a use case.
I kind of want to build a game-playing program that integrates with this.


Far out:

- Explainable AI methods
- Causal inference stuff but I need to learn more stats first
- Using these conversations to bootstrap a ML-based system

Here's a random thought: The Turing Test, but the AI is guessing if you're
really who you say you are.

## Infocom parser

http://ifwiki.org/index.php/Infocom-type_parser

http://thomaswc.com/serious/ifzorkcould.html

## ChatScript

https://github.com/ChatScript/ChatScript


## AIML Systems - Pandorabots (2011)
Paper describing AIML here: https://arxiv.org/pdf/1307.3091.pdf

Intro

- based on pattern recognition / matching techniques
- relies on a stimulus-response pattern
- ELIZA chatbot - first generation chatbot
- JULIA chatbot (Mauldin 1994) - no relation to language - 2nd gen chatbot
- ALICE chatbot - forerunner of 3rd gen chatbots

Syntax

- AIML is an interpreted language
- Important tags: category, pattern, template
    - category: unit of knowledge/dialogue in the knowledge base
    - pattern: possible user input
    - template: response format
- "*" and "_" represent wildcards for replacing strings, with "_" taking higher
priority
- aiml tag sandwiches the file
- category tag consists of user input, response, and optional context
- pattern tag consists of possible user input
    - I wonder if Kaizen rearranges in preprocessing to fit patterns
- template tag consists of possible answers, can save data,
activate other programs, it does the heavy lifting
- star index tag represents a text fragment in the pattern
- srai tag does symbolic reduction, allowing for targeting/redirecting
different pattern models for one template, allowing for efficiency
    - makes you wonder how search engines parse user input
- srai tag allows for synonyms as well
- random and li tags allow for random selection of responses
- set and get allows for variables
- that tag prompts analysis of last response by chatbot to contextualize user
response to chatbot
- topic tag defines a narrow scope for conversation, reducing pattern search
- think tag for behind the scenes data processing
- condition tag for when choosing from multiple possible answers, like case in
other languages
- bot tag to define bot properties

Interpreter
1. capture source code line
2. check and analyze the line syntactically and semantically
3. if no errors, translate to binary

ProgramD is an open source AIML program: https://github.com/noelbush-xx/programd


SOTA in Turing Test? Completely symbolic.

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

Dialog is made of bits and pieces of phrases, which are combined and randomized 
to allow for variety in responses

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

Explainable AI

- BLAH is comprised of a knowledge base, feeding a reasoning component, which
works in tandem with an explanation generator
- Reasoning component written in AMORD, which uses production rules consisting
of a pattern and a body, where body is run when currently believed assertion
matches pattern
- Knowledge base is segmented between system and user view, each containing
respective known assertions and rules
- Also segmented into partitions based on subject, allowing substitution of
nouns if they are effectively synonymous
- Also segmented into worlds with different initial premises,
allowing hypothetical reasoning
- Explanations use logical graphs

AMORD is a deductive procedure system.