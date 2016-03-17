//
//  Utilities.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/19/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities

+ (double)distanceBetweenPoint1:(MyPoint*) point1 andPoint2: (MyPoint*) point2 {
    return sqrt(((point2.x - point1.x) * (point2.x - point1.x)) + ((point2.y - point1.y) * (point2.y - point1.y)));
}

@end
