//
//  ViewController.m
//  TYTag
//
//  Created by Tianyu Li on 7/21/15.
//  Copyright © 2015 Tianyu Li. All rights reserved.
//

#import "ViewController.h"
#import "TYTagView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * tagArray = @[@"Golf", @"Soccer", @"Movies", @"Apple", @"Orange", @"Banana", @"Pineapple", @"Golf", @"Soccer", @"Movies", @"Apple", @"Orange", @"Banana", @"Pineapple"];
    
    
    TYTagView * tagView = [[TYTagView alloc] initWithFrame:CGRectMake(0, 20, 320, 320)
                                              withTagArray:tagArray
                                            withColor:[UIColor colorWithRed:0.0f/255 green:231.0f/255 blue:196.0f/255 alpha:1.0] withSpaceWidthBetweenTags:10 andWithSpaceHeightBetweenTags:10];
    
    
    
    [self.view addSubview:tagView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
