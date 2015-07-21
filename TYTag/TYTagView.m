//
//  TYTagView.m
//  TYTag
//
//  Created by Tianyu Li on 7/21/15.
//  Copyright © 2015 Tianyu Li. All rights reserved.
//

#import "TYTagView.h"

@implementation TYTagView{
    CGFloat totalWidthInPresentingLine;
    CGFloat totalHeightInPresentingLine;
    
    CGFloat widthSpaceBetweenTag;
    CGFloat heightSpaceBetweenTag;
    
    
}




-(id)initWithFrame:(CGRect)frame withTagArray:(NSArray*)tagArray withColor:(UIColor*)color withSpaceWidthBetweenTags:(CGFloat)width andWithSpaceHeightBetweenTags:(CGFloat)height{
    
    self = [super initWithFrame:frame];
    if (self) {
        widthSpaceBetweenTag = width;
        heightSpaceBetweenTag = height;
        
        
        totalWidthInPresentingLine = widthSpaceBetweenTag;
        totalHeightInPresentingLine = heightSpaceBetweenTag;
        NSInteger colorIndex = 0;
        
        for (NSString * tag in tagArray){
            
            
            [self createLableWithText:tag withBackgroundColor:color withLastTotalHeight:totalHeightInPresentingLine withLastTotalWidth:totalWidthInPresentingLine];
            
            colorIndex++;
            
        }
        
        
        
        
    }
    
    
    
    return self;
    
    
}



-(void)createLableWithText:(NSString*)text
       withBackgroundColor:(UIColor*)color
       withLastTotalHeight:(CGFloat)height
             withLastTotalWidth:(CGFloat)width{
    
    
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    label.text = text;
    label.backgroundColor = color;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.layer.borderColor = color.CGColor;
    label.layer.borderWidth = 0.5;
    label.layer.cornerRadius = 3.0;
    [label sizeToFit];
    label.frame = CGRectMake(width, height, label.frame.size.width*1.5, label.frame.size.height*2);
    
    //////store exsiting tag width to calculate the X position of the next tag
    [self storeTotalTagWidthWithWidthInThisLoop:label.frame.size.width];
   
    
    
    
    ///////change line
    if (totalWidthInPresentingLine > self.frame.size.width) {
        
        totalWidthInPresentingLine = widthSpaceBetweenTag;
        totalHeightInPresentingLine = totalHeightInPresentingLine + label.frame.size.height + heightSpaceBetweenTag;
        label.frame = CGRectMake(totalWidthInPresentingLine, totalHeightInPresentingLine, label.frame.size.width, label.frame.size.height);
        
        
        
        
        //////store exsiting tag, in new line, width to calculate the X position of the next tag
        [self storeTotalTagWidthWithWidthInThisLoop:label.frame.size.width];
    }
    label.frame = CGRectIntegral(label.frame);
    
    
    
    [self addSubview:label];
    
}




-(void)storeTotalTagWidthWithWidthInThisLoop:(CGFloat)nowWidth{
    totalWidthInPresentingLine = totalWidthInPresentingLine + nowWidth + widthSpaceBetweenTag;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
