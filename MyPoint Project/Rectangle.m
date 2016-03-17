//
//  Rectangle.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize point1 = _point111;
@synthesize shapeColor;

- (NSString*)getShapeType {
    self.shapeType = @"Rectangle";
    return self.shapeType;
}

- (id)init {
    MyPoint * point1 = [[MyPoint alloc]initWithX:0 andY:0];
    MyPoint * point2 = [[MyPoint alloc]initWithX:0 andY:0];
    MyPoint * point3 = [[MyPoint alloc]initWithX:0 andY:0];
    MyPoint * point4 = [[MyPoint alloc]initWithX:0 andY:0];
    return [self initWithCorner1:point1 andCorner2:point2 andCorner3:point3 andCorner4:point4];
}

- (instancetype)initWithCorner1: (MyPoint*) corner1 andCorner2:(MyPoint*) corner2 andCorner3:(MyPoint*) corner3 andCorner4:(MyPoint*) corner4 {
    
    self = [super init];
    if (self) {
        
        self.point1 = corner1;
        self.point2 = corner2;
        self.point3 = corner3;
        self.point4 = corner4;
        return self;
    }
    return nil;
}

- (double)getArea {
    
    double length = [self.point1 distanceFromThisToPoint:self.point2];  //[Utilities distanceBetweenPoint1:self.point1 andPoint2:self.point2];
    double height = [Utilities distanceBetweenPoint1:self.point2 andPoint2:self.point3];
    return length * height;
}

- (void)printInfo {
    
    NSLog(@"This rectangle has corners located at (%f, %f), (%f, %f), (%f, %f), and (%f, %f).", self.point1.x, self.point1.y, self.point2.x, self.point2.y, self.point3.x, self.point3.y, self.point4.x, self.point4.y);
    NSLog(@"The area of this rectangle is %f.", [self getArea]);
}

@end
