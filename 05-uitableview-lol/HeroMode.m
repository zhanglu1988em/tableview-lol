//
//  HeroMode.m
//  05-uitableview-lol
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "HeroMode.h"

@implementation HeroMode

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) heroWithDict:(NSDictionary*) dict
{
    return [[self alloc] initWithDict:dict];
}

+(NSArray*)heros
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"heros" ofType:@"plist"];
    NSArray *arry = [[NSArray alloc] initWithContentsOfFile:path];
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in arry) {
        [arryM addObject:[self heroWithDict:dict]];
    }
    return arryM;
}

@end
