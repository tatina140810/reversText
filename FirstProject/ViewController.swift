import UIKit

class ViewController: UIViewController {
    
    let textReverser = TextReverser()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var lineImage: UIImageView!
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        if sender.currentTitle == "Clear" {
            clear()
            sender.setTitle("Reverse", for: .normal)
            setImageBackgroundColor(.blue)
        } else {
            reverseText()
            sender.setTitle("Clear", for: .normal)
            setImageBackgroundColor(.gray)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func reverseText() {
        guard let str = textField.text, !str.isEmpty else { return }
        let reversedText = textReverser.reverse(str)
        resultLabel.text = reversedText
    }
    
    private func clear() {
        textField.text = ""
        resultLabel.text = ""
    }
    
    private func setImageBackgroundColor(_ color: UIColor) {
        lineImage.layer.backgroundColor = color.cgColor
    }
}
