//
//  ViewController.swift
//  SeeFood
//
//  Created by Narongsak_O on 3/9/18.
//  Copyright © 2018 nProject. All rights reserved.
//

import UIKit

class SeeFoodViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    //MARK: - @objc
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cameraBarButton: UIBarButtonItem!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self

    }
    
    //MARK: - capture image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
            imageView.image = image
            imagePicker.dismiss(animated: true, completion: nil
            )
        } else {
            print("There was an error could not capture image")
        }
    }


    //MARK: - Take Photo Image
    @IBAction func addImageBar(_ sender: UIBarButtonItem) {
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
}

