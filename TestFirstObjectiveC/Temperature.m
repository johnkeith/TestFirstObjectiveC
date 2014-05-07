//
//  Temperature.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import "Temperature.h"

@implementation Temperature

- (NSNumber *)ftoc:(NSNumber *)temp {
    // to pull a value from an NSNumber object, you have to call a method as below with the doubleValue called temp
    // you can define NSNumber literals with the @ sign, just as with NSStrings
    
    // NSNumber *outputTemp = @(([temp doubleValue] - 32.0) * (5.0/9.0));
    // return outputTemp;
    
     return @(([temp doubleValue] - 32.0) * (5.0/9.0));
}

- (NSNumber *)ctof:(NSNumber *)temp {
    //bto make the last test return a properly rounded value use the NSNumberFormatter
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setMaximumFractionDigits:1];
    [formatter setRoundingMode:NSNumberFormatterRoundDown];
    
    NSNumber *outputTemp = @([temp doubleValue] * (9.0/5.0) + 32);
    
    // there must be a better way....
    
    NSNumber *formattedTemp = [formatter numberFromString:[formatter stringFromNumber:outputTemp]];
    
    return formattedTemp;
}

@end
