//
//  SimonSays.h
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/8/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimonSays : NSObject

- (NSString *)echoString:(NSString *)word;

- (NSString *)shoutString:(NSString *)word;

- (NSString *)repeat:(NSString *)word;

- (NSString *)repeatStringNumberOfTimes:(NSString *)word :(NSNumber *)times;

- (NSString *)startOfWord:(NSString *)word :(NSNumber *)characters;

- (NSString *)firstWord:(NSString *)string;

- (NSString *)titilize:(NSString *)title;

@end
