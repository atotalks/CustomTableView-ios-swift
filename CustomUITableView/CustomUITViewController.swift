//
//  CustomUITViewController.swift
//  CustomUITableView
//
//  Created by JuneK on 20/08/2019.
//  Copyright © 2019 JuneK. All rights reserved.
//

import UIKit

class CustomUITViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    let menus = ["apple","banana","banana","melon","watermelon","grape"]
    let images = ["fruit00","fruit01","fruit02","fruit03","fruit04","fruit05"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func BackButtonAction(sender: AnyObject) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

}

extension CustomUITViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "FirstCustomCell", for: indexPath) as! FirstCustomCell
        
        cell.tvLabel.text = menus[indexPath.row]
        cell.tvImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    
    
}

extension CustomUITViewController : UITableViewDelegate {
    
}
