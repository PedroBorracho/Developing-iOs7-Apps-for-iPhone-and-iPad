//
//  Deck.m
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import "Deck.h"

@implementation Deck

//Example of silent initialization
- (NSMutableArray *)cards{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}
- (void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}

//Return a random card (nil if cards is empty
- (Card *) drawRandomCard{
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end

