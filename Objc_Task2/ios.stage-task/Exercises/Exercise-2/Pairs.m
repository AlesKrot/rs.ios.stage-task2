#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int count = 0;
    //
    for (int i = 0; i < [array count]; i++){
        for (int j = i + 1; j < [array count]; j++){
            if ([array objectAtIndex:(j)].intValue - [array objectAtIndex:(i)].intValue == number.intValue){
                count+=1;
            }
        }
    }
    return count;
}

@end
