//
//  DiagnosticsViewController.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-20.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class DiagnosticsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var data = [CellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        populateCells()
        setBackgroundColor()

        // Do any additional setup after loading the view.
    }
    
    private func populateCells() {
        data = [CellData.init(image: #imageLiteral(resourceName: "icon_brake_fluid"), tableTitle: "Brake Fluid", tableDescription: nil),
        CellData.init(image: #imageLiteral(resourceName: "TPMS_warning_icon"), tableTitle: "Tire", tableDescription: nil),
        CellData.init(image: #imageLiteral(resourceName: "engine-coolant"), tableTitle: "Coolant", tableDescription: nil),
        CellData.init(image: #imageLiteral(resourceName: "lights"), tableTitle: "Lights", tableDescription: nil),
        CellData.init(image: #imageLiteral(resourceName: "oil"), tableTitle: "Oil", tableDescription: nil),
        CellData.init(image: nil, tableTitle: "Service", tableDescription: nil),
        CellData.init(image: #imageLiteral(resourceName: "windshield-washer"), tableTitle: "Washer Fluid", tableDescription: nil)]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiagnosticsCell") as! DiagnosticsTableViewCell
        
        cell.cellImage.image = data[indexPath.row].image
        
        cell.titleLabel.text = data[indexPath.row].tableTitle
        cell.titleLabel.textColor = UIColor.InfotivWhite
        
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
