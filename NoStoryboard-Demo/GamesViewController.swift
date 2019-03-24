//
//  GamesViewController.swift
//  NoStoryboard-Demo
//
//  Created by Kent Winder on 03/23/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
    var tableView: UITableView!
    var viewModel = GamesViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.getGames()
    }
    
    func setupViews() {
        // title
        title = "Games"
        
        // create table view
        tableView = UITableView()
        
        // set translatesAutoresizingMaskIntoConstraints property to false
        // so we can apply constraints to the tableView
        // by default, the property is set to true for any view you programmatically create. If you add views in Interface Builder, the system automatically sets this property to false.
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        // add table view to view
        view.addSubview(tableView)
        
        // leading anchor
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        // trailing anchor
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        // top anchor
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        // bottom anchor
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
        tableView.dataSource = self
        tableView.allowsSelection = false
        tableView.register(GameTableViewCell.self, forCellReuseIdentifier: GameTableViewCell.identifier)
    }
}

extension GamesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(inSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameTableViewCell.identifier) as! GameTableViewCell
        cell.game = viewModel.data(forRowAt: indexPath)
        return cell
    }
}

