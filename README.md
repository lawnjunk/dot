dot
===
multi box configuration automation

# Introduction
When I work on a box that ain't setup ma-way, I feel disoriented and
unproductive. I wish ery box I sitdown to work at would **magicaly** configure it
self ma-way. I useta try to keep my setup simple so that i could have a lil-ole'
dotfiles _repo_ and a couple symlinks on each box, but that ain't never worked
well enough. There are so many dotfiles bootstraps and managment utilites out
there. There all perdy darn good at solving _this here very problem_. I was guun
use [yadm](https://github.com/TheLocehiliosan/yadm) but I also wanted to be able
to throw around some `$HOME`*grown* Binarys + _B_ able to run scripts for
instlling all the *tools* and their *plugins*, that I like 2 use. So I'm werking
on this. **dot dot dot**

* Use a single repo
* No dependencies, just **/bin/bash** I guess
* Be able 2 use different files based on _OS_ or _HOST_ or _SHELL_
* **git** all the work, keep'n trackn and sync'n stuff
* plays nice with **bash** and **zsh** 

## File Organization
```
all  || os/$DOT_OS || box/$DOT_BOX     --> seporate resources by ALL OS and HOST
├── bin                                --> exec files 
├── copy                               --> files copyed to $HOME
├── init                               --> 
│   ├── system                         --> sudo ran scripts for installing system level tools
│   └── user                           --> shell scripts for installing user level tools    
├── link                               --> files linked to $HOME     
└── source                             -->      
    ├── all                            --> files sourced by all shell     
    ├── bash                           --> files sourced by bash
    └── zsh                            --> files sourced by zsh
```
