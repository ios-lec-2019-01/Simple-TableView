//
//  DetailViewController.swift
//  TableView03
//
//  Created by 김종현 on 16/05/2019.
//  Copyright © 2019 201820028. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var memo: Memo?

    @IBOutlet weak var detailTableView: UITableView!
    
     let f = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()

        detailTableView.dataSource = self
        detailTableView.delegate = self
        
        // 날짜 형식 지정
        f.dateStyle = .long
        f.timeStyle = .medium
        f.locale = Locale(identifier: "KO_kr")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return (memo?.content.count)!
        return (2)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "memoCell", for: indexPath)
            cell.textLabel?.text = memo?.content
            return cell
        } else if indexPath.row == 1 {
            let cell = detailTableView.dequeueReusableCell(withIdentifier: "dateCell", for: indexPath)
            cell.textLabel?.text = f.string(for: memo?.insertData)
            return cell
        } else {
            fatalError()
        }

//        switch indexPath.row {
//        case 0:
//            let cell = detailTableView.dequeueReusableCell(withIdentifier: "memoCelll", for: indexPath)
//            cell.textLabel?.text = memo?.content
//            return cell
//
//        case 1:
//            let cell = detailTableView.dequeueReusableCell(withIdentifier: "dateCell", for: indexPath)
//            cell.textLabel?.text = f.string(for: memo?.insertData)
//            return cell
//
//         default:
//            fatalError()
//        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
