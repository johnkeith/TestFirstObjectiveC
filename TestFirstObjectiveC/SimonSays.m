//
//  SimonSays.m
//  TestFirstObjectiveC
//
//  Created by John Keith on 5/8/14.
//  Copyright (c) 2014 John Keith. All rights reserved.
//

#import "SimonSays.h"

@implementation SimonSays

// http://rypress.com/tutorials/objective-c/data-types/nsstring.html

- (NSString *)echoString:(NSString *)word {
    return word;
}

- (NSString *)shoutString:(NSString *)word {
    return [word uppercaseString];
}

- (NSString *)repeat:(NSString *)word {
    NSMutableString *returnString = [[NSMutableString alloc] init];
    for (int i = 0; i < 2; i++) {
        [returnString appendFormat:@" %@", word];
    }
    return [returnString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString *)repeatStringNumberOfTimes:(NSString *)word :(NSNumber *)times {
    NSMutableString *returnString = [[NSMutableString alloc] init];
    for (int i = 0; i < [times intValue]; i++) {
        [returnString appendFormat:@" %@", word];
    }
    return [returnString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString *)startOfWord:(NSString *)word :(NSNumber *)characters {
    return [word substringToIndex:[characters intValue]];
}

- (NSString *)firstWord:(NSString *)string {
    return [[string componentsSeparatedByString:@" "] objectAtIndex:0];
}

- (NSString *)titilize:(NSString *)title {
    NSArray *titleWords = [title componentsSeparatedByString:@" "];
    NSArray *wordsToLeaveLow = @[@"the", @"and", @"over"];
    // need to figure out how to do it with an array of words to leave lowercase as above. in ruby it is as simple as comparing the *word in the for loop below with the *wordsToLeaveLow array using include?
    NSMutableArray *titleWordsCapitalized = [NSMutableArray array];
    for (NSString *word in titleWords) {
        if ([word isEqualToString: @"the"] || [word isEqualToString: @"and"] || [word isEqualToString:@"over"]) {
            [titleWordsCapitalized addObject:word];
        } else {
            [titleWordsCapitalized addObject:[word capitalizedString]];
        }
    }
    NSLog(@"%@", [titleWordsCapitalized componentsJoinedByString:@" "]);
    NSString *titleCapped = [titleWordsCapitalized componentsJoinedByString:@" "];
    return [titleCapped stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[titleCapped substringToIndex:1] uppercaseString]];
}

@end
