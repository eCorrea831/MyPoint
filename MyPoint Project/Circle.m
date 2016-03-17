//
//  Circle.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Circle.h"

@implementation Circle
@synthesize shapeColor;

- (NSString*)getShapeType {
    self.shapeType = @"Circle";
    return self.shapeType;
}

- (id)init {
    MyPoint * center = [[MyPoint alloc]initWithX:0 andY:0];
    MyPoint * radius = [[MyPoint alloc]initWithX:0 andY:0];
    return [self initWithCenter:center andRadius:radius];
}

- (instancetype)initWithCenter: (MyPoint*) centerPoint andRadius:(MyPoint *) radiusPoint  {
    
    self = [super init];
    if (self) {
        self.centerPoint = centerPoint;
        self.radiusPoint = radiusPoint;
        return self;
    }
    return nil;
}

- (double)getArea {
    double radius = [Utilities distanceBetweenPoint1:self.centerPoint andPoint2:self.radiusPoint];
    return (radius * radius) * M_PI;
}

- (void)printInfo {
    
    NSLog(@"This circle has its center located at (%f, %f) and it's outter radius is located at (%f, %f).", self.centerPoint.x, self.centerPoint.y, self.radiusPoint.x, self.radiusPoint.y);
    NSLog(@"The area of this circle is %f.", [self getArea]);
}

@end
