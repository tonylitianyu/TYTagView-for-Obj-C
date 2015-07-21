//
//  TYTagView.h
//  TYTag
//
//  Created by Tianyu Li on 7/21/15.
//  Copyright © 2015 Tianyu Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYTagView : UIView
-(id)initWithFrame:(CGRect)frame withTagArray:(NSArray*)tagArray withColor:(UIColor*)color withSpaceWidthBetweenTags:(CGFloat)width andWithSpaceHeightBetweenTags:(CGFloat)height;


@end
