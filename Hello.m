//
//  Hello.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import "Hello.h"

@implementation Hello

- (NSString *)sayHello {
    return @"Hello World";
}

- (NSString *)greetSomeone:(NSString *)greetee {
    return [NSString stringWithFormat:@"%@ %@%@", @"Hello", greetee, @"!"];
    // self.greeting = [NSMutableString stringWithString:@"Hello"];
    // self.greeting = [self.greeting stringByAppendingFormat:@"%@ %@!", self.greeting, greetee];
}
@end
