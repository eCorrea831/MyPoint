//
//  Quadrilateral.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/25/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"

@protocol Quadrilateral <NSObject>

@required

@property (nonatomic) MyPoint* point1;
@property (nonatomic) MyPoint* point2;
@property (nonatomic) MyPoint* point3;
@property (nonatomic) MyPoint* point4;


- (NSString*)getShapeType;

@end
