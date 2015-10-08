//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *numbersBetween = [[NSMutableString alloc] init];
    
    NSInteger lowerNumber = number < otherNumber ? number : otherNumber;
    NSInteger higherNumber =number < otherNumber ? otherNumber : number;
    
    for (NSInteger i = lowerNumber; i <= higherNumber; i++) {
        NSString *numberString = [NSString stringWithFormat:@"%ld", (long) i];
        [numbersBetween appendString:numberString];
    }
    
    /* WORK HERE */
    return numbersBetween;
}

@end
