//
//  ViewController.m
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//

#import "LoginControllerView.h"
@interface LogControllerView()

@end

@implementation LogControllerView

- (void)viewDidLoad {
    checkboxSelected = 0;

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)checkboxButton:(id)sender{
    if (checkboxSelected == 0){
        [checkboxButton setSelected:YES];
        checkboxSelected = 1;
    } else {
        [checkboxButton setSelected:NO];
        checkboxSelected = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroudtap:(id)sender {
    [self.view endEditing:YES];
}

-(IBAction)signinClicked:(id)sender
{

    
    
}
- (void) alertStatus:(NSString *)msg :(NSString *)title :(int) tag
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}

-(BOOL)textFieldShowReturn:(UITextField *)textfield
{
    [textfield resignFirstResponder];
    return YES;
}

@end
