//
//  ViewController.swift
//  sentiTable
//
//  Created by 김세헌 on 18/6/20.
//  Copyright © 2020 김세헌. All rights reserved.
//
// 테이블뷰 
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //data 몇 개? 10 줄
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //what data? 반복 10번 ?
        //방법 2가지
        //1번째 - 임의의 셀 만들기
        //let cell = UITableViewCell.init(style: .default,reuseIdentifier: "TableCellType1")
//        let cell = UITableViewCell.init(style: .default,reuseIdentifier: "Type1")
        //2번째 방법 - 스토리보드 + id : 실전
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        cell.LabelText?.text = "\(indexPath.row)"
        //as? as! 부모 자식 친자 확인
        //cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    //클릭
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewMain.delegate=self
        TableViewMain.dataSource=self
    }
    //Table View 테이블로 된 뷰 - 
    
}

