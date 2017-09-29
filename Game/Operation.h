//
//  Operation.h
//  Game
//
//  Created by apple on 25/09/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
@class OperationType;

@interface Operation : NSObject

@property (nonatomic, assign) NSInteger moves;

@property (nonatomic, assign) NSInteger goal;

@property (nonatomic, assign) NSInteger baseNumber;

@property (nonatomic, strong) NSArray<OperationType *>* operationTypes;

- (instancetype)initMoves:(NSInteger)moves goal:(NSInteger)goal baseNumber:(NSInteger)baseNumber operationTypes:(NSArray<OperationType *> *)operationTypes;

- (NSArray<OperationType *> *)start;

@end

@interface OperationType : NSObject

@property (nonatomic, assign) ToolMethod method;

@property (nonatomic, assign) NSInteger number;

- (instancetype)initMethod:(ToolMethod)method number:(NSInteger)number;

- (instancetype)initMethod:(ToolMethod)method;

- (NSString *)symbol;

@end
