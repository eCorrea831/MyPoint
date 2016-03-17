//
//  MyPoint.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractPoint.h"

@interface MyPoint : NSObject <AbstractPoint>

@property (nonatomic) double x;
@property (nonatomic) double y;

- (id)init;
- (id)initWithX: (double) x andY:(double) y NS_DESIGNATED_INITIALIZER;
- (double)moveAlongX: (double)shiftX;
- (double)moveAlongY: (double)shiftY;

@end
