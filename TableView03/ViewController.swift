
//
//  ViewController.swift
//  TableView03
//
//  Created by dit03 on 2019. 4. 30..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
//    var animals = ["Cat", "Dog", "Pig", "Bird", "Whale", "Cow"]
//    var detail = ["고양이", "강아지", "돼지", "새", "고래", "소"]
    
//    let formatter: DateFormatter = {
//        let f = DateFormatter()
//        f.dateStyle = .long
//        f.timeStyle = .none
//        f.locale = Locale(identifier: "KO_kr")
//        return f
//    } ()
    
    let f = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        
        // 날짜 형식 지정
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "KO_kr")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Memo.dummyMemoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)//셀 하나 만드는데 재활용
        let row = indexPath.row
        
        let target = Memo.dummyMemoList[row]
        cell.textLabel?.text = target.content
        //cell.detailTextLabel?.text = "\(target.insertData)"
        cell.detailTextLabel?.text = f.string(from: target.insertData)
        
        //이미지 넣기
        //cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
        
    }
}

