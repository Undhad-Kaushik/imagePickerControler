//
//  ImagePickerController.swift
//  imagePickerControler
//
//  Created by R87 on 02/01/18.
//

import UIKit

class ImagePickerController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var profilePictureButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setup()
        
        
    }
    
    private func setup(){
        [profilePictureButton,profilePictureButton].forEach {
            setCornerRadious(view: $0, cornerRadious: 10)
        }
    }
    func setCornerRadious(view: UIView?, cornerRadious: CGFloat){
        view?.layer.cornerRadius = cornerRadious
        view?.layer.masksToBounds = true
    }
    
    private func displayActionSheet(){
        let alert: UIAlertController = UIAlertController(title: "Profile Picture", message: "Please select Photo from following Options", preferredStyle: .actionSheet)
        
        let cameraButtonNew: UIAlertAction = UIAlertAction(title: "camera", style: .default) { button in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                //self.openCamera()
                self.openImagePicker(sourceType: .camera)
            }
            else
            {
                self.displayAlert(messege: "camera is not Available")
            }
        }
        
        
        let galleryButton: UIAlertAction = UIAlertAction(title: "Photos",style: .default) { button in
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
              //  self.openPhotos()
                self.openImagePicker(sourceType: .photoLibrary)
            }else{
                self.displayAlert(messege: "gallary is note available")
            }
        }
        
        let cancelButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cameraButtonNew)
        alert.addAction(galleryButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
        
     }
        
        
    @IBAction func profilePictureButton(_ sender: UIButton) {
        displayActionSheet()
    }
    
    private func openPhotos() {
            let imagePicker: UIImagePickerController = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        }
    private func openCamera(){
            let imagePicker: UIImagePickerController = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            present(imagePicker,animated: true, completion: nil)
        }
    private func openImagePicker(sourceType: UIImagePickerController.SourceType){
            let imagePicker: UIImagePickerController = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = sourceType
            imagePicker.allowsEditing = true
            present(imagePicker,animated: true, completion: nil)
                
        }
        
    func imagePickerController(_ picker: UIImagePickerController , didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey: Any]){
            dismiss(animated: true, completion: nil)
            //profilePictureImageView.image info[.originalImage] as? UIImage
            profilePictureImageView.image = info[.editedImage] as? UIImage
        }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
            dismiss(animated: true, completion: nil)
            print("cancel Button Clicked")
        }
//
//            func imagePickerController(_ picker: UIImagePickerController , didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
//
//            }
//
//            func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//
//            }
        
    private func displayAlert(messege: String){
            let alert: UIAlertController = UIAlertController(title: "Error", message: messege, preferredStyle: .alert)
            let okButton: UIAlertAction = UIAlertAction(title: "okey", style: .default) { button in
                print("okey Button Tapped")
            }
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
        
    }
    

