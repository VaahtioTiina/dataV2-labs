![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. 

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.

## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains. 

- Sample space is: {(1,(1..6)), (2, (1..6)), (3, (1..6)), (4, (1..6)), (5, (1..6), (6,(1..6)}, with 36 possible solutions. 
- Random variable is for roll_1 [1, 2, 3, 4, 5 or 6] and the same for roll_2

* B. The sum of the values obtained.

- Sample space is: {sum(1,(1..6)), sum(2, (1..6)), sum(3, (1..6)), sum(4, (1..6)),sum(5, (1..6), sum(6,(1..6)}
- Random variale: {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}

* C. The maximum value obtained after rolling both dices.

- Sample space is: {1, 2, 3, 4, 5, 6} 
- Random variable: {1, 2, 3, 4, 5, 6}

Describe the following events:
* Case A: Both values are greater than 5. 
- If both value are greatan than 5, it means that you have rolled 6 twice. The likelyhood of this (1/6)*(1/6) =  1/12 
- Outcome set{6, 6}

* Case B: The sum of values is even. 
- If the sum is even  you are either adding even and even number OR odd and odd number. 
- Possible outcome set {(1, 3, 5) + 1, (1, 3, 5) + 3, (1, 3, 5) + 5, (2, 4, 6)+ 2, (2, 4, 6) + 4, (2, 4, 6) + 6}


* Case C: The maximum is the value of both rolls. 
- It means that you have rolled twixe the same number 
- Possible outcomes {(1, 1,), (2,2), (3, 3), (4,4), (5, 5), (6, 6)

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.

- Sample space is {(number, number), (number, figure), (figure, number), (figure, figure)}
- Random variable is {0, 1, 2}
 
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
- Sample space is {4...30} 
- Random variable is {4.. 30}

* C. The number of hearts or spades he picks.
- Sample space is {hearts, spades, diamonds, clubs}
- random variable is {0, 1, 2}

Describe the following events:
* Case A: The number of figures in the cards the player picked is two. 
- The first and second card were both figures. Probability of count(figure cards)/52 * count(figure-cards)-1/51

* Case B: The sum of card values is 17.
- The player has picked up from the following cards pairs (in no particular order) {(2, ace), (3, king), (4, queen), (5, jack), (6, 10), (7, 9), (8, 8)} 

* Case C: The value of both cards is less than 8. 
- The player has picked two cards that are less than 8 
- {2, 3, 4, 5, 6, 7} on the first round as well as on the second round

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.

- Sample space: {1, 2, 3, 4, 5, 6}
- Random variable = sample space 

* B. The greatest score. 
-Sample space: {1, 2, 3, 4, 5, 6} 
- Random variable = max{sp(player1), sp(player2)} 

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.". 
- Earnings for player A = if score A < score B = -coin value, if score A > score B = +coin value

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.".  
- Earnings A = if A > B = count(A - B)*coin value else -(B-A)* coin valu

Describe the following events:
* Case A: The score of player A is 2. 
- Player A has thrown 2. The likelyhood of this is 1/6. 

* Case B: The greatest score is lower or equal than 2.
- The greatest score is {1, 2} 

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins. 

- The game has had one of the following events {(A:6, B:2), (A:5, B:1)}
  * Player A loses more than 2 coins. 
- The game has had one of the following events {(A:3, B:6), (A:2, B:6), (A:1, B:6), (A:2, B:5), (A:1, B:5), (A:1, B:4)}
  * Player A neither wins nor loses coins. 
- The players has both thrown a same score score A = score B

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.