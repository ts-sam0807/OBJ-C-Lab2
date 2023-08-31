//
//  Box.m
//  OBJ-C-LAB2
//
//  Created by Ts SaM on 31/8/2023.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float)height width:(float)width length:(float)length {
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float)calculateVolume {
    return self.height * self.width * self.length;
}

- (float) howManyTimesFitInside:(Box *)otherBox {
    float selfVolume = [self calculateVolume];
    float otherBoxVolume = [otherBox calculateVolume];
    
    if (selfVolume >= otherBoxVolume) {
        return selfVolume / otherBoxVolume;
    } else {
        return otherBoxVolume / selfVolume;
    }
}

@end
