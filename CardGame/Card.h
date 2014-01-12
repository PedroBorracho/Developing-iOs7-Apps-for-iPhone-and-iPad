//
//  Card.h
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject //Define public interface

@property (nonatomic,strong) NSString *contents;

//NB1: no strong as is a primitive type
//NB2: primitive are not pointers!
//NB3: force setter to be is<VarName> to be more clean in the code later
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
