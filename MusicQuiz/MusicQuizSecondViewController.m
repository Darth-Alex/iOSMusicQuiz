//
//  MusicQuizSecondViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 16.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizSecondViewController.h"

@interface MusicQuizSecondViewController ()

@end

@implementation MusicQuizSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
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
