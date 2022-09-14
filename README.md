# :shamrock: Dark series check
## Dark character database and family trees in Prolog

#### :warning: Full of SPOILERS!

dark.pl analyses facts about parents, gender,of Dark series characters in all 3 worlds, and implements rules.

![image](https://github.com/gopi-chandu/Dark-Family-Tree/blob/master/about.png | width=100)
**Queries include the following:**
* Relationship - _Find the relationship between X and Y_
  ```prolog
  ?-relationship(X, Y).
  ```
* Parents - _X is the parent of Y. You can also query mother/father_
  ```prolog
  ?-parent(X, Y). 
  ```
  _List all parents of a character X_
  ```prolog
  ?-parents(X, Parents).
  ```
* Children - _X is the child of Y. You can also query son/daughter_
  ```prolog
  ?-child(X, Y).
  ```
  _List all children of a character X_
  ```prolog
  ?-children(X, Children).
  ```
* Sibling - _X the sibling of Y. Can also query brother/sister_
  ```prolog
  ?-sibling(X, Y).
  ```
  _List all siblings of a character X_
  ```prolog
  ?-list_siblings(X, Siblings).
  ```
* Aunt, Uncle, Neice, Nephew - _Can all be queried like the above, where X is the relation to Y_

* Full Profile - _Gathers all relationships of a character_
  ```prolog
  ?-about(X).
  ```