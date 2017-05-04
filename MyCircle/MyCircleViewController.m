//
//  MyCircleViewController.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-29.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "MyCircleViewController.h"
#import "UserCollectionViewCell.h"

@interface MyCircleViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *circularCollectionView;

@end

@implementation MyCircleViewController

#pragma mark - ViewController LifeCycle -
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureMyCircleVC];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - CollectionView Delegate & DataSource -
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UserCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"userCell" forIndexPath:indexPath];
    return cell;
    
}

#pragma mark - Configuration -
- (void)configureMyCircleVC {
    
    self.navigationItem.title = @"Parkinson's";
    
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch
                                                                                  target:self
                                                                                  action:@selector(searchButtonClicked)];
    
    UIBarButtonItem *bellButton = [[UIBarButtonItem alloc] initWithTitle:@"B"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(rightBarButtonsClicked)];
    
    UIBarButtonItem *messageButton = [[UIBarButtonItem alloc] initWithTitle:@"M"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(rightBarButtonsClicked)];
    
    searchButton.tintColor = [UIColor whiteColor];
    bellButton.tintColor = [UIColor whiteColor];
    messageButton.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = searchButton;
    self.navigationItem.rightBarButtonItems = @[bellButton, messageButton];
    
    
}

#pragma mark - Button Control -
- (void)searchButtonClicked {
    
    self.navigationItem.titleView = [[UISearchBar alloc] init];
    
}

//non-functional so just a log statement to show that the buttons do work
- (void)rightBarButtonsClicked {
    
    NSLog(@"One of the right bar buttons has been clicked!");
    
}

@end
