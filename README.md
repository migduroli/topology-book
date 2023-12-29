## Introduction to Topology Book 📖

This repository contains the source code for the book "Topology: An introductory course to the theory of sets and spaces".

### Summary

This *book* is a *collection of notes* that I have been gathering over the years, ever since I was an undergraduate student at the University of Seville, Spain. The notes were originally written in Spanish, but I have been translating them to English since 2020. 

The content of this book is intended to serve as an introductory guide for the rigorous self-study of topology. It has been the goal of this project for myself, and now I hope it can be useful for others as well. 

### Why this book?

When facing the challenge of having to self-study a matter as arduous as **Topology**, I often found myself lost in books which skipped too many proofs, or too many details of them, which are only *trivial* (as they are claimed to be) for the experienced reader. In my personal experience, I found this fact to be very discouraging (not only in the case of Topology, but in many other subjects as well). This is why I decided to write my notes in a way that I would have liked to find them when I was a student, and I hope that they can be useful for others as well. I know these notes are not original, in the sense that they are not offering new content to the subject itself. However, I believe these notes (in the form of a book) offer a self-contained and complete guide to the self-study without the need to consult any other sources for the proofs of the results here presented.

### Structure of the book

The tentative table of contents of this book is the following:

1. [Topological spaces](chapters/ch-1.tex)
2. [Uniform spaces]()
3. [Connectivity]()
4. [Compactness]()
5. [Countability and separation axioms]()
6. [Polish spaces]()
7. [Compactification]()
8. [Cardinal invariants]()
9. [Metric spaces]()
10. [Topological groups]()
11. [Vector spaces]()
12. [Ordered spaces]()

The book is written in LaTeX, and the source code is available in this repository. The book is divided into chapters, each of which is a separate LaTeX file. The main file is [`topology.tex`](topology.tex), which contains the preamble and the structure of the book.

### How to compile the book

This repository comes with the convenience of a `Makefile` which allows to compile the book with a single command. To see the commands avaliable, run `make help` in the root directory of the repository.

### How to contribute

If you find any typos, errors, or you think there is something that can be improved, please feel free to open an issue or a pull request. I will be happy to review it and merge it into the main branch.