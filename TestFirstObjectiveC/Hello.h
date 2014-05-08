//
//  Hello.h
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hello : NSObject

// @property (nonatomic, strong) NSMutableString *greeting;
// decided to simplify and do it with a regular string using NSString stringWithFormat

- (NSString *)sayHello;
- (NSString *)greetSomeone:(NSString *)greetee;

@end
