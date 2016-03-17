//
//  Circle.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Shape.h"
#import "MyPoint.h"
#import "Utilities.h"

@interface Circle : NSObject <Shape>

@property (nonatomic) MyPoint* centerPoint;
@property (nonatomic) MyPoint* radiusPoint;
@property (nonatomic) NSString* shapeType;

- (NSString*)getShapeType;
- (id)init;
- (id)initWithCenter: (MyPoint*) centerPoint andRadius:(MyPoint*) radiusPoint NS_DESIGNATED_INITIALIZER;
- (double)getArea;
- (void)printInfo;

@end
