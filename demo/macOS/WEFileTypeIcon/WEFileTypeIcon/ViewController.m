//
//  ViewController.m
//  WEFileTypeIcon
//
//  Created by borgzheng on 2016/12/26.
//  Copyright © 2016年 PageekTeam. All rights reserved.
//

#import "ViewController.h"
#import "WEWFileIconUtil.h"

@implementation ViewController
{
    NSArray *file_names;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initFileIcon];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


//Demo Start
-(void)initFileIcon{
    
    file_names = [NSArray arrayWithObjects:@"1.mp3",@"2.avi",@"4.jpg",@"5.zip",@"6.doc",@"7.ppt",@"8.xls",@"9.eml",@"10.swf",@"11.html",@"12.key",@"13.pages",@"1.numbers",@"2.txt", nil];

    for(NSInteger i = 0;i<file_names.count;i++){
        NSImageView *imageDemo = [[NSImageView alloc]init];
        imageDemo.image = WEWGetFileIcon(file_names[i]);
        [self.view addSubview:imageDemo];
        imageDemo.frame=CGRectMake((40+10)*i+10, 40, 40, 40);
    }
    
    
}

//Demo End

@end
