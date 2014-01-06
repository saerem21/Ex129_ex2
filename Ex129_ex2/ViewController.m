//
//  ViewController.m
//  Ex129_ex2
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate>

@end

@implementation ViewController
{
    UIActionSheet *sheet2;
    int count;
}
- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex {
    //버튼 인덱스
    NSLog(@"selected index %d",buttonIndex);
}

-(void)willPresentActionSheet:(UIActionSheet *)actionSheet{
    if(2 == actionSheet.tag){
        NSString *title = [NSString stringWithFormat:@"%d 번째",count++];
        actionSheet.title =title;
    }
}

- (IBAction)basicActionsheet:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"name" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"중요" otherButtonTitles:@"1",@"2",@"3", nil];
    sheet.tag = 1;
    [sheet showInView:self.view];
}
- (IBAction)actionCount:(id)sender {
    if(nil == sheet2){
        sheet2 = [[UIActionSheet alloc] initWithTitle:@"title" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"1",@"2", nil];
        sheet2.tag = 2;
    }
    [sheet2 showInView:self.view];
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
