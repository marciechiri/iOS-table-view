//
//  ViewController.m
//  Tablez
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"
#import "Models/Languages.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *language;
    NSArray *thumbnails;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //initialize
    
    //languages = [NSArray arrayWithObjects:@"ios",@"java",@"python",@"nodeJS",nil];
    //thumbnails = [NSArray arrayWithObjects:@"imagesd.jpeg",@"download",@"cartoon.jpeg",@"carton.jpg" ,nil];
    
    Languages*lang1 =[Languages new];
    lang1.name=@"ios";
    lang1.language_description=@"ios";
    lang1.image=@"download.png";
    
    Languages*lang2 =[Languages new];
    lang2.name=@"java";
    lang2.language_description=@"java";
    lang2.image=@"carton.jpg";

    Languages*lang3 =[Languages new];
    lang3.name=@"python";
    lang3.language_description=@"python";
    lang3.image=@"cartoon.jpeg";

    Languages*lang4 =[Languages new];
    lang4.name=@"nodejs";
    lang4.language_description=@"ioggs";
    lang4.image=@"imagesd.jpeg";
    
    language =[NSArray arrayWithObjects:lang1,lang2,lang3,lang4,nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [language count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier= @"TableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil){
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    Languages *lang =((Languages *) language[indexPath.row]);
     [cell.detailTextLabel setText:lang.language_description];
    //cell.textLabel.text = [language objectAtIndex:indexPath.row];
    cell.textLabel.text = lang.name;
    
    
    cell.imageView.image = [UIImage imageNamed:lang.image];
    return cell;
    
}

@end
