//
//  Card.m
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import "Card.h"

@interface Card() //Define private interface

@end

@implementation Card


-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    for(Card *card in otherCards){
        //Example of compare strings
        if([card.contents isEqualToString:self.contents]){
          score =1; //Match only if it's the same
        }
    }
    
    return score;
}

@end
