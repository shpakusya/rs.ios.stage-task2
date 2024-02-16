#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSUInteger count = 0;
    NSMutableArray *mArray = [array mutableCopy];
    
    for (NSUInteger i = 0; i<array.count; i++) {
        for (NSUInteger y = 0; y<mArray.count; y++) {
            NSUInteger diff = abs([array[i] intValue] - [mArray[y] intValue]);
            if ( diff == [number intValue]) {
                count++;
            }
        }
        [mArray removeObject:array[i]];
    }
    
    return count;
}

@end
