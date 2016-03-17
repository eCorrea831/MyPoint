//
//  Rectangle.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Quadrilateral.h"
#import "Shape.h"
#import "MyPoint.h"
#import "Utilities.h"

@interface Rectangle : NSObject <Shape, Quadrilateral>
@property (nonatomic) NSString* shapeType;

@property (nonatomic) MyPoint* point2;
@property (nonatomic) MyPoint* point3;
@property (nonatomic) MyPoint* point4;


//- (NSString*)getShapeType;
//- (id)init;
- (id)initWithCorner1: (MyPoint*) corner1 andCorner2:(MyPoint*) corner2 andCorner3:(MyPoint*) corner3 andCorner4:(MyPoint*) corner4 NS_DESIGNATED_INITIALIZER;
- (double)getArea;
- (void)printInfo;

@end
