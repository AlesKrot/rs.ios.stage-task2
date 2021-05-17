#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    int r, q;

    while (n != 0)
    {
        r = n%2;
        q = n/2;
        [arr addObject:[NSNumber numberWithInt:r]];
        n = q;
    }
    NSLog(@"First binary %@",arr);
    
    while ([arr count] < 8) {
        [arr addObject:@"0"];
    }
    NSLog(@"Second binary %@",arr);
    
    NSMutableString * result = [[NSMutableString alloc] init];
    for (NSObject * obj in arr){
        [result appendString:[obj description]];
    }
    NSLog(@"The concatenated string is %@", result);
    
    NSString * b = result;
    long v = strtol([b UTF8String], NULL, 2);
    NSLog(@"This is decimal %ld", v); //logs 13
    
    return v;
}
