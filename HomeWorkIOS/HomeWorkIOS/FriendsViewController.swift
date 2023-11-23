//
//  FriendsViewController.swift
//  HomeWorkIOS
//
//  Created by Герман Яренко on 22.11.23.
//
import UIKit

final class FriendsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        view.backgroundColor = .gray
        tableView.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .yellow
        navigationController?.navigationBar.barTintColor = .white
        NetworkService().getFriends()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        FriendCell()
    }
}
