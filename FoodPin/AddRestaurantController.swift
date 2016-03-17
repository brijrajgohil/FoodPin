//
//  AddRestaurantController.swift
//  FoodPin
//
//  Created by Brijrajsinh Gohil on 16/03/16.
//  Copyright © 2016 Brijrajsinh Gohil. All rights reserved.
//

import UIKit

class AddRestaurantController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    var isVisited: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .PhotoLibrary
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        let leadingConstraints = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .Equal, toItem: imageView.superview, attribute: .Leading, multiplier: 1, constant: 0)
        leadingConstraints.active = true
        
        let trailingConstraint = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: imageView.superview, attribute: .Trailing, multiplier: 1, constant: 0)
        trailingConstraint.active = true
        
        let topConstraint = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: imageView.superview, attribute: .Top, multiplier: 1, constant: 0)
        topConstraint.active = true
        
        let bottonConstraint = NSLayoutConstraint(item: imageView, attribute: .Bottom, relatedBy: .Equal, toItem: imageView.superview, attribute: .Bottom, multiplier: 1, constant: 0)
        bottonConstraint.active = true
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func save(sender: UIBarButtonItem) {
        if(nameTextField.text == "" || typeTextField.text == "" || locationTextField.text == "") {
            let cancelMenu = UIAlertController(title: nil, message: "We cannot proceed because one of the fields is blank. Please note that all fields are required.", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            cancelMenu.addAction(cancelAction)
            self.presentViewController(cancelMenu, animated: true, completion: nil)
        }
        else {
            print("Name : " + nameTextField.text!)
            print("Type : " + typeTextField.text!)
            print("Location : " + locationTextField.text!)
            print("Have you been there : \(isVisited)")
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func toggleBeenHereButton(sender: UIButton) {
        if sender == yesButton {
            isVisited = true
            yesButton.backgroundColor = UIColor.redColor()
            noButton.backgroundColor = UIColor.grayColor()
        }
        else if sender == noButton {
            isVisited = false
            yesButton.backgroundColor = UIColor.grayColor()
            noButton.backgroundColor = UIColor.redColor()
        }
    }
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
