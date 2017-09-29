//
//  main.m
//  Game
//
//  Created by apple on 25/09/2017.
//  Copyright © 2017 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        OperationType *type1 = [[OperationType alloc] initMethod:add number:4];
        OperationType *type2 = [[OperationType alloc] initMethod:multiply number:9];
//		OperationType *type3 = [[OperationType alloc] initMethod:multiply number:5];
        OperationType *type4 = [[OperationType alloc] initMethod:right];
    
        
        Operation *operation = [[Operation alloc] initMoves:5 goal:2 baseNumber:0 operationTypes:@[type2, type1, type4]];
        
        [operation start];
    }
    return 0;
}
