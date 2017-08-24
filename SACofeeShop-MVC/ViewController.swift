//
//  ViewController.swift
//  SACofeeShop-MVC
//
//  Created by Sulabh Agarwal on 8/23/17.
//  Copyright © 2017 Sulabh Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let csView = CSView()
    let csModel = CSDrinkModel()
    //let csDrink = CSDrink()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addCofeeShopView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addCofeeShopView() {
        let boxSize: CGFloat = view.bounds.width
        csView.frame = CGRect(x: 0,y: 0,
                                   width: boxSize,
                                   height: view.bounds.height)
        csView.parentFrame = view.frame
        csView.delegate = self
        view.addSubview(csView)
        
    }

}

extension ViewController : CSViewProtocol {
    
    func cofeeNameUpdate(_ segmentIndex: Int) {
        self.csModel.setDrinkName(segmentIndex: segmentIndex)
    }
    
    func cofeeShotsUpdateWithCurrent(_ value: Int) {
        csModel.numOfShots = value
    }
    
    func cofeeHotIceTypeUpdate(_ segmentIndex: Int) {
        csModel.setCofeeIceOrHotType(type: icedOrHotType(rawValue: segmentIndex)!)
    }
    
    func cofeeSizeUpdate(_ segmentIndex: Int) {
        csModel.setCofeeDrinkSize(dsize: drinkSize(rawValue: segmentIndex)!)
    }
    
    func confirmOrderButtonTapped() {
        csModel.prepareOrder() {
            (response) in
            if response == true {
              //Succss
                csView.resetData()
                let alert = UIAlertController(title: "Order", message: "Order Placed Succesfully", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}

