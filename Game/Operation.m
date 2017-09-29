//
//  Operation.m
//  Game
//
//  Created by apple on 25/09/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import "Operation.h"

@implementation Operation

- (instancetype)initMoves:(NSInteger)moves goal:(NSInteger)goal baseNumber:(NSInteger)baseNumber operationTypes:(NSArray<OperationType *> *)operationTypes {
    if (self = [super init]) {
        _moves = moves;
        _goal = goal;
        _operationTypes = operationTypes;
        _baseNumber = baseNumber;
    }
    
    return self;
}

- (NSArray<OperationType *> *)start {
    NSMutableArray<OperationType *> *operationTypes = [NSMutableArray array];
    
    BOOL result = [self runMyMove:0 baseNumber:_baseNumber myOperationTypes:operationTypes];
    
    if (result) {
        NSLog(@"ok");
        
        NSString *path = [NSString stringWithFormat:@"%ld", (long)self.baseNumber];
        for (OperationType *operationType in operationTypes) {
            path = [NSString stringWithFormat:@"%@ %@", path, [operationType symbol]];
            
            if (operationType.method != right) {
            	path = [NSString stringWithFormat:@"%@ %ld", path, (long)operationType.number];
            }
        }
        NSLog(@"%@", path);
    } else {
        NSLog(@"no");
    }
    
    return operationTypes;
}

- (BOOL)runMyMove:(NSInteger)myMove baseNumber:(NSInteger)baseNumber myOperationTypes:(NSMutableArray *)myOperationTypes{
    if (myMove <= _moves) {
        if (baseNumber == _goal) {
            return YES;
        } else {
            for (OperationType *operationType in _operationTypes) {
                NSInteger newBaseNumber = [Tools base:baseNumber method:operationType.method number:operationType.number];
                [myOperationTypes addObject:operationType];
                BOOL result = [self runMyMove:myMove + 1 baseNumber:newBaseNumber myOperationTypes:myOperationTypes];
                if (result) {
                    return YES;
                } else {
                    [myOperationTypes removeLastObject];
                }
            }
            return NO;
        }
    } else {
        return NO;
    }
}

@end

@implementation OperationType

- (instancetype)initMethod:(ToolMethod)method number:(NSInteger)number {
    if(self = [super init]){
        _method = method;
        _number = number;
    }
    return self;
}

- (instancetype)initMethod:(ToolMethod)method {
    return [[OperationType alloc] initMethod:method number:0];
}

- (NSString *)symbol {
    switch (_method) {
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

@end
