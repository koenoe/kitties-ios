//
//  InfoViewController.m
//  kitties
//
//  Created by Koen Romers on 15-10-12.
//  Copyright (c) 2012 Koen Romers. All rights reserved.
//

#import "InfoViewController.h"
#import "Configuration.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize infoText;
@synthesize infoText2;
@synthesize name;
@synthesize website;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set background pattern
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern.png"]]];
    
    // Set title navigation bar
    [self setTitle:@"About"];
    UIFont *font = [UIFont fontWithName:@"AvenirNextCondensed-Medium" size:16];
    
    [infoText setFont:font];
    [infoText setTextColor:[UIColor blackColor]];
    
    [infoText2 setFont:font];
    [infoText2 setTextColor:[UIColor blackColor]];
    
    [name setFont:[UIFont fontWithName:@"AvenirNextCondensed-Medium" size:14]];
    [name setTextColor:[UIColor darkGrayColor]];
    
    UIColor *orange = [UIColor colorWithRed:250/255.0f green:121/255.0f blue:53/255.0f alpha:1.0f];
    [website.titleLabel setFont:[UIFont fontWithName:@"AvenirNextCondensed-Medium" size:14]];
    [website setTitleColor:orange forState:UIControlStateNormal];
    [website setTitleColor:orange forState:UIControlStateHighlighted];
    [website setTitleColor:orange forState:UIControlStateSelected];
    [website addTarget:self action:@selector(openWebsite:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)openWebsite: (UIButton *)button {
    NSURL *url = [NSURL URLWithString:@"http://www.koenromers.com"];
    [[UIApplication sharedApplication] openURL:url];
}

-(BOOL)shouldAutorotate {
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}


@end
