//
//  ViewController2.swift
//  AltinHesaplama
//
//  Created by macbook on 2.06.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var baslik1Label: UILabel!
    @IBOutlet weak var baslik2Label: UILabel!
    
    
    @IBOutlet weak var placeholderLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baslik1Label.layer.cornerRadius = 20
        baslik2Label.layer.cornerRadius = 20
        
        // kırmızı gölge efekti ekle
        baslik1Label.layer.shadowColor = UIColor.white.cgColor
        baslik1Label.layer.shadowOffset = CGSize(width: 3, height: 4)
        baslik1Label.layer.shadowOpacity = 1.0  // gölge opaklığı 0.0 ile 1.0 aralığında
        baslik1Label.layer.shadowRadius = 10  // gölgenin yuvarlak köşesini belirtir
        
        // kırmızı gölge efekti ekle
        baslik2Label.layer.shadowColor = UIColor.white.cgColor
        baslik2Label.layer.shadowOffset = CGSize(width: 3, height: 4)
        baslik2Label.layer.shadowOpacity = 1.0  // gölge opaklığı 0.0 ile 1.0 aralığında
        baslik2Label.layer.shadowRadius = 10  // gölgenin yuvarlak köşesini belirtir
        
        
    }
    
    
    @IBAction func hesaplaButon(_ sender: Any) {
        
        ////////////////////////// URL yi Oluşturup Veriyi Almak ////////////////////
        
        // 1.adım : Request & Session
        // 2.adım : Response & Data
        // 3.adım : Parsing & JSON Serialization
        
        let url = URL(string: "https://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")   // buraya çekmek istediğimiz url yi yazacaz
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
            
            // bu kısımdan sonra info kısmına girip + ya basıp oradan (App Transport Security Settings) i seçip yanında bitişiğinde ok işaretini aşağı yönlendirip (App Transport Security Settings) bunun yanındaki + işaretinden (Allow Arbitrary Loads) ı seç ve NO olan text kısmına Yes yaz
            
            else {
                if data != nil {
                    
                    do{
                        
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        // dictionary kullanarak verileri anahtar kelimeye göre çektik
                        
                        //ASYNC
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["result"] as? [String : Any] {
                                print("result")
                                
                                if let gramAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let ceyrekAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let cumhuriyetAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let tamAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let yarimAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let onsAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let hasAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                if let bilezikAltin = rates["url deki gram altının anahtar ismi"] as? Double {
                                    
                                }
                                
                            }
                        }
                        
                    } catch {
                        print("error")
                    }
                    
                }
            }
        }
            task.resume()  // bu kod ile başlatıyoruz bu olmazsa bütün kod boşuna yoksa başlamaz
        
    }
}


