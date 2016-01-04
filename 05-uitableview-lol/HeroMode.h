//
//  HeroMode.h
//  05-uitableview-lol
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeroMode : NSObject
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* icon;
@property (nonatomic,copy) NSString* intro;

-(instancetype) initWithDict: (NSDictionary*) dict;
+(instancetype) heroWithDict:(NSDictionary*) dict;
+(NSArray*) heros;

@end
