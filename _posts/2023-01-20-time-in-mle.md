---
title: Time in Machine Learning Engineering ⏳
layout: default
excerpt_separator: <!-- excerpt-end -->
---

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.4/dist/katex.min.css" crossorigin="anonymous">

## Time in Machine Learning Engineering ⏳ - A Faux-Calculus Argument

<!-- excerpt-start -->

A witty and not-so-rigorous attempt to demonstrate the often-overlooked importance of time in ML projects that will annoy most mathematicians and alienate some physicists!

<!-- excerpt-end -->

<div title="Lucy (2014)">
<center>
<img src="https://64.media.tumblr.com/2b5feaa49751740b2d3db53fa76c7de4/56de99839df08a15-ae/s500x750/4c03f53180d11e76555f733db7c69a679a31d59e.gif">
</center>
</div>

### Time in Software Engineering

There's a saying at Google (Winters *et al.*, 2020) that Software Engineering or SWE for short is just

<center>
<blockquote>
<i>"programming integrated over time"</i>
</blockquote>
</center>

Now, I love taking things *too* literally and seeing how far I can go. That's just how I roll, with utter disregard for the consequences of my deductions.

Having said that, we can represent the assertion above using a very simple formula

$$\texttt{SWE} ~=~ \int \texttt{Programming} ~dt$$

For lack of a better name, I'll call this method of using calculus (or something close to it) to represent catchy slogans and witty remarks "Faux Calculus".

<div title="The late Patrick Winston using faux-calculus while delivering his annual talk on 'How to Speak' - an MIT tradition for over 40 years">
<center>
<img src="/assets/images/winston_how_to_speak.png" width="50%"/>
</center>
</div>

Getting back to the main argument, if there's one key insight we can take from this is that SWE is more than just writing code -- it's about maintaining that code *over time*.

In fact, engineering in general is *mostly* about creating things that will stand the test of time. And we often use expressions like "future-proof", "long-term" and "reliable" to stress how important it is to build lasting solutions and tools. 

In that sense, engineering can be described as a [functional](https://en.wikipedia.org/wiki/Functional_(mathematics)) (high-order operator in CS terms) involving a time integral

{% katex display center %}
f \mapsto \texttt{E}[f] = \int f ~dt
{% endkatex %}

which we can represent as $$f\texttt{E}$$ using a [postfix notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation), so that $$\texttt{SWE}$$ is really just $$\texttt{E}[\texttt{SW}]$$.

*"Ok"* I hear you say *"These formulas are cool and all"* (if you're a working mathematician, you're probably shouting at the screen and pulling your own hair at this point) *"But why are we making such a big fuss about time? What makes it so important?"*

Well, I'm glad you asked!

In case you haven't noticed, time *changes* everything ⌛ Just read Percy Bysshe Shelley poem [Ozymandias](https://www.poetryfoundation.org/poems/46565/ozymandias)!

<div title="'My name is Ozymandias, King of Kings; / Look on my Works, ye Mighty, and despair! / Nothing beside remains. Round the decay / Of that colossal Wreck, boundless and bare / The lone and level sands stretch far away.'">
<center>
<img src="/assets/images/ozymandias.webp" width="50%"/>
</center>
</div>

In the world of SW development, the effects of the passage of time are especially dire:

* Developers come and go
* Programming languages go out of style
* Frameworks go out of date
* Features turn old and obsolete (or worse, irrelevant)
* Code begets legacy code
* Documentation... well, don't get me started on documentation.

In the midst of all this chaos, the only solutions that thrive and prosper are the ones that react and adapt to change in a *timely* manner.

The ones that don't, the ones that choose the easy way, the "road most travelled", start to accrue debt… of the [technical](http://wiki.c2.com/?WardExplainsDebtMetaphor) kind.

Don't you just love a good economical metaphor, dear reader?

Unlike the Graeberian notion of debt as a *"preversion of a promise"* (Graeber, 2011), technical debt is non-negotiable and it needs to be repaid in full if a project intends to keep the lights on. This entails keeping up with all the "promises" made by the PM to the stakeholders when writing the [project charter](https://www.projectmanager.com/blog/project-charter) and by the SW engineers when documenting their code.

<div title="According to platonic lore, the pre-socratic philosopher Heraclitus (AKA the weeping philosopher 😭) was one of the first to propose the idea that change is the only constant in the Universe (Πάντα ῥεῖ).">
<center>
<img src="/assets/images/heraclitus.jpg" width="50%"/>
</center>
</div>

### Time in Machine Learning Engineering

Technical debt is also lurking behind any ML project.

In a paper presented at NeurIPS and provocatively titled, "Hidden Technical Debt in Machine Learning Systems", Sculley *et al.* (2015) argued that there are no "quick wins" in real-world ML systems and that nothing ever comes for "free".

Their simple representation of a ML system as a disjoint set of "boxes" is probably one of the most used images in the whole MLE and MLOps literature. And for good reasons.

<div title="Real-world ML systems are more than just ML code (Sculley et al., 2015)">
<center>
<img src="/assets/images/sculley_hidden_technical_debt.png" width="50%"/>
</center>
</div>

It illustrates two very important facts about real-world ML: 1/ how complex ML development really is and 2/ how small the "cool stuff" (ML code) is compared to everything else AKA "plumbing" (data, infrastructure, &c.).

Failing to acknowledge either 1 or 2 (and its consequences) will lead any promising ML endeavour to spiral out of control and crash. According to a [recent Gartner report](https://www.gartner.com/en/newsroom/press-releases/2022-08-22-gartner-survey-reveals-80-percent-of-executives-think-automation-can-be-applied-to-any-business-decision), around 90% of all AI and ML projects fail to deliver, and only half of them make it to production.

Can we invert this tendency? Something needs to change... but what?

In the remainder of this article, I'll argue, using the same faux-calculus reasoning we applied to SWE, that ML practitioners everywhere should handle time more carefully, and explore what that means for Machine Learning Engineering (MLE).

Let's start with the basics...

Nowadays, when delivering an 'Intro to ML' (ML101) presentation, it has become standard practice to include a slide comparing traditional programming and ML, and stating just how much of a 'paradigm shift' it is to go from one to the other (Thomas Kuhn is probably rolling in his grave 🪦). 

Something along the lines of

<div title="ML vs Traditional Programming">
<center>
<img src="/assets/images/ml_vs_traditional_programming.png" width="50%"/>
</center>
</div>

or, focusing only on the ML side of the spectrum

<div title="ML = Code + Data">
<center>
<img src="/assets/images/ml_code_plus_data.png" width="50%"/>
</center>
</div>

These are often abbreviated as

{% katex display center %}
\texttt{ML} ~=~ \texttt{Code} + \texttt{Data}
{% endkatex %}

For most ML applications, however, this picture is *too* simplistic.

A better alternative involves the notion of **3 axis of change** first put forward in [Martin Fowler's Continuous Delivery for ML (CD4ML)](https://martinfowler.com/articles/cd4ml.html) article

<div title="Martin Fowler's 3 axis of change - Data, Model and Code">
<center>
<img src="/assets/images/ml_axis_of_change.png" width="50%"/>
</center>
</div>

which can be summarized as

{% katex display center %}
\texttt{ML} ~=~ \texttt{Code} + \texttt{Data} + \texttt{Model}
{% endkatex %}

You probably see where I'm going with this, right?

Let's apply the engineering ($$\texttt{E}$$) operator we defined above to our new definition

{% katex display center %}
\texttt{MLE} ~=~ \int \texttt{Code} + \texttt{Data} + \texttt{Model} ~dt
{% endkatex %}

We can translate this into something more readable

<center>
<blockquote>
<i>MLE is just a bunch of stuff summed up together, integrated over time</i>
</blockquote>
</center>

Sounds ominous, doesn't it? 

Too bad it's dead wrong!

As any freshman calculus student knows (and, integration-wise, that's probably the only thing most of them know by the time they graduate), the [sum rule of Integration](https://www.mathdoubts.com/integral-sum-rule/) tells us that

<center>
<blockquote>
<i>The integral of the sum is the sum of the integrals</i>
</blockquote>
</center>

<div title="xkcd - Differentiation vs Integration">
<center>
<img src="/assets/images/xkcd_differentiation_and_integration.png" width="50%"/>
</center>
</div>

So, what our formula is telling us is that

{% katex display center %}
\texttt{MLE} ~=~ \int \texttt{Code} ~dt + \int \texttt{Data} ~dt + \int \texttt{Model} ~dt
{% endkatex %}

If we equate $$\texttt{Code}$$ with $$\texttt{Programming}$$ (which is debatable to be sure, but let's keep with it for now), then we're basically saying that

<center>
<blockquote>
<i>MLE is just good old SWE, data engineering and something we don't yet know what to call or how to handle, summed up together</i>
</blockquote>
</center>

which is a gross oversimplification... and a flat out lie.

By the way, just in case you're wondering about this, I'm assuming that every term in that integral has an explicit time dependence. Schematically, this can be represented as

{% katex display center %}
\texttt{Data} ~=~ \texttt{Data}(t)
{% endkatex %}

{% katex display center %}
\texttt{Model} ~=~ \texttt{Model}(t)
{% endkatex %}

{% katex display center %}
\texttt{Code} ~=~ \texttt{Code}(t)
{% endkatex %}

If this were not the case, then each one of these "terms", at least with respect to time, would be a trivial matter to solve.

So what's wrong with this line of reasoning? And how, if at all, can we fix it?

There are two main issues with our initial approach: one is foundational, the other one is holistic.

The first problem is that the definitions given above don't take into account the close dependencies between the 3 axis of change.

<div title="Interdependencies between the 3 axis of change">
<center>
<img src="/assets/images/ml_axis_of_change_dependencies.png" width="30%"/>
</center>
</div>

$$\texttt{Model}$$ relies heavily on the quality of the $$\texttt{Data}$$ used for training, validation and testing - the old *"Garbage In, Garbage Out"* (GIGO) dictum. On the other hand, $$\texttt{Code}$$ adapts both to the $$\texttt{Model}$$ used for inference and the $$\texttt{Data}$$ that we feed into it. 

{% katex display center %}
\texttt{Data} ~=~ \texttt{Data}(t)
{% endkatex %}

{% katex display center %}
\texttt{Model} ~=~ \texttt{Model}(\texttt{Data}, t)
{% endkatex %}

{% katex display center %}
\texttt{Code} ~=~ \texttt{Code}(\texttt{Data}, \texttt{Model}, t)
{% endkatex %}

The question of whether $$\texttt{Model}$$ depends *explicitly* on time is a matter of philosophical debate.

Using the [Chain rule](https://en.wikipedia.org/wiki/Chain_rule) we can start asking some deep questions about any ML system:

1/ How is the $$\texttt{Data}$$ changing over time?

{% katex display center %}
\frac{d~\texttt{Data}}{d t}
{% endkatex %}

**Food for thought:** Can we distinguish data drift ($$X$$ changes) from concept drift ($$X \rightarrow y$$ changes) within this framework?

2/ What is the best way to deal with $$\texttt{Model}$$ drift?

{% katex display center %}
\frac{d~\texttt{Model}}{d t} = \frac{\partial~\texttt{Model}}{\partial~\texttt{Data}} \frac{d~\texttt{Data}}{d t} + \frac{\partial~\texttt{Model}}{\partial t}
{% endkatex %}

3/ Can $$\texttt{Code}$$ be decoupled from $$\texttt{Model}$$ changes?

{% katex display center %}
\frac{d~\texttt{Code}}{d t} = \frac{\partial~\texttt{Code}}{\partial~\texttt{Data}} \frac{d~\texttt{Data}}{d t} + \cancel{\frac{\partial~\texttt{Code}}{\partial~\texttt{Model}}} \frac{d~\texttt{Model}}{d t} + \frac{\partial~\texttt{Code}}{\partial t}
{% endkatex %}

Finally, there's the (erroneous) assumption that we can just *sum everything up* and call it a day.

Reality is probably closer to something closer to this

{% katex display center %}
\texttt{MLE} ~=~ \int^{EOL}_{idea} L(\texttt{Data}, \texttt{Model}, \texttt{Code}, \texttt{Data}', \texttt{Model}', \texttt{Code}', t) ~dt
{% endkatex %}

where the prime (') represents a derivative w.r.t. time ($$t$$) and EOL (end-of-life) indicates the inevitable demise of the ML system, hopefully at a point far into the future.

The actual form of $$L$$ is usually unknown, most likely problem-dependent.

The takeaway message is that the *dynamics* of MLE is something really tricky, not to be triffled with.

<div title="Burkov's MLE lifecycle">
<center>
<img src="/assets/images/burkov_mle_lifecycle.png" width="75%"/>
</center>
</div>

If you're a physics nerd like me, you probably noticed that I called that function [$$L$$](https://en.wikipedia.org/wiki/Lagrangian_mechanics) (*wink *wink *nudge *nudge). 

Without getting into [variational calculus](https://en.wikipedia.org/wiki/Calculus_of_variations), a clear analogy can be made between $$\texttt{MLE}$$ and the [principle of stationary action](https://en.wikipedia.org/wiki/Stationary-action_principle)

{% katex display center %}
\delta~\texttt{MLE} = 0
{% endkatex %}

I'm just not sure what to make of it yet!

**To be continued...**

<div title="Mind blown!!!">
<center>
<img src="/assets/images/mind_blown_explosion.gif" width="50%"/>
</center>
</div>

### References

#### Links

* (Builtin) [MLOps: Machine Learning as an Engineering Discipline](https://builtin.com/machine-learning/mlops)
* (Gartner) [Gartner Survey Reveals 80% of Executives Think Automation Can Be Applied to Any Business Decision](https://www.gartner.com/en/newsroom/press-releases/2022-08-22-gartner-survey-reveals-80-percent-of-executives-think-automation-can-be-applied-to-any-business-decision)
* (InfoWorld) [Why AI investments fail to deliver](https://www.infoworld.com/article/3639028/why-ai-investments-fail-to-deliver.html)
* (MartinFowler) [Continuous Delivery for Machine Learning](https://martinfowler.com/articles/cd4ml.html)
* (VentureBeat) [Why do 87% of data science projects never make it into production?](https://venturebeat.com/ai/why-do-87-of-data-science-projects-never-make-it-into-production/)

#### Articles

* (Paleyes, Urma & Lawrence, 2020) [Challenges in deploying machine learning: a survey of case studies](https://arxiv.org/abs/2011.09926)
* (Sculley *et al.*, 2015) [Hidden technical debt in machine learning systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)

#### Books

* (Burkov, 2020) [Machine Learning Engineering](http://www.mlebook.com/wiki/doku.php)
* (Lakshmanan, Robinson & Munn, 2021) [Machine Learning Design Patterns: Solutions to Common Challenges in Data Preparation, Model Building, and MLOps](https://www.oreilly.com/library/view/machine-learning-design/9781098115777/)
* (Graeber, 2011) [Debt: The First 5000 Years](https://www.amazon.com/Debt-First-5-000-Years/dp/1612191290)
* (Quiñonero-Candela *et al.*, 2009) [Dataset Shift in Machine Learning](https://mitpress.mit.edu/9780262545877/dataset-shift-in-machine-learning/)
* (Winters, Manshreck & Wright, 2020) [Software Engineering at Google: Lessons Learned from Programming Over Time](https://abseil.io/resources/swe-book)