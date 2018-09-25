//
//  ViewController.m
//  TipCalculator
//
//  Created by Kaughlin Caver on 9/25/18.
//  Copyright © 2018 Kaughlin Caver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    
@property (weak, nonatomic) IBOutlet UITextField *billField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onTap:(id)sender {
    NSLog(@"exit tap");
    [self.view endEditing:YES];
}
- (IBAction)onEdit:(id)sender {
    NSLog(@"on Edit");
}


@end
