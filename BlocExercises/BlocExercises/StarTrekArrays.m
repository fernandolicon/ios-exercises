//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSMutableArray *starTrekCharacters = [[NSMutableArray alloc] init];
    
    unsigned long len = [characterString length];
    const char *buffer = [characterString UTF8String];
    NSMutableString *name = [[NSMutableString alloc] initWithString:@""];
    
    for(int i = 0; i < len; ++i) {
        char current = buffer[i];
        if (current != ';') {
            [name appendFormat:@"%c", current];
        }else{
            NSString *stringName = [NSString stringWithString:name];
            [starTrekCharacters addObject:stringName];
            [name setString:@""];
        }
    }
    [starTrekCharacters addObject:name];
    
    return starTrekCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableString *names = [[NSMutableString alloc] init];
    int count = 0;
    for (NSString *name in characterArray){
        if (count == 0) {
            [names appendString:name];
        }else{
            [names appendFormat:@";%@", name];
        }
        count++;
    }
    
    NSString *finalNames = [NSString stringWithString:names];
    return finalNames;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *sortedArray = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    for (NSString *text in characterArray) {
        NSString *lowerCaseText = [text lowercaseString];
        if ([lowerCaseText containsString:@"worf"]) {
            return YES;
        }
    }
    
    return NO;
}

@end
