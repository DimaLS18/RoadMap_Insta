//
//  ViewController.swift
//  RoadMap_Insta
//
//  Created by Dima Kovrigin on 18.10.2022.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARK: - Constants

    private enum Constants {
        static let storiesCellIdentifier = "storiesCell"
        static let postCellIdentifier = "postCell"
        static let recommendationCellIdentifier = "recommendationCell"
    }

    // MARK: - IBOutlet

    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Visual Components

    private let refreshControl = UIRefreshControl()

    // MARK: - Private properties

    private let items: [SelectPost] = [SelectPost]()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupRefreshControl()
    }

    // MARK: - Private methods

    private func setupTableView() {
        tableView.dataSource = self
        tableView.refreshControl = refreshControl
    }

    private func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refresAction(_:)), for: .valueChanged)
    }

    private func generateItems() -> [SelectPost] {
        var instaItems: [SelectPost] = [SelectPost]()
        instaItems.append(SelectPost.stories)
        instaItems.append(SelectPost.post)
        instaItems.append(SelectPost.recommendation)
        instaItems.append(SelectPost.post)
        instaItems.append(SelectPost.post)
        return instaItems
    }

    @objc private func refresAction(_ sender: Any) {
        refreshControl.endRefreshing()
    }
}

// MARK: - UITableViewDataSource

extension HomeViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return generateItems().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = generateItems()[indexPath.row]
        switch item {
        case .stories:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.storiesCellIdentifier, for: indexPath)
            return cell
        case .post:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.postCellIdentifier, for: indexPath)
            return cell
        case .recommendation:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: Constants.recommendationCellIdentifier,
                for: indexPath
            )
            return cell
        }
    }
}
