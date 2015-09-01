//
//  ViewController.m
//  LearnStoryBoardPgm
//
//  Created by Parames on 31/08/15.
//  Copyright (c) 2015 Softcraft Systems and Solutions Private Limited. All rights reserved.
//


#import "ViewController.h"
#import "FirstController.h"
#import "NameTVC.h"
#import "SearchView.h"
#import "WSView.h"
#import "SettingView.h"
#import "AboutView.h"



@interface ViewController ()
{
   
   
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.navigationController.navigationBarHidden=YES;
    }


-(IBAction)onNT:(id)sender
{
    [self namTVC:@"FirstController"];
}
-(IBAction)onOT:(id)sender
{
    [self namTVC:@"NameTVC"];
}

-(IBAction)onSearch:(id)sender
{
    [self namTVC:@"SearchView"];
}
-(IBAction)onWS:(id)sender
{
    [self namTVC:@"WSView"];
}

-(IBAction)onSettings:(id)sender
{
    [self namTVC:@"SettingView"];
}
-(IBAction)onAbout:(id)sender
{
    [self namTVC:@"AboutView"];
}

- (NameTVC *)namTVC:(NSString *)strClassName
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:[self storyboardName] bundle:nil];
    NameTVC *page = [storyboard instantiateViewControllerWithIdentifier:strClassName];
    page.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.navigationController pushViewController:page animated:YES];

    return page;
}


- (NSString *)storyboardName
{
    // fetch the appropriate storyboard name depending on platform
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
        return @"Main";
    else
        return @"MainStoryboard_iPad";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
