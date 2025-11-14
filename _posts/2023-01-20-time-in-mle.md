---
title: Time in Machine Learning Engineering ⏳
layout: default
excerpt_separator: <!-- excerpt-end -->
---

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.4/dist/katex.min.css" crossorigin="anonymous">

## Time in Machine Learning Engineering ⏳ - A Faux-Calculus Argument

<!-- excerpt-start -->

This article started out as a joke and didn't wander very far in state space. It is a witty and not-so-rigorous attempt to demonstrate the importance of time in ML projects that will annoy most mathematicians and alienate some physicists. There's some truth in it... it's just really hard to find. Enjoy! 😛

📝 Read the full article on [Medium](https://medium.com/@joao.galego/time-in-machine-learning-engineering-a-faux-calculus-argument-90e197bfd17e)

<!-- excerpt-end -->

<div title="Lucy (2014)">
<center>
<img src="https://64.media.tumblr.com/2b5feaa49751740b2d3db53fa76c7de4/56de99839df08a15-ae/s500x750/4c03f53180d11e76555f733db7c69a679a31d59e.gif" width="50%"/>
</center>
</div>

### Time in Software Engineering

There's a saying at Google about software engineering (SWE, for short) that goes something like this (Winters, Manshreck & Wright, 2020):

<center>
<blockquote>
<i>"Software engineering is programming integrated over time."</i>
</blockquote>
</center>

Now, in case you don't know this about me, I love taking things *too* literally and seeing how far I can go - that's just how I roll, with utter disregard for the consequences of my deductions and derivations. Consider yourself warned! ⚠️

We can represent the assertion above in a nice, compact way using a simple formula

$$\texttt{SWE} ~=~ \int \texttt{Programming} ~dt$$

<div title="Software engineering is programming integrated over time">
<center>
<img src="/assets/images/swe_integral.png" width="50%"/>
</center>
</div>

The original quote doesn't specify start and end values for the integration, so we'll leave it [indefinite](https://mathworld.wolfram.com/IndefiniteIntegral.html) for now.

For lack of a better name, I'll call this method of using calculus (or something close to it) to represent catchy slogans and witty remarks "Faux Calculus".

<center>
<figure>
<img src="/assets/images/winston_how_to_speak.png" width="50%"/>
<figcaption>The late Patrick Winston using faux-calculus while delivering his annual talk on 'How to Speak' - an MIT tradition for over 40 years</figcaption>
</figure>
</center>

If there's one key insight we can take from all of this is that SWE is more than just writing code -- it's about maintaining that code *over time*.

In fact, engineering in general is *mostly* about creating things that will stand the test of time. We often use expressions like "future-proof", "long-term" and "reliable" to stress how important it is to build lasting solutions. 

In that sense, engineering can be described as a [functional](https://en.wikipedia.org/wiki/Functional_(mathematics)) (high-order operator, in CS terms) that integrates whatever you're building over time

{% katex display center %}
f \mapsto \texttt{E}[f] = \int f ~dt
{% endkatex %}

Using a [postfix notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation), this can be represented as $$f\texttt{E}$$ - so that $$\texttt{SWE}$$ is really just $$\texttt{E}[\texttt{SW}]$$.

*"Ok"* I hear you say *"These formulas are cool and all"* (if you're a working mathematician, you're probably shouting at the screen and pulling your own hair at this point) *"But why are we making such a big fuss about time? What makes it so important?"*

Well, I'm glad you asked!

In case you haven't noticed, time *changes* everything ⌛ (Just read Percy Bysshe Shelley poem [Ozymandias](https://www.poetryfoundation.org/poems/46565/ozymandias)!)

<center>
<figure>
<img src="/assets/images/ozymandias.webp" width="50%"/>
<figcaption>"My name is Ozymandias, King of Kings; / Look on my Works, ye Mighty, and despair! / Nothing beside remains. Round the decay / Of that colossal Wreck, boundless and bare / The lone and level sands stretch far away."</figcaption>
</figure>
</center>

In the world of SW development, the effects of the passage of time are especially dire:

* Developers come and go
* Programming languages go out of style
* Frameworks go out of date
* Features turn old and obsolete (or worse, irrelevant)
* Code begets legacy code
* Documentation... well, don't get me started on documentation.

<center>
<figure>
<img src="/assets/images/heraclitus.jpg" width="50%"/>
<figcaption>According to platonic lore, the pre-socratic philosopher Heraclitus (AKA the weeping philosopher 😭) was one of the first to propose the idea that change is the only constant in the Universe (Πάντα ῥεῖ).</figcaption>
</figure>
</center>

In this constant flow of change (pun intended), the only solutions that thrive and prosper are the ones that react and adapt to change in a *timely* manner.

The ones that don't, the ones that choose the easy way, the "road most traveled", start to accrue debt… of the [technical](http://wiki.c2.com/?WardExplainsDebtMetaphor) kind.

Don't you just love a good economical metaphor, dear reader? 📈

Unlike the Graeberian notion of debt as a *"perversion of a promise"* (Graeber, 2011), technical debt is non-negotiable. If a project intends to keep the proverbial lights on, it needs to be repaid... in full (\*). This entails keeping up with all the "promises" made by the PM to the stakeholders when writing the [project charter](https://www.projectmanager.com/blog/project-charter) and by the SW engineers when documenting their code.

(\*) There's also the vaguely keynesian "keep throwing spaghetti at the wall until it sticks" approach - as long as the headcount is [strictly increasing](https://mathworld.wolfram.com/StrictlyIncreasingFunction.html) and the technical debt *per capita* is [decreasing](https://mathworld.wolfram.com/DecreasingFunction.html), we should be fine. [The Mythical Man-Month](https://en.wikipedia.org/wiki/Brooks%27s_law) crew probably wouldn't agree with this. But, to be honest, when it comes to finding economical solutions to technical debt, [there are probably goats behind every door](https://www.youtube.com/watch?v=4Lb-6rxZxx0) 🚪 $$\rightarrow$$ 🐐.

<center>
<figure>
<img src="/assets/images/dilbert_spaghetti.png" width="50%"/>
<figcaption>Dilbert on the old 'keep throwing spaghetti at the wall until it sticks' approach</figcaption>
</figure>
</center>

### Time in Machine Learning Engineering

It probably won't come as a surprise that ML projects are also prone to technical debt.

However, and therein lies the big difference to *vanilla* SW projects: much like [cultural onions](https://www.hyperkulturell.de/cultural-onion/) 🧅 and [icebergs](https://www.peacecorps.gov/educators/resources/culture-iceberg/) 🧊 or the [dark sector of our Universe](https://science.nasa.gov/astrophysics/focus-areas/what-is-dark-energy) 🌌, most of this debt is just lurking behind the scenes, virtually invisible to uninitiated and untrained eyes.

In a paper presented at NeurIPS, provocatively titled "Hidden Technical Debt in Machine Learning Systems" (AKA "Machine Learning: The High Interest Credit Card of Technical Debt" 💳), Sculley *et al.* (2015) argued that there are no "quick wins" in real-world ML systems and that nothing ever comes for "free".

Their simple representation of a ML system as a disjoint set of "boxes" is probably one of the most iconic and used images in the whole ML Operations (MLOps) literature. And for good reasons.

<center>
<figure>
<img src="/assets/images/sculley_hidden_technical_debt.png" width="50%"/>
<figcaption>Real-world ML systems are more than just ML code (Sculley <i>et al.</i>, 2015)</figcaption>
</figure>
</center>

It illustrates two very important yet often dismissed facts about real-world ML: 

1/ How complex ML development can be and 

2/ How small the "cool stuff" (ML code) is compared to everything else AKA "plumbing" (data, infrastructure, &c.).

Failing to acknowledge either 1 or 2 and their consequences will lead any promising ML endeavor to spiral out of control and crash. According to a [recent Gartner report](https://www.gartner.com/en/newsroom/press-releases/2022-08-22-gartner-survey-reveals-80-percent-of-executives-think-automation-can-be-applied-to-any-business-decision), around 90% of all AI and ML projects fail to deliver (!), and only half of them ever make it to production (!!!).

**Can we reverse this tendency? Something needs to change... but what?**

In the remainder of this article, I'll argue, using the same faux-calculus reasoning we applied to SWE, that ML practitioners everywhere should handle time more carefully, and explore what that means for Machine Learning Engineering (MLE).

Let's start with the basics...

Nowadays, when delivering an ML 101 presentation, it has become standard practice to include a slide comparing traditional programming and ML, with strong claims about how much of a 'paradigm shift' it is to go from one to the other (Thomas Kuhn is probably rolling in his grave 🪦).

This often translates to something along the lines of

<center>
<figure>
<img src="/assets/images/ml_vs_traditional_programming.png" width="50%"/>
<figcaption>ML vs Traditional Programming (source: <a href="https://www.oreilly.com/library/view/deep-learning-with/9781788624336/a7a045c6-b0e2-437c-892d-1e61c11446bf.xhtml">O'Reilly</a>)</figcaption>
</figure>
</center>

or, focusing only on the ML portion

<center>
<figure>
<img src="/assets/images/ml_code_plus_data.png" width="50%"/>
<figcaption>ML = Code + Data (source: <a href="https://builtin.com/machine-learning/mlops">BuiltIn</a>)</figcaption>
</figure>
</center>

These are often abbreviated as

{% katex display center %}
\texttt{ML} ~=~ \texttt{Code} + \texttt{Data}
{% endkatex %}

For most ML applications, however, this picture is *too* simplistic.

A better alternative, put forward in Martin Fowler's [Continuous Delivery for ML (CD4ML)](https://martinfowler.com/articles/cd4ml.html) article, involves the notion of **3 axis of change**

<center>
<figure>
<img src="/assets/images/ml_axis_of_change.png" width="50%"/>
<figcaption>Martin Fowler's 3 axis of change - Data, Model and Code</figcaption>
</figure>
</center>

which can be summarized as

{% katex display center %}
\texttt{ML} ~=~ \texttt{Code} + \texttt{Data} + \texttt{Model}
{% endkatex %}

You probably see where I'm going with this, right?

Let's apply the engineering ($$\texttt{E}$$) operator to our new definition

{% katex display center %}
\texttt{MLE} ~=~ \int \texttt{Code} + \texttt{Data} + \texttt{Model} ~dt
{% endkatex %}

We can translate this into something more readable

<center>
<blockquote>
<i>MLE is just a bunch of stuff summed up together, integrated over time</i>
</blockquote>
</center>

Sounds ominous, doesn't it? Too bad it's dead wrong!

As any freshman calculus student knows (integration-wise, that's probably the only thing most of them know by the time they graduate), the [sum rule of Integration](https://www.mathdoubts.com/integral-sum-rule/) tells us that

<center>
<blockquote>
<i>The integral of the sum is the sum of the integrals</i>
</blockquote>
</center>

<center>
<figure>
<img src="/assets/images/xkcd_differentiation_and_integration.png" width="50%"/>
<figcaption>Differentiation vs Integration (source: <a href="https://xkcd.com/2117/">xkcd</a>)</figcaption>
</figure>
</center>

So, in simple terms, our formula is just telling us that

{% katex display center %}
\texttt{MLE} ~=~ \int \texttt{Code} ~dt + \int \texttt{Data} ~dt + \int \texttt{Model} ~dt
{% endkatex %}

If we equate $$\texttt{Code}$$ with $$\texttt{Programming}$$ (which is debatable to be sure, but let's keep with it for now), then we're basically saying that

<center>
<blockquote>
<i>MLE is just good old SWE, data engineering and something we don't yet know what to call or how to handle, summed up together</i>
</blockquote>
</center>

which is a gross oversimplification.

By the way, just in case you're wondering about this, I'm assuming that every term in that integral has an explicit time dependence. 

Schematically, this can be represented as

{% katex display center %}
\texttt{Data} ~=~ \texttt{Data}(t)
{% endkatex %}

{% katex display center %}
\texttt{Model} ~=~ \texttt{Model}(t)
{% endkatex %}

{% katex display center %}
\texttt{Code} ~=~ \texttt{Code}(t)
{% endkatex %}

If this were not the case, then each one of these "terms", at least w. r. t. time, would be a trivial matter to solve.

So what's wrong with this line of reasoning? And how, if at all, can we fix it?

There are two main issues with our initial approach.

The first is that the definitions above don't really take into account the close dependencies between the 3 axis of change.

<center>
<figure>
<img src="/assets/images/ml_axis_of_change_dependencies.png" width="30%"/>
<figcaption>Interdependencies between the 3 axis of change</figcaption>
</figure>
</center>

$$\texttt{Model}$$ relies heavily on the quality of the $$\texttt{Data}$$ used for training, validation and testing - the old *"Garbage In, Garbage Out"* (GIGO) dictum.

On the other hand, $$\texttt{Code}$$ needs to adapt both to the $$\texttt{Model}$$ used for inference and the $$\texttt{Data}$$ that is fed into it.

In faux calculus, we can easily represent these relations by adding a few arguments

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

Making copious use of the [chain rule](https://en.wikipedia.org/wiki/Chain_rule), we can start asking some deep questions about *any* ML system:

1/ How does the $$\texttt{Data}$$ change over time?

{% katex display center %}
\frac{d~\texttt{Data}}{d t}
{% endkatex %}

And, if you're feeling fanciful, if $$(X, y)$$ is a dataset containing input variables $$X$$ and target values $$y$$, how can we distinguish data drift ($$X$$ changes) from concept drift ($$X \rightarrow y$$ changes) within the faux calculus framework (Quiñonero-Candela *et al.*, 2009)?

2/ Is there an effective way to deal with $$\texttt{Model}$$ drift?

{% katex display center %}
\frac{d~\texttt{Model}}{d t} = \frac{\partial~\texttt{Model}}{\partial~\texttt{Data}} \frac{d~\texttt{Data}}{d t} + \frac{\partial~\texttt{Model}}{\partial t}
{% endkatex %}

3/ Can $$\texttt{Code}$$ be decoupled from $$\texttt{Model}$$ changes?

{% katex display center %}
\frac{d~\texttt{Code}}{d t} = \frac{\partial~\texttt{Code}}{\partial~\texttt{Data}} \frac{d~\texttt{Data}}{d t} + \cancel{\frac{\partial~\texttt{Code}}{\partial~\texttt{Model}}} \frac{d~\texttt{Model}}{d t} + \frac{\partial~\texttt{Code}}{\partial t}
{% endkatex %}

Finally, there's the (erroneous) assumption that we can just *sum everything up* and call it a day.

As any ML engineer will tell you, reality is probably closer to something like this

{% katex display center %}
\texttt{MLE} ~=~ \int^{EOL}_{idea} L(\texttt{Data}, \texttt{Model}, \texttt{Code}, \texttt{Data}', \texttt{Model}', \texttt{Code}', t) ~dt
{% endkatex %}

where the prime (') represents a derivative w.r.t. time and $$EOL$$ (end-of-life) indicates the inevitable demise of the ML system - hopefully, at a point far into the future.

Using Winstonian notation, we can easily produce a [data-centric](https://www.youtube.com/watch?v=06-AZXmwHjo) version - why is it or is it not true that [we spend most of our time in or around data?](https://www.forbes.com/sites/gilpress/2016/03/23/data-preparation-most-time-consuming-least-enjoyable-data-science-task-survey-says/?sh=49cc65ec6f63)

{% katex display center %}
\texttt{MLE} ~=~ \int^{EOL}_{idea} L({\huge\texttt{Data}}, {\tiny\texttt{Model}}, \texttt{Code}, {\huge\texttt{Data}'}, {\tiny\texttt{Model}'}, \texttt{Code}', t) ~dt
{% endkatex %}

<center>
<figure>
<img src="/assets/images/data_pareto.jpg" width="75%"/>
<figcaption>If you’re seeing 80/20 patterns everywhere, you may be suffering from <b>Paretolia</b> - a pareidolic tendency to see instances of Pareto’s principle where there are none  -  please consult your physician for personalized medical advice ⚕️ (source: <a href="https://medium.com/@joao.galego/time-in-machine-learning-engineering-a-faux-calculus-argument-90e197bfd17e">Forbes</a>)</figcaption>
</figure>
</center>

The $$L$$ function is mostly problem- and system-dependent, and it's actual form is usually unknown - sometimes even unknowable.

The takeaway message, if there's one, is that the *dynamics* of applying engineering principles to ML systems of any kind is something really tricky (Paleyes, Urma & Lawrence, 2020), not to be trifled with.

Mind you, some problems do have solutions (Lakshmanan, Robinson & Munn, 2021), but those only cover edge cases and require reading a bunch of [O RLY books](https://dev.to/rly).

<center>
<figure>
<img src="/assets/images/burkov_mle_lifecycle.png" width="75%"/>
<figcaption>An example of an MLE lifecycle (Burkov, 2020)</figcaption>
</figure>
</center>

If you're a physics nerd like me, you probably noticed that I called that function [$$L$$](https://en.wikipedia.org/wiki/Lagrangian_mechanics) ([*nudge *nudge *wink *wink](https://www.youtube.com/watch?v=STTL-jOrnDQ)).

Without getting into [variational calculus](https://en.wikipedia.org/wiki/Calculus_of_variations) (which is probably well beyond the scope of this essay) or defining exactly what $$L$$ is (pssst, it involves the kinetic and potential energies of the ML system, whatever those are), then there seems to be a link between the [Principle of Stationary Action](https://www.damtp.cam.ac.uk/user/nsm10/PrincLeaAc.pdf)

{% katex display center %}
\delta S = 0
{% endkatex %}

<center>
<figure>
<img src="/assets/images/feynman_action_principle.jpg" width="75%"/>
<figcaption>Feynman lecturing on the principle of least action (source: <a href="https://www.feynmanlectures.caltech.edu/II_19.html">Caltech</a>)</figcaption>
</figure>
</center>

which states that, in some sense, nature *always* finds an "optimal way", and $$\texttt{MLE}$$

{% katex display center %}
\delta~\texttt{MLE} = 0
{% endkatex %}

This connection is probably deep and insightful, but since I'm not really sure what to make of it (yet!), this is probably a good place to stop.

As Wittgenstein famously wrote in his *[Tractatus Logico-Philosophicus](https://www.gutenberg.org/ebooks/5740)* (1921):

<center>
<blockquote>
<i>"Wovon man nicht sprechen kann, darüber muss man schweigen"</i><br>
(Whereof one cannot speak, thereof one must be silent)
</blockquote>
</center>

**To be continued... or not (whatever)**

<div title="Mind blown!!!">
<center>
<img src="/assets/images/mind_blown_explosion.gif" width="50%"/>
</center>
</div>

### References

#### Links

* (Builtin) [MLOps: Machine Learning as an Engineering Discipline](https://builtin.com/machine-learning/mlops)
* (ChristopherGS) [Monitoring Machine Learning Models in Production](https://christophergs.com/machine%20learning/2020/03/14/how-to-monitor-machine-learning-models/)
* (DeepLearning.AI) [A Chat with Andrew on MLOps: From Model-centric to Data-centric AI](https://www.youtube.com/watch?v=06-AZXmwHjo)
* (Forbes) [Cleaning Big Data: Most Time-Consuming, Least Enjoyable Data Science Task, Survey Says](https://www.forbes.com/sites/gilpress/2016/03/23/data-preparation-most-time-consuming-least-enjoyable-data-science-task-survey-says/?sh=6590f0fa6f63)
* (Gartner) [Gartner Survey Reveals 80% of Executives Think Automation Can Be Applied to Any Business Decision](https://www.gartner.com/en/newsroom/press-releases/2022-08-22-gartner-survey-reveals-80-percent-of-executives-think-automation-can-be-applied-to-any-business-decision)
* (InfoWorld) [Why AI investments fail to deliver](https://www.infoworld.com/article/3639028/why-ai-investments-fail-to-deliver.html)
* (MartinFowler) [Continuous Delivery for Machine Learning](https://martinfowler.com/articles/cd4ml.html)
* (Medium) [Andrej Karpathy on Software 2.0](https://karpathy.medium.com/software-2-0-a64152b37c35)
* (Towards Data Science) [Machine Learning in Production: why you should care about data and concept drift](https://towardsdatascience.com/machine-learning-in-production-why-you-should-care-about-data-and-concept-drift-d96d0bc907fb)
* (VentureBeat) [Why do 87% of data science projects never make it into production?](https://venturebeat.com/ai/why-do-87-of-data-science-projects-never-make-it-into-production/)

#### Articles

* (Paleyes, Urma & Lawrence, 2020) [Challenges in deploying machine learning: a survey of case studies](https://arxiv.org/abs/2011.09926)
* (Sculley *et al.*, 2015) [Hidden technical debt in machine learning systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)

#### Books

* (Burkov, 2020) [Machine Learning Engineering](http://www.mlebook.com/wiki/doku.php)
* (Graeber, 2011) [Debt: The First 5000 Years](https://www.amazon.com/Debt-First-5-000-Years/dp/1612191290)
* (Lakshmanan, Robinson & Munn, 2021) [Machine Learning Design Patterns: Solutions to Common Challenges in Data Preparation, Model Building, and MLOps](https://www.oreilly.com/library/view/machine-learning-design/9781098115777/)
* (Quiñonero-Candela *et al.*, 2009) [Dataset Shift in Machine Learning](https://mitpress.mit.edu/9780262545877/dataset-shift-in-machine-learning/)
* (Winters, Manshreck & Wright, 2020) [Software Engineering at Google: Lessons Learned from Programming Over Time](https://abseil.io/resources/swe-book)