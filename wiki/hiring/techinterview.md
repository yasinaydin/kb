# Tech Interview

## Links

Sources:
- [Tech Interview Handbook](https://yangshun.github.io/tech-interview-handbook/)
- [GitHub: Data Structures and Algorithms](https://github.com/kdn251/interviews#data-structures)
- [GitHub: Front end Interview Questions](https://github.com/khan4019/front-end-Interview-Questions)
- <https://projecteuler.net>

Cheat sheets:
- [Big-O Algorithm Complexity Cheat Sheet](http://www.souravsengupta.com/cds2016/lectures/Complexity_Cheatsheet.pdf)
- [Sorting Algorithms in JavaScript](https://khan4019.github.io/front-end-Interview-Questions/sort.html)
sort in JS
- [Algorithm Questions](https://yangshun.github.io/tech-interview-handbook/best-practice-questions/)

## Data Structures

### Map vs dictionary: unorg vs organized with indexes (key/val at index) see hashmap

### Arrray

### Set

### Multiset (bag)

### Tuple

### Multimap/associated array

### Linked List

```
normal: lineer collection of elements (called node), each pointing to next item via pointer
		singly-linked list: each node points to next node, last node points to null
		doubly-linked list: 2 pointers, p (prev node) and n (next node)
		circular-linked list: =singly, but last node points to first
		Time Complexity: Access: O(n) Search: O(n) Insert: O(1)	Remove: O(1)
```

### Stack

```
collection of elements with 2 main ops: push (put it to end) and pop (get&remove from end)
		LIFO
		Time Complexity: Access: O(n) Search: O(n) Insert: O(1)	Remove: O(1)
```

### Queue
```
		collection of elements with 2 main ops: enqueue (put it to end) and dequeue (get&remove from start)
		FIFO
		Time Complexity: Access: O(n) Search: O(n) Insert: O(1)	Remove: O(1)
```

### Hash table/hashing

```
		fixed size data
		key
		values returned = hash value, hash code, hash
		if 1 value has 2 keys = collision
		hash map: name of the mapping structure
```

### Graph


- ?:
		directed
		undirected
		adjacency matrix
		adjacency list
		traversals: BFS, DFS

#### Tree

#### Binary Tree
			-each node has max 2 children (left child,right child)
			full tree; each node has 2 or 0 children
			perfect binary tree: full tree + each has same depth
			complete tree: every level except possibly the last is full, last level nodes are left

#### Binary Search Tree-BST
			type of binary tree
			in a row (debbth) left nodes are always <= righter
			Access: O(log(n)),Search: O(log(n)),Insert: O(log(n)),Remove: O(log(n))

#### Trie
			aka radix tree, prefix tree
			search tree for strings, with associations (alfabe) (https://github.com/kdn251/interviews#trie)
		-Fenwick Tree
		-Segment Tree
		-Heap (Priority Queue / Binary Heap)

--- 

## Algorithmic complexity / Big-O / Asymptotic analysis

### time
- log n > 2 ye bol, kalani 2 ye bol, etc

### space: amount of memroy


---

## Binary search

---

## Sorting
- selection
- insertion
- heapsort
- quicksort
- merge sort
