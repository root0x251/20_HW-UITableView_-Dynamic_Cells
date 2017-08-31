//
//  RandomClass.h
//  20_HW-UITableView_ Dynamic_Cells
//
//  Created by Вячеслав Алексеевич on 31.08.17.
//  Copyright © 2017 Вячеслав Алексеевич. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomClass : UIView

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIColor *color;

- (UIColor *)randomColor;
- (NSString *)randomName;

@end
