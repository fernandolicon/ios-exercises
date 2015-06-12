//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    unsigned long len = [string1 length];
    
    if (len != [string2 length]) {
        return NO;
    }
    
    const char *buffer1 = [string1 UTF8String];
    const char *buffer2 = [string2 UTF8String];
    for (int i = 0; i < len; i++) {
        char char1 = buffer1[i];
        char char2 = buffer2[i];
        
        if (char1 != char2) {
            return NO;
        }
    }
    
    return YES;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    long result = [number1 integerValue] - [number2 integerValue];
    if (result == 0) {
        return YES;
    }
    return NO;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    NSInteger result = integer1 - integer2;
    
    if (result > 0) {
        return YES;
    }
    
    return NO;
}

@end
