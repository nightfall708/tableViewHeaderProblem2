//
//  ViewController.m
//  tablerviewtest

//

#import "ViewController.h"

@interface ViewController ()

@end

#define HEIGHT 150.0

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView* v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, HEIGHT)];
    v.backgroundColor = [UIColor redColor];
    self.tableView.tableHeaderView = v;

    // uncomment this to see the problem does not happen with a searchbar
//    UISearchBar* searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 320, HEIGHT)];
//    self.tableView.tableHeaderView = searchBar;
    
    self.tableView.contentOffset = CGPointMake(0, self.tableView.tableHeaderView.frame.size.height);
}

@end
