//
//  Calculator.h
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (NSNumber *)add:(NSNumber *)input01 :(NSNumber *)input02;

- (NSNumber *)subtract:(NSNumber *)input01 :(NSNumber *)input02;

- (NSNumber *)sum:(NSArray *)input01;

- (NSNumber *)multiply:(NSArray *)input01;

- (NSNumber *)power:(NSNumber *)input01 :(NSNumber *)input02;

- (NSNumber *)factorial:(NSNumber *)input01;

@end
