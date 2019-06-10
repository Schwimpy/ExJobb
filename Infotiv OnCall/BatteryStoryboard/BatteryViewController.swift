//
//  BatteryViewController.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-20.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class BatteryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    var data = [CellData]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateCells()
        setBackgroundColor()

        // Do any additional setup after loading the view.
    }
    
    private func populateCells() {
        data = [CellData.init(image: nil, tableTitle: "Capacity", tableDescription: "N/A"),
        CellData.init(image: nil, tableTitle: "Average Consumption", tableDescription: "N/A"),
        CellData.init(image: nil, tableTitle: "Average Distance", tableDescription: "N/A"),
        CellData.init(image: nil, tableTitle: "Times Charged", tableDescription: "N/A")]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BatteryCell") as! BatteryTableViewCell
        
        cell.titleLabel.text = data[indexPath.row].tableTitle
        cell.titleLabel.textColor = UIColor.InfotivWhite
        
        cell.descriptionLabel.text = data[indexPath.row].tableDescription
        cell.descriptionLabel.textColor = UIColor.InfotivWhite
        
        cell.underline.backgroundColor = UIColor.InfotivWhite
        cell.behindTitle.backgroundColor = UIColor.InfotivBehindIcons
        
        cell.backgroundColor = UIColor.InfotivLightGray
        cell.selectionStyle = .none
        
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
