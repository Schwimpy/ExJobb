//
//  ViewController.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-16.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        populateCells()
        setBackgroundColor()
        
        
    }
    
    private func populateCells() {
        data = [CellData.init(image: #imageLiteral(resourceName: "icon_car"), tableTitle: "CAR INFO", tableDescription: "Information & Specifications"),
                CellData.init(image: #imageLiteral(resourceName: "icon_climate"), tableTitle: "CLIMATE", tableDescription: "AC & Heating"),
                CellData.init(image: #imageLiteral(resourceName: "icon_battery"), tableTitle: "BATTERY", tableDescription: "Information & Statistics"),
                CellData.init(image: #imageLiteral(resourceName: "icon_location"), tableTitle: "LOCATION", tableDescription: "GPS"),
                CellData.init(image: #imageLiteral(resourceName: "icon_control"), tableTitle: "CONTROL", tableDescription: "Lights & Doors"),
                CellData.init(image: #imageLiteral(resourceName: "icon_diagnostics"), tableTitle: "DIAGNOSTICS", tableDescription: "Information & Statistics"),
                CellData.init(image: #imageLiteral(resourceName: "icon_engineering"), tableTitle: "ENGINEERING", tableDescription: "Direct Control")]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: (data[indexPath.row].tableTitle)!, sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainTableViewCell
        
        cell.CellImageView.image = data[indexPath.row].image
        
        cell.TitleLabel.text = data[indexPath.row].tableTitle
        cell.TitleLabel.textColor = UIColor.InfotivWhite
        
        cell.DescriptionLabel.text = data[indexPath.row].tableDescription
        cell.DescriptionLabel.textColor = UIColor.InfotivWhite
        
        cell.backgroundColor = UIColor.InfotivLightGray
        
        
        return cell
    }


}

