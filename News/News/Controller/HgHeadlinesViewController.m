//
//  HgHeadlinesViewController.m
//  News
//
//  Created by CZG on 18/5/3.
//  Copyright © 2018年 xbull. All rights reserved.
//

#import "HgHeadlinesViewController.h"
#import "HgNewsViewController.h"

@interface HgHeadlinesViewController ()

@end

@implementation HgHeadlinesViewController

-(void)loadView
{
    [super loadView];
    self.menuViewStyle = WMMenuViewStyleLine;
    self.progressViewIsNaughty = YES;
    self.progressWidth = 10;
    self.selectIndex = 0;
    self.automaticallyCalculatesItemWidths = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
    return 10;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    
    return @"关注1";
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    
    return [[HgNewsViewController alloc] init];
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    CGFloat width = [super menuView:menu widthForItemAtIndex:index];
    return width + 20;
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {

    return CGRectMake(0, 0, self.view.frame.size.width, 44);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
    
    CGFloat originY = CGRectGetMaxY([self pageController:pageController preferredFrameForMenuView:self.menuView]);
    
    return CGRectMake(0, originY, self.view.frame.size.width, self.view.frame.size.height - originY);
}

@end
