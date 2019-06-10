//
//  ClimateViewController.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-20.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

struct Cities: Decodable {
    var name : String
}

class ClimateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate {
   
    var data = [CellData]()
    var cityString = "Göteborgs Kommun"
    //var cityString = "Dudinka"
    var temperature : Int = 0
    var arrayOfCityNames : [Cities]?
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "49ce4de544b8d27059946cdda6ae29b6"
    
    @IBOutlet weak var OutsideDegreesLabel: UILabel!
    
    //Declaring instance variables
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateCells()
        setBackgroundColor()

        arrayOfCityNames = loadJson() as? [Cities]
        
        //Sets up the location manager here
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        userEnteredANewCity(city: cityString)
        
    }
    
    func loadJson() -> [Cities?]? {
        if let url = Bundle.main.url(forResource: "city.list", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Cities].self, from: data)
                
                return jsonData
                
            }
            catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func userEnteredANewCity(city: String) {
        
        let params : [String : String] = ["q" : city, "appid" : APP_ID]
        print("här är userenteredanewcity")
        getWeatherData(url: WEATHER_URL, parameters: params)
        
    }
    
    func getWeatherData(url: String, parameters: [String: String]) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess {
                
                let weatherJSON : JSON = JSON(response.result.value!)
                
                self.updateWeatherData(json: weatherJSON)
                
            }
            else {
                //print("Error \(String(describing: response.result.error))")
                self.OutsideDegreesLabel.text = "Connection Issues"
            }
        }
    }
    
    func updateWeatherData(json : JSON) {
        
        if let tempResult = json["main"]["temp"].double {
            
            print("\(tempResult) detta är tempen")
            temperature = Int(tempResult - 273.15)
            print("\(temperature) detta är tempen")
            
            OutsideDegreesLabel.text = "\(temperature)°C"
            
        }
        else {
            OutsideDegreesLabel.text = "??°C"
        }
    }
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let location = locations[locations.count - 1]
//        if location.horizontalAccuracy > 0 {
//            print("här är locationmanager")
//            locationManager.stopUpdatingLocation()
//            locationManager.delegate = nil
//
//            //print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
//
//            let latitude = String(location.coordinate.latitude)
//            let longitude = String(location.coordinate.longitude)
//
//            let params : [String : String] = ["lat" : latitude, "lon" : longitude, "appid" : APP_ID]
//
//            getWeatherData(url: WEATHER_URL, parameters: params)
//        }
//    }
    
    private func populateCells() {
        data = [CellData.init(image: nil, tableTitle: "Tomorrow at 08:00", tableDescription: nil),
                CellData.init(image: nil, tableTitle: "Tuesday at 11:00", tableDescription: nil),
                CellData.init(image: nil, tableTitle: "Friday at 23:00", tableDescription: nil)]
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClimateCell") as! ClimateTableViewCell
        
        cell.TimeLabel.text = data[indexPath.row].tableTitle
        cell.TimeLabel.textColor = UIColor.InfotivWhite
        cell.underLine.backgroundColor = UIColor.InfotivLightGray
        
        cell.underLine.backgroundColor = UIColor.InfotivWhite
        cell.backgroundColor = UIColor.InfotivLightGray
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
