//
//  main.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utilities.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MyPoint *p1 = [[MyPoint alloc]initWithX:10 andY:20];
        MyPoint *p2 = [[MyPoint alloc]initWithX:15 andY:25];
        MyPoint *p3 = [[MyPoint alloc] init];
        MyPoint *p4 = [[MyPoint alloc] init];
        
        p1.x = 25;
        p1.y = 35;
        p2.x = 11;
        p2.y = 32;
        
        [p1 moveAlongX: -19.7];
        [p1 moveAlongY: -33.6];
        [p2 moveAlongX: 4.6];
        [p2 moveAlongY: -30.6];
        [p3 moveAlongX: 5.3];
        [p3 moveAlongY: 7.8];
        [p4 moveAlongX: 15.6];
        [p4 moveAlongY: 7.8];
        
        NSLog(@"Point 1 is now located at (%f, %f)", p1.x, p1.y);
        NSLog(@"Point 2 is now located at (%f, %f)", p2.x, p2.y);
        NSLog(@"Point 3 is now located at (%f, %f)", p3.x, p3.y);
        NSLog(@"Point 4 is now located at (%f, %f)", p4.x, p4.y);
        
        double distance = [Utilities distanceBetweenPoint1:p1 andPoint2:p2];
        
        NSLog(@"The distance between p1 and p2 is %f", distance);
        
        if([Utilities respondsToSelector:@selector(distanceBetweenPoint1:andPoint2:)]) {
            double distance = [Utilities distanceBetweenPoint1:p1 andPoint2:p2];
            NSLog(@"%f", distance);
        }
        
        Rectangle *rectangle1 = [[Rectangle alloc] initWithCorner1:p1 andCorner2:p2 andCorner3:p3 andCorner4:p4];
        
        MyPoint *p5 = [[MyPoint alloc]initWithX:2 andY:1];
        MyPoint *p6 = [[MyPoint alloc]initWithX:5 andY:1];
        MyPoint *p7 = [[MyPoint alloc]initWithX:2 andY:4];
        MyPoint *p8 = [[MyPoint alloc]initWithX:5 andY:4];
        
        Square *square1 = [[Square alloc] initWithCorner1:p5 andCorner2:p6 andCorner3:p7 andCorner4:p8];
        
        id<Quadrilateral> someShape = square1;
        id<Quadrilateral> anotherShape = rectangle1;
        
        Rectangle *rectangle2 = square1;
        
        NSLog(@"someShape is a %@.", [someShape getShapeType]);
        NSLog(@"anotherShape is a %@.", [anotherShape getShapeType]);
        NSLog(@"rectangle2 is a %@.", [rectangle2 getShapeType]);
    }
    
    MyPoint *p9 = [[MyPoint alloc]initWithX:2 andY:2];
    MyPoint *p10 = [[MyPoint alloc]initWithX:4 andY:6];
    MyPoint *p11 = [[MyPoint alloc]initWithX:2 andY:6];
    MyPoint *p12 = [[MyPoint alloc]initWithX:4 andY:2];
    MyPoint *p13 = [[MyPoint alloc]initWithX:6 andY:2];
    MyPoint *p14 = [[MyPoint alloc]initWithX:6 andY:6];
    
    Circle *testCircle = [[Circle alloc]initWithCenter:p9 andRadius:p10];
    
    Rectangle *testRectangle = [[Rectangle alloc]initWithCorner1:p9 andCorner2:p10 andCorner3:p11 andCorner4:p12];
    
    Square *testSquare = [[Square alloc]initWithCorner1:p9 andCorner2:p11 andCorner3:p13 andCorner4:p14];
    
    [testCircle printInfo];
    [testRectangle printInfo];
    [testSquare printInfo];
    
    return 0;
}