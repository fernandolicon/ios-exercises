//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *favoriteDrink = [characterDictionary objectForKey:@"favorite drink"];
    if (favoriteDrink) {
        return favoriteDrink;
    }
    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [[NSMutableArray alloc] init];
    for (NSDictionary *character in charactersArray) {
        NSString *favoriteDrink = [character objectForKey:@"favorite drink"];
        if (favoriteDrink) {
            [favoriteDrinks addObject:favoriteDrink];
        }
    }
    
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *quoteCharacter = [[NSMutableDictionary alloc] initWithDictionary:characterDictionary];
    [quoteCharacter setObject:@"Logic is the beginning of wisdom, not the end." forKey:@"quote"];
    return quoteCharacter;
}

@end
