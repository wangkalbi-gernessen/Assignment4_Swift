//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Kazunobu Someya on 2020-12-16.
//  Copyright © 2020 Derrick Park. All rights reserved.
//
import UIKit

class DetailsViewController: UIViewController {
    
    var flag: String!
    var city: String!
    var temperature: Double!
    var summary: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let country = UILabel()
        country.text = "Country"
        country.font = UIFont.boldSystemFont(ofSize: 15)
        country.translatesAutoresizingMaskIntoConstraints = false
        
        let flag = UILabel()
        flag.text = self.flag
        flag.font = UIFont(name: "Helvetica Neue", size: 30)
        flag.translatesAutoresizingMaskIntoConstraints = false
        
        let cityLabel = UILabel()
        cityLabel.text = "City"
        cityLabel.font = UIFont.boldSystemFont(ofSize: 15)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cityName = UILabel()
        cityName.text = self.city
        cityName.font = UIFont(name: "Helvetica Neue", size: 30)
        cityName.translatesAutoresizingMaskIntoConstraints = false
        
        let temp = UILabel()
        temp.text = "Temperature"
        temp.font = UIFont.boldSystemFont(ofSize: 15)
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        let degree = UILabel()
        degree.text = String(self.temperature)
        degree.font = UIFont(name: "Helvetica Neue", size: 30)
        degree.translatesAutoresizingMaskIntoConstraints = false
        
        let summa = UILabel()
        summa.text = "Summary"
        summa.font = UIFont.boldSystemFont(ofSize: 15)
        summa.translatesAutoresizingMaskIntoConstraints = false
        
        let summaStr = UILabel()
        summaStr.text = self.summary
        summaStr.font = UIFont(name: "Helvetica Neue", size: 30)
        summaStr.translatesAutoresizingMaskIntoConstraints = false
        
        let stackView = UIStackView(arrangedSubviews: [country,flag,cityLabel,cityName,temp,degree,summa,summaStr])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.spacing = 0
        stackView.alignment = .center
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 100).isActive = true
        stackView.heightAnchor.constraint(equalTo:view.heightAnchor, multiplier: 0.6).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
}
