//
//  main.m
//  OBJ-C-LAB2
//
//  Created by Ts SaM on 31/8/2023.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:5.0 width:3.0 length:4.0];
        Box *box2 = [[Box alloc] initWithHeight:2.0 width:2.0 length:2.0];
        
        float box1Volume = [box1 calculateVolume];
        NSLog(@"Box 1 volume: %.2f", box1Volume);
        
        float box2Volume = [box2 calculateVolume];
        NSLog(@"Box 2 volume: %.2f", box2Volume);
        
        float fitCount = [box2 howManyTimesFitInside:box1];
        if (box1Volume > box2Volume) {
            NSLog(@"Box 2 fits inside Box 1 : %.2f times", fitCount);
        }else{
            NSLog(@"Box 1 fits inside Box 2 : %.2f times", fitCount);
        }
    }
    return 0;
}
