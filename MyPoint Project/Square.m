//
//  Square.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Square.h"

@implementation Square

@synthesize shapeColor;

- (NSString*)getShapeType {
    self.shapeType = @"Square";
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
    
    self = [super initWithCorner1:corner1 andCorner2:corner2 andCorner3:corner3 andCorner4:corner4];
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
    double side = [Utilities distanceBetweenPoint1:self.point1 andPoint2:self.point2];
    return side * side;
}

//- (void)printInfo {
//    
//    NSLog(@"This square has corners located at (%f, %f), (%f, %f), (%f, %f), and (%f, %f).", self.point1.x, self.point1.y, self.point2.x, self.point2.y, self.point3.x, self.point3.y, self.point4.x, self.point4.y);
//    NSLog(@"The area of this square is %f.", [self getArea]);
//    
//}

@end
