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
    /* WORK HERE */
    return @"";
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return @[];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    return NO;
}

@end
