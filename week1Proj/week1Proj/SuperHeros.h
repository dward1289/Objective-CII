//
//  SuperHeros.h
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//
//  FACTORY FILE

#import <Foundation/Foundation.h>
#import "BaseHero.h"
#import "BatMan.h"
#import "SuperMan.h"
#import "SpiderMan.h"

@interface SuperHeros : NSObject

+(BaseHero *)createNewHero: (int)heroType;
@end
