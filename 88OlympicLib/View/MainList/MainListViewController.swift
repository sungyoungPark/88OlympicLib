//
//  ViewController.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import UIKit
import SnapKit

class MainListViewController: UIViewController, ViewModelBindableType {
    
    weak var coordinator: MainCoordinator?
    var viewModel : MainListViewModel!
    
    lazy var tableView : UITableView = {
        let table = UITableView()
        
        table.delegate = self
        table.dataSource = self
        table.register(MainListTableViewCell.self, forCellReuseIdentifier: "DetailContent")  //테이블 뷰에 cell 등록
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableUI()
        
        //viewModel = MainListViewModel()
        
    }

    func setTableUI(){
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(0)
        }
    }
    
    
    func bindViewModel() {
        print("bind")
        viewModel.contentUpdate = { [weak self] in
            print("reload")
            self?.tableView.reloadData()
        }
        
        viewModel.list()
    }
}


extension MainListViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.contentCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainListTableViewCell.CellIdentifier) as! MainListTableViewCell
        
        let content = viewModel.content(at: indexPath.row)
        cell.setContent(content)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
