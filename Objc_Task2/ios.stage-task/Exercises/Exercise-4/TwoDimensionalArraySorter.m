#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    if(![array[0] isKindOfClass:[NSArray class]]){
        return @[];
    }else{
        for (NSUInteger i = 0; i < array.count; i++) {
            if([array[i][0] isKindOfClass:[NSNumber class]]){
                [numbers addObjectsFromArray:array[i]];
            }else if([array[i][0] isKindOfClass:[NSString class]]){
                [strings addObjectsFromArray:array[i]];
            }
        }
        
        if(numbers.count == 0){
            NSArray *sortedArray = [strings sortedArrayUsingDescriptors:@[sd]];
            return sortedArray;
        }else if(strings.count == 0){
            NSArray *sortedArray = [numbers sortedArrayUsingDescriptors:@[sd]];
            return sortedArray;
        }
    }
    return [NSArray arrayWithObjects:numbers, strings, nil];
}

@end
