{{PROBLEM}} Method Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.
The signature of a method includes:
The name of the method.
What parameters it takes, their names and data types.
What it returns and the data type of that value.
Any other side effects it might have.
Steps 3 and 4 then operate as a cycle.

keep_track(text)
* takes a string "TODO list: laundry, homework"
* returns true if the string contains "TODO"
* takes a string "DONE: walked the dog"
* returns false if the string does not contain "TODO"



3. Create Examples as Tests
Make a list of examples of what the method will take and return.
These are examples of the method being called with particular arguments, and what the method should return in each situation.
For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

keep_track("TODO list: laundry, homework")
=> true

keep_track("DONE: walked the dog")
=> false



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
For each example you create as a test, implement the behaviour that allows the method to return the right value for the given arguments.

