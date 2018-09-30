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
    @property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
    @property (weak, nonatomic) IBOutlet UILabel *totalTitle;
    @property (weak, nonatomic) IBOutlet UILabel *tipTitlelabel;
    @property (weak, nonatomic) IBOutlet UILabel *billTitleLabel;
    @property (weak, nonatomic) IBOutlet UIView *barView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tipLabel.alpha = 0;
    self.tipControl.alpha = 0;
    self.totalLabel.alpha = 0;
    self.totalTitle.alpha = 0;
    self.tipTitlelabel.alpha = 0;
    self.billTitleLabel.alpha = 0;
    self.barView.alpha = 0;
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
    double bill = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.15), @(.2), @(.22)];
    
    //in swift
    //double tipPercentage = percentages[self.tipControl.selectedSegmentIndex].doubleValue();
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    
    double tip = tipPercentage * bill;
    double total = bill + tip;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}
- (IBAction)editingBegan:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
//        self.billField.frame = CGRectMake(self.billField.frame.origin.x, self.billField.frame.origin.y + 30, self.billField.frame.size.width, self.billField.frame.size.height);
        
        self.tipLabel.alpha = 1; //make label invisible
        self.tipControl.alpha = 1;
        self.totalLabel.alpha = 1;
        self.totalTitle.alpha = 1;
        self.tipTitlelabel.alpha = 1;
        self.billTitleLabel.alpha = 1;
        self.barView.alpha = 1;

    }];
}
- (IBAction)onEditEnd:(id)sender {
//    CGRect newFrame = self.billField.frame;
//    newFrame.origin.y -= 30;
    
    //animation wrap
    [UIView animateWithDuration:0.2 animations:^{
        //self.billField.frame = newFrame;
        self.tipLabel.alpha = 0;
        self.tipControl.alpha = 0;
        self.totalLabel.alpha = 0;
        self.totalTitle.alpha = 0;
        self.tipTitlelabel.alpha = 0;
        self.billTitleLabel.alpha = 0;
        self.barView.alpha = 0;
        
    
    }];
}


@end
