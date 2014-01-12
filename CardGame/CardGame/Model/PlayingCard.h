//
//  PlayingCard.h
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
