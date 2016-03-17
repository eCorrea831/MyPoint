//
//  Utilities.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/19/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "MyPoint.h"

@interface Utilities : NSObject

@property (nonatomic) NSString* shape;

+ (double)distanceBetweenPoint1: (MyPoint*) point1 andPoint2: (MyPoint*) point2;

@end
