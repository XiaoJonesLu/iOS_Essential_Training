//
//  ViewController.m
//  TableViewPractice
//
//  Created by Xiao on 7/23/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *firstSectionData;
@property (nonatomic, strong) NSArray *secondSectionData;
@property (nonatomic, strong) NSArray *thirdSectionData;
@end

@implementation ViewController

#pragma mark - Data
- (NSArray *)secondSectionData {
    if (!_secondSectionData) {
        _secondSectionData = @[@"NSInteger",
                               @"int",
                               @"long",
                               @"double"
                               ];
        
    }
    return _secondSectionData;
}

- (NSArray *)firstSectionData {
    if (!_firstSectionData) {
        _firstSectionData = @[@"Account",
                              @"NSString",
                              @"NSDate",
                              @"NSArray",
                              @"NSMutableArray",
                              @"NSDictionary",
                              @"NSMutableDictionary"];
    }
    return _firstSectionData;
}

- (NSArray *)thirdSectionData {
    if (!_thirdSectionData) {
        _thirdSectionData = @[@"UILabel",
                              @"UIButton",
                              @"UITextField",
                              @"UITableView"];
    }
    return _thirdSectionData;
}

@end
