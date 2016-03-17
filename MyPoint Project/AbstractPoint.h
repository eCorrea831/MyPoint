//
//  AbstractPoint.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/23/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractPoint <NSObject>

@required

- (double)moveAlongX: shiftX;
- (double)moveAlongY: shiftY;

@optional

- (double)distanceFromOrigin;

- (double)distanceFromThisToPoint: (id<AbstractPoint>) point;

- (double)distanceBetweenPoints: (id<AbstractPoint>) point1 andY: (id<AbstractPoint>) point2;

@end
