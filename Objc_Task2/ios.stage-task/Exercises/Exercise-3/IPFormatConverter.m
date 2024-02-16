#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSString *ip = @"";
    
    NSMutableArray *array = [numbersArray mutableCopy];
   
    
    
    
    if(numbersArray && numbersArray.count>0){
        for (NSUInteger i = 0; i<numbersArray.count; i++) {
            if([numbersArray[i] intValue] > 255){
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }else if ([numbersArray[i] intValue] < 0) return @"Negative numbers are not valid for input.";
        }
        
        if(numbersArray.count < 4){
            for (NSUInteger i = 0; i < (4-numbersArray.count); i++) {
                [array addObject:@(0)];
            }
        }
        
        NSRange range = NSMakeRange(0, 4);
        ip = [[array subarrayWithRange:range] componentsJoinedByString:@"."];
    }
    

    
    return ip;
}

@end
