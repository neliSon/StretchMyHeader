//
//  MasterViewController.swift
//  StretchMyHeader
//
//  Created by Nelson Chow on 2016-04-12.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var headerView: UIView!
    
    let kTableHeaderHeight = CGFloat(250.0)
    var newsItems = [NewsItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        loadFakeData()
        setImage()
        setDate()
    }

    // MARK: - Table View

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsItems.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsTableViewCell", forIndexPath: indexPath) as! NewsTableViewCell

        let newsItem = newsItems[indexPath.row]
        cell.categoryLabel!.text = newsItem.categoryString()
        cell.categoryLabel!.setColor(newsItem.category)
        cell.headlineLabel!.text = newsItem.headlineString()
        return cell
    }
    
    // MARK: - General Functions
    
    func configureTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65.0
        
        tableView.tableHeaderView = nil
        
        tableView.addSubview(headerView)
        
        tableView.contentInset = UIEdgeInsets(top: kTableHeaderHeight, left: 0, bottom: 0, right: 0)
        headerView.frame.origin.y = -kTableHeaderHeight + 8
    }
    
    func loadFakeData() {
        var item = NewsItem(category: .World, headline: .World)
        newsItems.append(item)
        
        item = NewsItem(category: .Americas, headline: .Americas)
        newsItems.append(item)
        
        item = NewsItem(category: .Europe, headline: .Europe)
        newsItems.append(item)
        
        item = NewsItem(category: .MiddleEast, headline: .MiddleEast)
        newsItems.append(item)
        
        item = NewsItem(category: .Africa, headline: .Africa)
        newsItems.append(item)
        
        item = NewsItem(category: .AsiaPacific, headline: .AsiaPacific)
        newsItems.append(item)
    }
    
    func setImage() {
        let bgImage = UIImage(named: "bg-header")
        newsImageView.image = bgImage
    }
    
    func setDate() {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        let date = NSDate()
        let dateString = dateFormatter.stringFromDate(date)
        dateLabel.textColor = UIColor.whiteColor()
        dateLabel.text = dateString
    }
    
//    func updateHeaderView() {
//        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
//        if tableView.contentOffset.y < -kTableHeaderHeight {
//            headerRect.origin.y = tableView.contentOffset.y
//            headerRect.size.height = -tableView.contentOffset.y
//        }
//    }
//    
//    override func scrollViewDidScroll(scrollView: UIScrollView) {
//        updateHeaderView()
//    }
}