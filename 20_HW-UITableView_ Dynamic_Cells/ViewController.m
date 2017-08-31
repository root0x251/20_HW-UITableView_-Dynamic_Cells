//
//  ViewController.m
//  20_HW-UITableView_ Dynamic_Cells
//
//  Created by Вячеслав Алексеевич on 31.08.17.
//  Copyright © 2017 Вячеслав Алексеевич. All rights reserved.
//

#import "ViewController.h"
#import "RandomClass.h"

@interface ViewController ()

@property (strong, nonatomic) NSString *nameColor;
@property (strong, nonatomic) NSMutableArray * arrayWithRandom;
@property (assign, nonatomic) NSInteger value;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.value = 1000;
    
    self.arrayWithRandom = [NSMutableArray new];
    for (int i = 0; i < self.value; i++) {
        RandomClass *randomValue = [RandomClass new];
        randomValue.name = [randomValue randomName];
        randomValue.color = [randomValue randomColor];
        [self.arrayWithRandom addObject:randomValue];
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Tabel View

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    NSString *headerName = [NSString stringWithFormat:@"Header number #%ld", (long)section];
    return @"Task #1";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.value;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    RandomClass *randomValue = [self.arrayWithRandom objectAtIndex:indexPath.row];
    
    cell.textLabel.text = randomValue.name;
    cell.backgroundColor = randomValue.color;
    
    return cell;
}




@end
