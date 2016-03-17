//
//  Shape.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/24/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Shape <NSObject>
@required
@property (nonatomic) NSString *shapeColor;
- (NSString*)getShapeType;
- (void)printInfo;
@optional

- (double)getArea;
@end
