//
//  Deck.h
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

//NB: to have multiple method with different params, redefine them
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *) drawRandomCard;

@property (strong, nonatomic) NSMutableArray *cards; // of Car

@end
