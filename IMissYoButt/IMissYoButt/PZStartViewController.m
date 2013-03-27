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
}

@end
