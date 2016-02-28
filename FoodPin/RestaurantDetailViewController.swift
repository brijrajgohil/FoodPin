//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Brijrajsinh Gohil 28/1/2016.
//  All rights reserved.
//


import UIKit

class RestaurantDetailViewController: UIViewController {
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var restaurantNameLabel:UILabel!
    @IBOutlet var restaurantTypeLabel:UILabel!
    @IBOutlet var restaurantLocationLabel:UILabel!
    
    var restaurantImage = ""
    var restaurantName = ""
    var restaurantType = ""
    var restaurantLocation = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: restaurantImage)
        restaurantNameLabel.text = restaurantName
        restaurantTypeLabel.text = restaurantType
        restaurantLocationLabel.text = restaurantLocation
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
