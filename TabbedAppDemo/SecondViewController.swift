//
//  SecondViewController.swift
//  TabbedAppDemo
//
//  Created by Nichole on 6/20/21.
//  Copyright © 2021 Nichole. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = self.words[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var words: [String] = ["one", "two", "three"]
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let store = UserDefaults.standard
        let t = store.object(forKey: "qqq") as! String
        self.words.append(t)
        self.tableView.beginUpdates()
        self.tableView.insertRows(at: [IndexPath.init(row: self.words.count-1, section: 0)], with: .automatic)
        self.tableView.endUpdates()
    }
    
    
}

