//
//  ARViewController.m
//  IronHackAR
//
//  Created by zoompin iOS on 01/07/14.
//  Copyright (c) 2014 zoompin. All rights reserved.
//

#import "ARViewController.h"
#import <WikitudeSDK/WTArchitectView.h>

@interface ARViewController ()

@property (nonatomic, strong) WTArchitectView *architectView;

@end

@implementation ARViewController

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
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeARView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initializeARView {
    if ( [WTArchitectView isDeviceSupportedForAugmentedRealityMode:WTAugmentedRealityMode_Both] ) { // 1
        self.architectView = [[WTArchitectView alloc] initWithFrame:self.view.bounds motionManager:nil augmentedRealityMode:WTAugmentedRealityMode_Both];
        [self.architectView setLicenseKey:kWT_LICENSE_KEY]; // 2
        [self.view addSubview:self.architectView]; // 3
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [self.architectView start];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.architectView stop];
}

@end
