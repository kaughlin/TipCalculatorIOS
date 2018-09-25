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
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

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
    double bill = [self.billField.text doubleValue];
    double tip = 0.2 * bill;
    double total = bill + tip;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}


@end
