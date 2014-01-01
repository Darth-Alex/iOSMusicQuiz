//
//  MusicQuizWelcomeViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 22.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizNavigationViewController.h"
#import "MusicQuizSelectionViewController.h"
#import "MusicQuizFirstViewController.h"

@interface MusicQuizNavigationViewController ()

@end

@implementation MusicQuizNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"Start", @"Start");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        
        UINavigationController *navC = [[UINavigationController alloc]init];
        MusicQuizFirstViewController *controller1 = [[MusicQuizFirstViewController alloc]initWithNibName:@"MusicQuizFirstViewController_iPhone" bundle:nil];
        
        [navC setViewControllers:[NSArray arrayWithObject:controller1]];
        
        [self.view addSubview:navC.view];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
