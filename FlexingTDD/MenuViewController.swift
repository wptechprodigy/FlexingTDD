//
//  MenuViewController.swift
//  FlexingTDD
//
//  Created by waheedCodes on 21/04/2022.
//

import UIKit

class MenuViewController: UIViewController {

    var pizzas: [Pizza] = Pizza.loadPizzas()
    lazy var menuDataSource: MenuDataSource = MenuDataSource(pizzas: pizzas)

    private lazy var menuTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "MenuViewCell")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.dataSource = self

        setupViews()
    }

    private func setupViews() {
        view.addSubview(menuTableView)
        setupContraints()
    }

    private func setupContraints() {
        NSLayoutConstraint.activate([
            menuTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            menuTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            menuTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            menuTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}

extension MenuViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return menuDataSource.numberOfSections
    }

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return menuDataSource.numberOfRows(inSection: section)
        }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "MenuViewCell", for: indexPath)
            guard let menuItem = menuDataSource.item(
                forRow: indexPath.row, inSection: indexPath.section) else {
                    return cell
                }

            var content = cell.defaultContentConfiguration()

            // Configure content.
            content.image = UIImage(systemName: "star")
            content.text = menuItem.title

            // Customize appearance.
            content.imageProperties.tintColor = .purple

            cell.contentConfiguration = content

            return cell
        }
}
