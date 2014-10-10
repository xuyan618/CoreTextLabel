//
//  CMHomeViewController.m
//  CoreTextLabel
//
//  Created by xuyan on 14-10-10.
//  Copyright (c) 2014年 xuyan. All rights reserved.
//

#import "CMHomeViewController.h"
#import "HBCoreLabel.h"

@interface CMHomeViewController ()

@end

@implementation CMHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    HBCoreLabel * label=[[HBCoreLabel alloc]initWithFrame:CGRectMake(0, 50, 320, 150)];
    NSString* string=@"测试文本[大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮][大哭][调皮]测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本";
    
    MatchParser* match=[[MatchParser alloc]init];
    match.width=320;
    [match match:string];
    label.match=match;
    [self.view addSubview:label];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
