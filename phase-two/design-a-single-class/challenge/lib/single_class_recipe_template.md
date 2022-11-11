# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface
class name: TrackList
methods: initialize, add, view
initialize: create an empty array 
add: add a song to the track array
view: return the track array in a nice format


## 3. Create Examples as Tests
on construction:
create an instance of TrackList
create an empty array

add:
adds a single song to the track list
can be called multiple times

view:
if track list is empty shouldd raise an error
view the track list in a nice format


## 4. Implement the Behaviour
