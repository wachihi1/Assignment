//
//  ListViewController.m
//  LoginApp
//
//  Created by ilabafrica on 11/08/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import "ListViewController.h"
#import "Events.h"


@interface ListViewController ()

@end

@implementation ListViewController{
    NSArray *event;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Events *eve1=[Events new];
    eve1.name=@"Wedding";
    eve1.details=@"there";
    eve1.image=@"wed.jpg";
    
    Events *eve2=[Events new];
    eve2.name=@"Hiking";
    eve2.details=@"Longonot";
    eve2.image=@"hike.jpg";
    
    Events *eve3=[Events new];
    eve3.name=@"Party";
    eve3.details=@"Simba Salon";
    eve3.image=@"party.jpg";
    
    Events *eve4=[Events new];
    eve4.name=@"Map";
    eve4.details=@"Events on the Map";
    eve4.image=@"map.jpeg";
    
    
    event=[NSArray arrayWithObjects:eve1,eve2,eve3,eve4, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
    return[event count];
    
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *cellIdentifier = @"eventItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell==nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    Events *lang = ((Events*) event[indexPath.row]);
    cell.textLabel.text =lang.name;
    [cell.detailTextLabel setText:lang.details];
    
    cell.imageView.image = [UIImage imageNamed:lang.image];
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSInteger index = [self.myTableView indexPathForSelectedRow].row;
    
    if([segue.identifier isEqualToString: @"eventIdentifier"]){
        [(PreviewViewController *) segue.destinationViewController setEvents:
         [self objectInListAtIndex: index]];
        
    }}

-(Events *)objectInListAtIndex: (NSInteger) index{
    return [event objectAtIndex: index];
}


@end
