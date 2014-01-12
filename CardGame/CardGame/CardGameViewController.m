//
//  CardGameViewController.m
//  CardGame
//
//  Created by roberto gonella on 12/01/14.
//  Copyright (c) 2014 Roberto Gonella. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@end

@implementation CardGameViewController


- (IBAction)touchCardButoon:(UIButton *)sender {
    if([sender.currentTitle length]){
       [sender setBackgroundImage:[UIImage imageNamed:@"CardBack"]
                         forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"CardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"aa" forState:UIControlStateNormal];
    }
    
}


@end
