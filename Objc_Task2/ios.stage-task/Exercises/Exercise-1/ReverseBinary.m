#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    int r, q;
    //r = remainder
    //q = quotient

    //arr contains the binary of 4 in reverse order
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
    /*
    // arr count is obtained to made another array having same size
    c = arr.count;

    //dup contains the binary of 4
    NSMutableArray *dup =[[NSMutableArray alloc]initWithCapacity:c];

    for (c=c-1; c>=0; c--)
    {
        [dup addObject:[arr objectAtIndex:c]];
    }

    NSLog(@"Second binary %@",dup);
    */
    //First
    
    NSMutableString * result = [[NSMutableString alloc] init];
    for (NSObject * obj in arr){
        [result appendString:[obj description]];
    }
    NSLog(@"The concatenated string is %@", result);
    
    //binary to decimal
    NSString * b = result;
    long v = strtol([b UTF8String], NULL, 2);
    NSLog(@"This is decimal %ld", v); //logs 13
    
    /*NSString *string = @"";
    NSUInteger x = n;

    while (x > 0) {
        string = [[NSString stringWithFormat: @"%lu", x&1] stringByAppendingString:string];
        x = x >> 1;
        NSLog(@"Number_1 -- %@", string);
        return string;
    }
   
    int len = [string length];
      NSMutableString *reverseString = [[NSMutableString alloc] initWithCapacity:len];
      for (int i = len-1; i >= 0; i--){
          [reverseString appendString:[NSString stringWithFormat:@"%c",[string characterAtIndex:i]]];
          NSLog(@"Number_2 -- %@", reverseString);
      }
    
    NSUInteger totalValue = 0;
        for (int i = 0; i < reverseString.length; i++) {
            totalValue += (int)([reverseString characterAtIndex:(reverseString.length - 1 - i)] - 48) * pow(2, i);
        }
    */
    return v;
}
