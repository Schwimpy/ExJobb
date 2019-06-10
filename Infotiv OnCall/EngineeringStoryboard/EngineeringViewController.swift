//
//  EngineeringViewController.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-20.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class EngineeringViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        populateCells()
        setBackgroundColor()
    }
    
    private func populateCells() {
        data = [CellData.init(image: #imageLiteral(resourceName: "icon_remote"), tableTitle: "REMOTE", tableDescription: "Direct Control"),
        CellData.init(image: #imageLiteral(resourceName: "icon_display"), tableTitle: "DISPLAY", tableDescription: "Center Stack Application"),
        CellData.init(image: #imageLiteral(resourceName: "icon_settings"), tableTitle: "DEVELOPER", tableDescription: "Settings & Information")]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: (data[indexPath.row].tableTitle)!, sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EngineeringCell") as! EngineeringTableViewCell
        
        cell.imageCell.image = data[indexPath.row].image
        
        cell.titleLabel.text = data[indexPath.row].tableTitle
        cell.titleLabel.textColor = UIColor.InfotivWhite
        
        cell.descriptionLabel.text = data[indexPath.row].tableDescription
        cell.descriptionLabel.textColor = UIColor.InfotivWhite
        
        cell.backgroundColor = UIColor.InfotivLightGray
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
