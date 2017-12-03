# 99 problems in PowerShell

## About

I'm doing this as practice, but hopefully it could be an example to those learning PowerShell.

### Origin

Based on
[99 prolog problems](https://sites.google.com/site/prologsite/prolog-problems/1)
by Werner Hett.

### PowerShell specific goals

- Use approved verbs.
- Use explicit parameters.
- Pack everything into a module.
- Test all solutions with Pester.

## Problems

### Problem 1: find the last element of a list

#### Example

````powershell
Get-LastElementofList -List @('a','b','c','d')
# d
````

### Problem 2: find the last but one element of a list

#### Example

````powershell
Get-PenultimateElementofList -List @('a','b','c','d')
# c
````

### Problem 3: find the K'th element of a list

#### Example

````powershell
Get-ElementofList -Number 3 -List @('a','b','c','d')
# c
````

### Problem 4: find the number of elements of a list

#### Example

````powershell
Get-LengthOfList -List @('a','b','c','d')
# 4
````

### Problem 5: reverse a list

#### Example

````powershell
Sort-ReverseOrder -List @('a', 'b', 'c', 'd')
# d
# c
# b
# a
````

### Problem 6: find out whether a list is a palindrome

#### Example

````powershell
Confirm-Palindrome -List @('a','b','b','a')
# True
````

### Problem 7: flatten a nested list structure

#### Example

````powershell
Optimize-NestedToFlat -List @('a','b',@('c','d'),'e') | % {$_.Count}
# 1 # Output does not show nesting directly.
# 1
# 1
# 1
# 1
````

### Problem 8: eliminate consecutive duplicates of list elements

#### Example

````powershell
Remove-DuplicateItem -List @('a','a','b','c')
# a
# b
# c
````

### Problem 9: pack consecutive duplicates of list elements into sublists

#### Example

````powershell
Optimize-FlatToNested -List @('a','a','b','c')  | % {$_.Count}
# 2	# The output would not show differently for nested list.
# 1
# 1
````

### Problem 10: run-length encoding of a list
#### Example

````powershell
ConvertTo-RunLengthEncoding -List @('a','a','b','c')
@('a',2,'b',1,'c',1)
````

### Problem 11: modified run-length encoding

#### Example

_Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as [N,E] terms._


````powershell
ConvertTo-ModifiedRunLengthEncoding -List ('a','a','a','a','b','c','c','a','a','d','e','e','e','e').
# @( @(4,a), b, @(2,c), @(2,a), d, @(4,e) )
````

### Problem 12 decode a run-length encoded list

Given a run-length code list generated as specified in problem 1.11. Construct its uncompressed version.

### Problem 13 run-length encoding of a list (direct solution)

_Implement the so-called run-length encoding data compression method directly.
I.e. don't explicitly create the sublists containing the duplicates, as in problem 1.09,
but only count them. As in problem 1.11, simplify the result list by replacing the singleton terms [1,X] by X._

#### Example

````powershell
?- encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
X = [[4,a],b,[2,c],[2,a],d,[4,e]]
````

### Problem 14 duplicate the elements of a list

### Problem 15 duplicate the elements of a list a given number of times

### Problem 16 drop every N'th element from a list

### Problem 17 split a list into two parts, the length of the first part is given
_Do not use any predefined predicates._

#### Example

````powershell
Split-List -FirstSize 3 -List @('a','b','c','d','e','f','g','h','i','k')
# @('a','b','c'),@('d','e','f','g','h','i','k')
````

### Problem 18 extract a slice from a list

Given two indices, I and K,
the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included).
Start counting the elements with 1.

#### Example

````powershell
slice([a,b,c,d,e,f,g,h,i,k],3,7,L)
L = [c,d,e,f,g]
````

### Problem 19 Rotate a list N places to the left

### Problem 20 Remove the K'th element from a list

### Problem 21 Insert an element at a given position into a list

### Problem 22 Create a list containing all integers within a given range
### Problem 23 Extract a given number of randomly selected elements from a list
### Problem 24 Lotto: Draw N different random numbers from the set 1..M
### Problem 25 Generate a random permutation of the elements of a list
### Problem 26 Generate the combinations of K distinct objects chosen from the N elements of a list
### Problem 27 Group the elements of a set into disjoint subsets
### Problem 28 Sorting a list of lists according to length of sublists
### Problem 29 
### Problem 30
### Problem 31 Determine whether a given integer number is prime.
### Problem 32 Determine the prime factors of a given positive integer.
### Problem 33 Determine the prime factors of a given positive integer (2).
### Problem 34 A list of prime numbers
### Problem 35 Goldbach's conjecture.
### Problem 36 A list of Goldbach compositions.
### Problem 37 Determine the greatest common divisor of two positive integer numbers.
### Problem 38 Determine whether two positive integer numbers are coprime.
### Problem 39 Calculate Euler's totient function phi(m).
### Problem 40 Calculate Euler's totient function phi(m) (2).
### Problem 41 Compare the two methods of calculating Euler's totient function.
### Problem 42 Truth tables for logical expressions.
### Problem 43 Truth tables for logical expressions (2).
### Problem 44 Truth tables for logical expressions (3).
### Problem 45 Gray code.
### Problem 46 Truth tables for logical expressions.
### Problem 47 Huffman code.
### Problem 48 
### Problem 49
### Problem 50
### Problem 51
### Problem 52
### Problem 53
### Problem 54 Check whether a given term represents a binary tree
### Problem 55 Construct completely balanced binary trees
### Problem 56 Symmetric binary trees
### Problem 57 Binary search trees (dictionaries)
### Problem 58 Generate-and-test paradigm
### Problem 59 Construct height-balanced binary trees
### Problem 60 Construct height-balanced binary trees with a given number of nodes
### Problem 61 Count the leaves of a binary tree
### Problem 61a Collect the leaves of a binary tree in a list
### Problem 62 Collect the internal nodes of a binary tree in a list
### Problem 63 
### Problem 64 
### Problem 65
### Problem 66
### Problem 67
### Problem 68
### Problem 69
### Problem 70
### Problem 71
### Problem 72
### Problem 73
### Problem 74
### Problem 75
### Problem 76
### Problem 77
### Problem 78
### Problem 79
### Problem 80
### Problem 81
### Problem 82
### Problem 83
### Problem 84
### Problem 85
### Problem 86
### Problem 87
### Problem 88
### Problem 89
### Problem 90
### Problem 91
### Problem 92
### Problem 93
### Problem 94
### Problem 95
### Problem 96
### Problem 97
### Problem 98
### Problem 99