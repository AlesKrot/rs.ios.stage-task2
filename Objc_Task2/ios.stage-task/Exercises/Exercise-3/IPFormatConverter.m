#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableArray *arr = [numbersArray mutableCopy];
    
    if ([arr count] == 0){
        return @"";
    }
    
    while ([arr count] < 4){
        [arr addObject:@"0"];
    }
    
    NSInteger count = [arr count];
    
    for (NSInteger i = (count - 1); i > 3; i--){
        [arr removeObjectAtIndex:i];
    }
    
    NSLog(@"First array %@",arr);
    
    for (int i = 0; i < [arr count]; i++){
        if ([arr[i] intValue] > 255){
            return @"The numbers in the input array can be in the range from 0 to 255.";
            }
        if ([arr[i] intValue] < 0){
            return @"Negative numbers are not valid for input.";
            }
        }
    [arr insertObject:@"." atIndex:1];
    [arr insertObject:@"." atIndex:3];
    [arr insertObject:@"." atIndex:5];
    
    NSLog(@"Second array %@",arr);
    
    NSString * str = [[arr valueForKey:@"description"] componentsJoinedByString:@""];
    
    NSLog(@"First string %@",str);
  
    return str;
}

@end
