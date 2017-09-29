//
//  Tools.h
//  Game
//
//  Created by apple on 25/09/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 运算方法

 - add: 加法
 - subtract: 减法
 - multiply: 乘法
 - divide: 除法
 - right: 向右移动一位 321-》32
 */
typedef NS_ENUM(NSInteger, ToolMethod) {
	add = 1,
    subtract = 2,
    multiply = 3,
    divide = 4,
    right = 5
};

@interface Tools : NSObject

+ (NSInteger)base:(NSInteger)baseNum method:(ToolMethod)method number:(NSInteger)num;

+ (NSInteger)base:(NSInteger)baseNum method:(ToolMethod)method;

+ (NSString *)symbolBy:(ToolMethod)method;

@end
