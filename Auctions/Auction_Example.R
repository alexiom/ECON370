set.seed(123) #set rng seed

Nbidders = 2                                     #set number of bidders
Vs       = exp(rnorm(Nbidders,mean = 2, sd = 3)) #draw values
Delta    = 0.01                                  #set min bid increment

bid    = Delta #start bidding with minimum bid
bidder = as.numeric(runif(1) > 0.5) + 1 #decide who bids first

while(Vs[bidder] > bid + Delta){
  #continue to increase bid by minimum bid increment
  #until someone is no longer willing to bid more. 
  bid = bid + Delta
  bidder = 3 - bidder
}

winner = 3-bidder    #store winner
winning_bid = bid    #store winning bid


