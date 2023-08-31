//
//  Box.h
//  OBJ-C-LAB2
//
//  Created by Ts SaM on 31/8/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property float height;
@property float width;
@property float length;

- (instancetype)initWithHeight:(float)height width:(float)width length:(float)length;
- (float)calculateVolume;
- (float)howManyTimesFitInside:(Box *)otherBox;

@end

NS_ASSUME_NONNULL_END
