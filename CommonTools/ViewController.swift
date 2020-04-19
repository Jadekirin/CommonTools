//
//  ViewController.swift
//  CommonTools
//
//  Created by maweilong on 2020/4/19.
//  Copyright © 2020 maweilong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DataCache(_ sender: Any) {
        let mapData = "vsvffddvaaf"
        
        let mapFile = FilePathUtils.setupFilePath(directory: .documents, name: "mapData")
        let result =  FileUtils.writeFile(content: mapData.data(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))!, filePath: mapFile)
        print("保存数据结果---\(result)")
    }
    
    @IBAction func DataRead(_ sender: Any) {
        let path = FilePathUtils.setupFilePath(directory: .documents, name: "mapData")
         let readData : Data? = FileUtils.readFile(filePath: path)
         if readData == nil {
             return
         }
         let readString =  String.init(data: readData ?? Data.init(), encoding:.utf8)
        print("读取数据成功----\(readString)")
    }
}

