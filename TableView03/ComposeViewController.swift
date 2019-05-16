//
//  ComposeViewController.swift
//  TableView03
//
//  Created by 김종현 on 16/05/2019.
//  Copyright © 2019 201820028. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        let memo = memoTextView.text
        
        // var unwrappedValue = optionalValue ?? defaultValue
        // var unwrappedValue = optionalValue ? optionalValue! : defaultValue
        let newMomo = Memo(content: memo ?? " ")
        Memo.dummyMemoList.append(newMomo)
        dismiss(animated: true, completion: nil)
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
