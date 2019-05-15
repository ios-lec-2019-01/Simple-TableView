//
//  Memo.swift
//  TableView03
//
//  Created by 김종현 on 15/05/2019.
//  Copyright © 2019 201820028. All rights reserved.
//

import Foundation

class Memo {
    var content: String
    var insertData: Date
    
    init(content: String) {
        self.content = content
        insertData = Date()
    }
    
    // static variables/class are variables can be accessed without need of creation of any instance/object.
    static var dummyMemoList = [
        Memo(content: "학교 쉬는날"),
        Memo(content: "친구 만나는날")]
}
