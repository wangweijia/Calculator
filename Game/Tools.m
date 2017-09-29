//
//  Tools.m
//  Game
//
//  Created by apple on 25/09/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import "Tools.h"

@implementation Tools

+ (NSInteger)base:(NSInteger)baseNum method:(ToolMethod)method {
    return [Tools base:baseNum method:method number:0];
}

+ (NSInteger)base:(NSInteger)baseNum method:(ToolMethod)method number:(NSInteger)num {
    NSInteger result = 0;
    switch (method) {
        case add: {
            result = [Tools baseNum:baseNum add:num];
        }
            break;
        case subtract: {
            result = [Tools baseNum:baseNum subtract:num];
        }
            break;
        case multiply: {
            result = [Tools baseNum:baseNum multiply:num];
        }
            break;
        case divide: {
            result = [Tools baseNum:baseNum divide:num];
        }
            break;
        case right: {
            result = [Tools rightBaseNum:baseNum];
        }
            break;
    }
    return result;
}

+ (NSString *)symbolBy:(ToolMethod)method {
    switch (method) {
        case add: {
            return @"+";
        }
            break;
        case subtract: {
            return @"-";
        }
            break;
        case multiply: {
            return @"*";
        }
            break;
        case divide: {
            return @"/";
        }
            break;
        case right: {
            return @"<<";
        }
            break;
    }
}

// +
+ (NSInteger)baseNum:(NSInteger)baseNum add:(NSInteger)number {
    NSInteger b = baseNum;
    NSInteger n = number;
    return n + b;
}
// -
+ (NSInteger)baseNum:(NSInteger)baseNum subtract:(NSInteger)number {
    NSInteger b = baseNum;
    NSInteger n = number;
    return b - n;
}
// *
+ (NSInteger)baseNum:(NSInteger)baseNum multiply:(NSInteger)number {
    NSInteger b = baseNum;
    NSInteger n = number;
    return n * b;
}
// /
+ (NSInteger)baseNum:(NSInteger)baseNum divide:(NSInteger)number {
    NSInteger b = baseNum;
    NSInteger n = number;
    return b / n;
}
// <<
+ (NSInteger)rightBaseNum:(NSInteger)baseNum{
    NSInteger b = baseNum;
    return b / 10;
}

@end
