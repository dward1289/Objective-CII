//
//  BaseHero.h
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseHero : NSObject
{
    int heroEnum;
}
typedef enum {
    BATMAN,
    SUPERMAN,
    SPIDERMAN 
} heroEnum;

//data for strength, weakness, and number of powers

@property NSString *weakness;
@property int numPowers;
@property NSString *strength;

//intialize
-(id)init;

//find number of powers
-(void)countPowers;
@end
