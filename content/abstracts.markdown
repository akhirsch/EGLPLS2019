---
title: Talk Abstracts
---
## Categories for Higher-Dimensional Parametricity, Kristina Sojakova

### Abstract

We introduce a generalization of cubical sets, which we call cubical categories, and use it to develop a framework for higher-dimensional parametricity, all the way up to and including infinity. 
Our framework has the crucial property that if a model is p-parametric according to our definition, then it is l-parametric for every l < p, which is a significant generalization of existing definitions of parametricity. 
We illustrate our framework by giving a corresponding p-parametric model for System F when p <= 3.

## TBD, Bob Harper

## Adaptivity Depth Analysis in Adaptive Data Analysis, Jiawen Liu

### Abstract

An adaptive data analysis is based on multiple queries over a data set, in which some queries rely on the results of some other queries. 
The error of each query is usually controllable and bound independently, but the error can propagate through the chain of different queries and bring to low generalization error. 
To address this issue, data analysts are adopting different mechanisms in their algorithms, such as Gaussian mechanism, etc. 
To utilize these mechanisms in the best way one needs to understand the depth of chain of queries that one can generate in a data analyses. 
In this work, we define a programming language which can provide, through its type system, an upper bound on the adaptivity  depth (the length of the longest chain of queries) of a program implementing an adaptive data analysis. 
We show how these language can help to analyze the generalization error of two data analyses with different adaptivity structure.

## Formalizing Programming Languages using the coq Proof Assistant, Nathaniel Zogby

### Abstract

The coq proof assistant is an effective tool for formally verifying the correctness of programming languages. 
Our research focuses on formalizing PICCO, a system designed to convert a program written in an extension of C into its secure distributed implementation to be run in a distributed environment. 
It allows programs to label data either public or private using an annotated grammar which is then transformed into a new program using a translated grammar that can be compiled by computation parties into executables. 
We are using coq to model these two languages along with a function to model the rules by which an input program is translated. 
Using coq’s built in proof capabilities, our goal is to formally prove the soundness of the translation using the reliability of the coq proof assistant.

## A Unified Language Abstraction for Versatile, Structured Control Flow, Yizhou Zhang

### Abstract

It is currently in vogue for programming languages to acquire support for promises, async–await, and coroutines. 
These built-in language features allow programmers to organize asynchronous, event-driven code in a more structured way than is possible with just callback functions. 
However, despite this recent trend in language design, it remains challenging to program control-flow-rich applications: the type systems prevent the programmer from expressing interesting control-flow patterns, and do not enforce enough static checking to help the programmer reason about the complex control flow.
We present a new language design that addresses these challenges. 
Through a novel generalization of algebraic-effect handlers to allow bidirectional effect propagation, the new design offers a unified approach to expressing versatile control flow in a both type-safe and abstraction-safe way.

## TBD, Chen Ding

### Abstract
Program locality is defined by data reuses.
I'll be happy to introduce the theory that connects data reuse to the cache performance and review several recent techniques of program locality analysis.

## Relational Const Analysis for Functional-Imperative Programs, Weihao Qu

### Abstract

The difference in the evaluation costs of two programs are called relative cost. 
Relational cost analysis aims at formally establishing bounds on the relative cost of two programs. 
As a particular case, relational cost analysis can be used to establish bounds on the difference in the evaluation cost of the same program on two different inputs.

One way to perform relational cost analysis is to use a relational type-and-effect system that supports reasoning about relations between two executions of two programs. 
Building on this basic idea, we present a type-and-effect system, called ARel, for reasoning about the relative cost of array-manipulating, higher-order functional-imperative programs.

The key ingredient of our approach is a new lightweight type refinement discipline that we use to track relations (differences) between two mutable arrays.
This discipline combined with Hoare-style triples built into the types allows us to express and establish precise relative costs of several interesting programs which imperatively update their data. 
We have implemented ARel using ideas from bidirectional type checking.

## TBD, Matthew Milano

### Abstract
Concurrency makes everything hard.
For many programmers, writing efficient concurrent datastructures is an exercise in scouring github and hoping that code quality and number of “stars” really do correlate. 
When it comes time to write your own concurrent datastructures, queue many sleepless nights spent worrying about whether this or that particular concurrency primitive is fast enough, or correct enough, to make the code work at the speeds you need. 
If there is any solace felt, it comes from the once-safe assumption of strong consistency; that, no matter how many races we might have missed, at least the result of the program will be some valid interleaving of concurrent threads.

This assumption is wrong.

Hardware isn’t as helpful as it once was. 
Modern processor and language memory models reduce the available consistency assumptions so much that it’s possible to read values which were never written, justify your own reads, and arbitrarily miss updates from concurrent threads. 
Simple patterns, like initializing an object and then handing it off directly to a newly-spawned thread, are simply not guaranteed to work. 
And distribution makes everything harder; without a central clock or timing guarantees, the complexity of this reasoning grows exponentially.

In this talk, we bring the power of programming languages to bear on the world of weakly-consistent, asynchronous distributed programming.
Our secret sauce is information flow, a key technology borrowed from the security literature and applied with new life here. 
Using information flow, it’s possible to ensure that weakly-consistent observations can never unduly influence strongly-consistent computations; it makes the points of crossover explicit, statically requiring that programmers upgrade the consistency of their observations when appropriate.
We then can leverage this information to automatically partition transactions among a set of nodes, efficiently shipping the *computation* around a distributed system.
Time permitting, we will also discuss some new results on using techniques to ensure convergence of weakly-consistent computations, providing the strong guarantee that even weakly-consistent, asynchronous computations can produce fully-consistent results. 

## Manifest Deadlock-Freedom for Shared Session Types, Stephanie Balzer

### Abstract

Shared session types generalize the Curry-Howard correspondence between intuitionistic linear logic and the session-typed pi-calculus with adjoint modalities that mediate between linear and shared session types, giving rise to a programming model where shared channels must be used according to a locking discipline of acquire-release.
While this generalization greatly increases the range of programs that can be written, the gain in expressiveness comes at the cost of deadlock-freedom, a property which holds for many linear session type systems.

In this talk I develop a type system for logically-shared sessions in which types capture not only the interactive behavior of processes but also constrain the order of resources (i.e., shared processes) they may acquire. 
This type-level information is then used to rule out cyclic dependencies among acquires and synchronization points, resulting in a system that ensures deadlock-free communication for well-typed processes in the presence of shared sessions, higher-order channel passing, and recursive processes.
I illustrate the approach on a series of examples, showing that it rules out deadlocks in circular networks of both shared and linear recursive processes, while still being permissive enough to type concurrent implementations of shared imperative data structures as processes.

## Probabilistic Programming Languages for Autonomous Systems under Uncertainty, Sayed Mahdi Shamsi
### Abstract
Robotics and autonomy has emerged as an interdisciplinary field of research in science and technology. 
However, many of the tools and approaches utilized are adopted from other fields and not customized to the needs of modern robotics. 
Specifically in the context of robot programming, roboticists have primarily solved problems by proposing direct solutions composed of procedures that generate outputs from inputs, i.e. using imperative programming. 
Alternatively, we propose using tools and abstractions that address the problem by modeling the domain, i.e. the variables and how they interact, and using probabilistic inference executed by a runtime environment or compiler. 
In these approaches, a system model is defined as a program and specific problems are defined as subsets of variables in the domain to be inferred. This allows for 1) solving a range of problems in the same domain with trivial changes to the code, e.g. localization, mapping, exploration, etc; 2) black-boxing the inference algorithm and updating seamlessly to different methods. 

We present a prototype system for programming robotic systems using probabilistic programming languages (PPL). 
First, we show how a large number of robotic problems are naturally expressed as probabilistic inference problems. 
Second, we show how we could achieve additional benefits such as automatic error detection and parameter calibration in robotic systems simply by defining an inference profile in the domain. 
Lastly, we show how motion/path planning could be achieved by using off-the-shelf inference tools embedded in most PPLs. 

This approach provides a programming framework for building complex autonomous systems that have to operate under uncertainty. 
By directly modeling the interconnection of uncertain components, decoupled from the inference engine, the design benefits from robustness, re-usability, upgradability, and ease of specification.

## Making Federated, Verified Softward-Defined Networks with Proof-Carrying Network Code, Joshua Robbins

### Abstract

Proof-Carrying Network Code (PCNC) is a novel solution for creating formally verified, federated SDNs, currently in development by a joint team of the Rochester Institute of Technology and the University of Vermont. 
It makes use of the Frenetic SDN controller (developed at Cornell!), its NetKAT language, and proof-carrying code to allow us to make computer networks that are provably problem-free.
