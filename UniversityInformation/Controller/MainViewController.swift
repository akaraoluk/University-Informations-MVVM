//
//  MainViewController.swift
//  UniversityInformation
//
//  Created by Abdurrahman Karaoluk on 19.04.2024.
//

import UIKit

class MainViewController: UITableViewController {
    //Mark: - Properties
    var viewModel: MainViewModel = MainViewModel()
    var dataResult: [University] = [] {
        didSet { tableView.reloadData()}
    }
    //Mark: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

//Mark: - Helpers

extension MainViewController {
    private func configureView() {
        view.backgroundColor = .red
    }
    func setup() {
        configureView()
        registerTableView()
        getData()
    }
    
    func getData() {
        viewModel.getData { result in
            self.dataResult = result
        }
    }
}
