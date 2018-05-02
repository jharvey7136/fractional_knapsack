Fractional Knapsack Investigation
=================================

## John Harvey

### About
The Fractional Knapsack algorithm implemented in Ruby. The Knapsack problem: Given a set of items, each with a weight and a value, determine a subset of items to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible. The Fractional Knapsack (Greedy method) allows items to be broken into smaller pieces.

### Install Notes - Ubuntu
1. Clone repo with git `git clone https://github.com/jharvey7136/fractional_knapsack.git`
2. Navigate to the app's root directory through the terminal
3. Run program with command: `ruby Knapsack.rb`

Data can be found in the CSV files. To change values, visit line 44 in Knapsack.rb.

### Hypothesis
The Fractional Knapsack algorithm has a time complexity of O(n logn).

### Test Design
In order to test the hypothesis involved, I have taken the following steps:

1. Implement the FractionalKnapsack algorithm in Ruby
2. Run the code for multiple amounts of n items
  * Test with various maximum capacities
  * Analyze all data on individual graphs
  * Analyze all data on a single graph
3. Inspect the graphs and compare the growth to an n log n growth rate
4. Examine code and make changes if results do not seem right
