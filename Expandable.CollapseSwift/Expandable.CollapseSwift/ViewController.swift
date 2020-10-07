//
//  ViewController.swift
//  Expandable.CollapseSwift
//
//  Created by Boss on 10/7/20.
//  Copyright © 2020 Boss. All rights reserved.
//

import UIKit
struct Student {
    var name: String
    var age: String
    var address: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var isShowCell1: Bool = true
    var isShowCell2: Bool = true
    var liststudent = [Student]()
    var numbers =  Array(1...10)
    override func viewDidLoad() {
        super.viewDidLoad()
        liststudent = [Student(name: "Cường", age: "20", address: "Thanh Hoá"),
                       Student(name: "Luyện", age: "20", address: "Hà Nội"),
                       Student(name: "Hằng", age: "20", address: "Ninh Bình")]
        tableView.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "TableViewCell1")
        tableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        tableView.register(UINib(nibName: "TitleTableViewCell1", bundle: nil), forCellReuseIdentifier: "TitleTableViewCell1")
        tableView.register(UINib(nibName: "TitleTableViewCell2", bundle: nil), forCellReuseIdentifier: "TitleTableViewCell2")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return isShowCell1 ? numbers.count : 0
        case 2:
            return 1
        case 3:
            return isShowCell2 ? liststudent.count : 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell1", for: indexPath) as! TitleTableViewCell1
            cell.isShow = isShowCell1
            cell.fillData()
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as! TableViewCell1
            cell.nameLabel.text = "\(numbers[indexPath.row])"
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell2", for: indexPath) as! TitleTableViewCell2
            cell.isShow = isShowCell2
            cell.fillData()
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            cell.infoStudent = liststudent[indexPath.row]
            cell.fillData()
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            isShowCell1 = !isShowCell1
        case 2:
            isShowCell2 = !isShowCell2
        default:
            break
        }
        tableView.reloadData()
    }
    
    
}

