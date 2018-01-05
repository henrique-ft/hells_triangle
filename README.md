# HellsTriangle

## Challenge

Hell Triangle - Challenge

Given a triangle of numbers, find the maximum total from top to bottom

An element can only be summed with one of the two nearest elements in the next row.
For example: The element 3 in the 2nd row can only be summed with 9 and 7, but not with
1

Your code will receive an (multidimensional) array as input.

example = [[6],[3,5],[9,7,1],[4,6,8,4]]

## How to run

I choose Haskell because it'ś a pure functional strongly-typed language and its a very nice choose when you are comming to functional paradigm.

To execute the program you have to use a Linux(Ubuntu 14 or 16) machine. Follow the steps below:

Download Haskell Stack:

` 
$ curl -sSL https://get.haskellstack.org/ | sh
`

Clone this repository:

` 
$ git clone https://github.com/henriquefernandez/HellsTriangle.git
`

Go to the repository folder:

`
$ cd HellsTriangle
`

Build:

`
$ stack build
`

It will install project dependencies and haskell GHC.


Execute:

`
$ stack exec HellsTriangle
`

Run tests:

`
$ stack test 
`

And you are done, Thanks !
