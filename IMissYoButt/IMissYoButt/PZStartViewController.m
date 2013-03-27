//
//  PZStartViewController.m
//  IMissYoButt
//
//  Created by Le Wei on 3/26/13.
//  Copyright (c) 2013 EZPZ. All rights reserved.
//

#import "PZStartViewController.h"
#import "PZStartView.h"

@implementation PZStartViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        UITabBarItem *tbi = [self tabBarItem];
//        [tbi setTitle:@"Hypnosis"];
//        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
//        [tbi setImage:i];
    }
    
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    PZStartView *v = [[PZStartView alloc] initWithFrame:frame];
    
    [self setView:v];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    /*CGRect bounds = [[UIScreen mainScreen] bounds];
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;

    CGRect buttonFrame = CGRectMake(center.x - 80.0, center.y * 1.5, 160.0, 40.0);
    UIButton *addPeopleButton =  [[UIButton alloc] initWithFrame:buttonFrame];
    [addPeopleButton addTarget:self action:NULL forControlEvents:UIControlEventTouchDown];
    [addPeopleButton setTitle:@"Add People" forState:UIControlStateNormal];
    [addPeopleButton setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:addPeopleButton];*/
}

@end
