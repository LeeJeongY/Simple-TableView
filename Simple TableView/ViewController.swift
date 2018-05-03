//
//  ViewController.swift
//  Simple TableView
//
//  Created by D7703_23 on 2018. 5. 3..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var animals = ["Cat", "Tiger", "Lion"]
    var country = ["Korea", "China", "Africa"]
    var ani = ["1.jpg", "2.jpg", "3.jpg"]
    
    // row의 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    //cell의 메모리 할당
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell의 재사용
        let identifier = "RE"
        // cell을 하나 메모리 할당하고 재사용을 위해 저장("RE")
        let cell  = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        //  배열에 있는 데이터를 cell에 넣기
        cell.textLabel?.text = animals[indexPath.row]
        // RE에서 subtitle or right detail
        cell.detailTextLabel?.text = country[indexPath.row]
        
        // 이미지넣기
        let myImage = UIImage(named: ani[indexPath.row])
        cell.imageView?.image = myImage
        
        return cell
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

