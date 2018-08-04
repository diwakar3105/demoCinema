//
//  NavigationTableViewController.m
//  
//
//  Created by Shivendra Pandey on 12/12/17.
//
//

#import "NavigationTableViewController.h"
#import "webViewController.h"


@interface NavigationTableViewController ()

@end

@implementation NavigationTableViewController{
    NSArray *menuItems;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    menuItems = @[@"List Of Movies", @"Now Playing", @"Advertising", @"Contact Us"];
  

    
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
                                 CGRectMake(0, 0, self.tableView.frame.size.width, 200.0)];
    sectionHeaderView.backgroundColor = [UIColor greenColor];
    
    
    //headerView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"myBackground.png"]];
    
    
    //UILabel *headerLabel = [[UILabel alloc] initWithFrame:
    //CGRectMake(0, 140, sectionHeaderView.frame.size.width, 50.0)];
    
    //headerLabel.backgroundColor = [UIColor redColor];
    //        headerLabel.backgroundColor = [UIColor clearColor];
    //        headerLabel.textAlignment = NSTextAlignmentCenter;
    //[headerLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0]];
    //[sectionHeaderView addSubview:headerLabel];
    //headerLabel.text = @"Chal Bazaar";
    
    /*
     UIImageView *headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(-20, 50, sectionHeaderView.frame.size.width, 110.0)];
    
    [headerImageView setImage:[UIImage imageNamed:@"ic_logo_small.png"]];
    headerImageView.backgroundColor = [UIColor whiteColor];
    headerImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"nav_header_bg.png"]];
    
    
    
    [sectionHeaderView addSubview:headerImageView];
    
    self.tableView.tableHeaderView = sectionHeaderView;
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
                                 CGRectMake(0, 0, tableView.frame.size.width, 50.0)];
    sectionHeaderView.backgroundColor = [UIColor lightGrayColor];
    
    //    UILabel *headerLabel = [[UILabel alloc] initWithFrame:
    //                            CGRectMake(15, 140, sectionHeaderView.frame.size.width, 25.0)];
    //
    //    headerLabel.backgroundColor = [UIColor clearColor];
    //    headerLabel.backgroundColor = [UIColor redColor];
    //    headerLabel.textAlignment = NSTextAlignmentCenter;
    //    //[headerLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0]];
    //    [sectionHeaderView addSubview:headerLabel];
    //
    //    UIImageView *headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 30, sectionHeaderView.frame.size.width, 110.0)];
    //
    //    [headerImageView setImage:[UIImage imageNamed:@"if_add_2199111-4.png"]];
    //    headerImageView.backgroundColor = [UIColor greenColor];
    //
    //    [sectionHeaderView addSubview:headerImageView];
    //    switch (section) {
    //        case 0:
    //            headerLabel.text = @"ChalBazaar";
    //            return sectionHeaderView;
    //        default:
    //            break;
    //    }
    
    return sectionHeaderView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50.0;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}

 /*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *ident = segue.identifier;
    if ([segue.identifier isEqualToString:@"Rate"]) {
        UINavigationController *navController = segue.destinationViewController;
        webViewController *webViewController = [navController childViewControllers].firstObject;
        NSString *urlString = @"https://www.youtube.com";
        webViewController.stringURL = urlString;
        
    }else if ([segue.identifier isEqualToString:@"Advertising"]){
        UINavigationController *navController = segue.destinationViewController;
        webViewController *web_ViewC = [navController childViewControllers].firstObject;
        NSString *urlString = @"http://www.ozonecinemas-kw.com/advertising.php";
        web_ViewC.stringURL = urlString;
        
    }else if ([segue.identifier isEqualToString:@"Coming_Movie"]){
        UINavigationController *navController = segue.destinationViewController;
        webViewController *web_ViewC = [navController childViewControllers].firstObject;
        NSString *urlString = @"http://www.ozonecinemas-kw.com/coming-movies.php";
        web_ViewC.stringURL = urlString;
    }else if ([segue.identifier isEqualToString:@"Now_Playing"]){
        UINavigationController *navController = segue.destinationViewController;
        webViewController *web_ViewC = [navController childViewControllers].firstObject;
        NSString *urlString = @"http://www.ozonecinemas-kw.com/now-playing.php";
        web_ViewC.stringURL = urlString;
    }else ([segue.identifier isEqualToString:@"Contact_Us"]);{
        UINavigationController *navController = segue.destinationViewController;
        webViewController *web_ViewC = [navController childViewControllers].firstObject;
        NSString *urlString = @"http://www.ozonecinemas-kw.com/contact-us.php";
        web_ViewC.stringURL = urlString;
    }
}
  */


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
