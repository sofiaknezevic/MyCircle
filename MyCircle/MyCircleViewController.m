//
//  MyCircleViewController.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-29.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "MyCircleViewController.h"
#import "UserCollectionViewCell.h"
#import "JSONDataManager.h"
#import "User.h"

@interface MyCircleViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *circularCollectionView;
@property (nonatomic, strong) JSONDataManager *dataManager;

@end

@implementation MyCircleViewController

#pragma mark - ViewController LifeCycle -
- (void)viewWillAppear:(BOOL)animated {
    
    
    
    [super viewWillAppear:true];
    
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self configureMyCircleVC];
    [self addViewForLoggedInUser];
    
    self.dataManager = [[JSONDataManager alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - CollectionView Delegate & DataSource -
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataManager.userObjectsArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UserCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"userCell" forIndexPath:indexPath];
    [cell configureCellWithUser:[self.dataManager.userObjectsArray objectAtIndex:indexPath.item]];
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
    self.navigationItem.rightBarButtonItems = @[messageButton, bellButton];
    
    
}

- (void)addViewForLoggedInUser {

    
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
