# TYTagView-for-Obj-C
A tag organizer for Obj-c


TYTagView provides you a fast and easy way to set up tags.

NSArray * tagArray = @[@"Golf", @"Soccer", @"Movies", @"Apple", @"Orange", @"Banana", @"Pineapple", @"Golf", @"Soccer", @"Movies", @"Apple", @"Orange", @"Banana", @"Pineapple"];

      TYTagView * tagView = [[TYTagView alloc] initWithFrame:CGRectMake(0, 20, 320, 320)
                                          withTagArray:tagArray
                                        withColor:[UIColor colorWithRed:0.0f/255 green:231.0f/255 blue:196.0f/255 alpha:1.0] 
                                        withSpaceWidthBetweenTags:10 
                                        andWithSpaceHeightBetweenTags:10];



      [self.view addSubview:tagView];
You can control the space between tags by giving value at initialization. You can control the background color of tags You can control the size of the tags
