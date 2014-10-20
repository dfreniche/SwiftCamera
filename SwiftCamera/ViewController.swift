import UIKit
import MobileCoreServices


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    
    @IBAction func takePhoto(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self;
            imagePicker.sourceType = .Camera;
            imagePicker.mediaTypes = NSArray(object: kUTTypeImage)
            imagePicker.allowsEditing = false;
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }

        
    }
    

    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        
        // close Take Photo View Controller
        self.dismissViewControllerAnimated(true, completion: nil)
        
        self.imageView.image = image;
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
       println("Cancelled")
        
        self.dismissViewControllerAnimated(true, completion: nil)

    }
    
    
}

