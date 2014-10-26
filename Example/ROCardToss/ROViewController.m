//
//  ROViewController.m
//  ROCardToss
//
//  Created by Brian Weinreich on 10/26/2014.
//  Copyright (c) 2014 Brian Weinreich. All rights reserved.
//

#import "ROViewController.h"
#import <ROCardToss.h>

@interface ROViewController () <ROCardTossDelegate>

@property (strong, nonatomic) UIButton *launchCardButton;
@property (strong,nonatomic) ROCardToss *cardToss;

@end

@implementation ROViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.view addSubview:self.launchCardButton];
}

# pragma mark - Actions

- (void)launchCard
{
    [self.cardToss show];
}

# pragma mark - Delegates

- (void)cardWasDismissed
{
    NSLog(@"Card was dismissed");
}

# pragma mark - Getters

- (ROCardToss *)cardToss
{
    if (!_cardToss) {
        _cardToss = [ROCardToss new];
        _cardToss.delegate = self;
    }
    
    return _cardToss;
}

- (UIButton *)launchCardButton
{
    if (!_launchCardButton) {
        _launchCardButton = [[UIButton alloc] initWithFrame:CGRectMake(15, (self.view.frame.size.height/2)-22, self.view.frame.size.width-30, 44)];
        _launchCardButton.backgroundColor = [UIColor colorWithRed:0.15 green:0.73 blue:0.52 alpha:1];
        _launchCardButton.layer.cornerRadius = 9;
        _launchCardButton.layer.masksToBounds = YES;
        [_launchCardButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_launchCardButton setTitle:@"Launch Card" forState:UIControlStateNormal];
        [_launchCardButton addTarget:self action:@selector(launchCard) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _launchCardButton;
}

@end
