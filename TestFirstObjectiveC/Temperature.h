//
//  Temperature.h
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/7/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface Temperature : NSObject

//  It may seem redundant to have an object-oriented version of all the C primitives, but it’s necessary if you want to store numeric values in an NSArray, NSDictionary, or any of the other Foundation Framework collections. These classes require all of their elements to be objects—they do not know how to interact with primitive values. In addition, NSNumber makes it possible to pass numbers to methods like performSelector:withObject:, as discussed in Selectors.
//  - from http://rypress.com/tutorials/objective-c/data-types/nsnumber.html

- (NSNumber *)ftoc:(NSNumber *)temp;

- (NSNumber *)ctof:(NSNumber *)temp;

@end
