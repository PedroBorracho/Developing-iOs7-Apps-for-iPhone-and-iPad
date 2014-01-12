//
//  PlayingCard.m
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

// It's a good example of:
// - array notation
// -@syntetize
// -class methods
// -using getter and setters for validation

#import "PlayingCard.h"

@implementation PlayingCard

//Overwrite the setter for contents
-(NSString *)contents{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [ rankStrings[self.rank] stringByAppendingString:self.suit];}

//As both the getter and the setter are redefined, also @synthesize is needed
@synthesize suit = _suit;
+ (NSArray *)validSuits{
    return @[@"♥",@"♦",@"♠",@"♣"];
}
- (void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    } }
- (NSString *)suit{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank { return [[self rankStrings] count]-1; }

//redegine the setter of rank to consider the max rank
- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    } }

@end
