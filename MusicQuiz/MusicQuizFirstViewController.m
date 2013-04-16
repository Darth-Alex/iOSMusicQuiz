//
//  MusicQuizFirstViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 16.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizFirstViewController.h"

@interface MusicQuizFirstViewController ()

@end

@implementation MusicQuizFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
