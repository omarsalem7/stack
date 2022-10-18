# Stack
### I implement a stack with a linked list rather than arrays for several reasons

- The array requires much space in memory when I need to push a new element or remove one, and it takes more time to perform these operations.
,and it takes more time to perform this operations.
- For this case, I care about the push and pop, so the linked list is better because it takes O(1) on this operation.
- And to find the max value, I use stack which will be better to get the max value on O(1) time.
- You can take a look at the following table which illustrates the time for operation in arrays vs linked list.

comparison | Arrays  | Linked lists|
|----------| ------- | ----------- |
|Reading   | O(1)    |   O(n) |
|Insertion | O(n)    |   O(1) |
|Deletion  | O(n)    |   O(1) |

> From this comparison, we conclude that a linked list will be better in our case. And the run time in all cases will be O(1)
