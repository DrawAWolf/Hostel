

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var getAllHostels = GetAllHostels()
    var hostels = Array<Hostel>()
    var hostelList = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("something output")
        
        self.view.backgroundColor = UIColor.orange
        
        
        hostelList.frame = CGRect.zero
        hostelList.dataSource = self
        hostelList.delegate = self
        hostelList.register(HostelViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.addSubview(hostelList)
        getAllHostels.getFromJSON { (hostels) in
        self.hostels = hostels
        }
    }
    
 /*   override func viewWillAppear(_ animated: Bool) {
        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        myView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        let ground = myView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 250)
        ground.identifier = "bottom"
        ground.isActive = true
        
        myView.layer.cornerRadius = 10
        super.viewWillAppear(animated)
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->String? {
        // 設置為陣列 dataArray 的第 row 項資料
        return hostel.dataArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hostel.dataArray.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBAction func searchButton(_ sender: UIBarButtonItem) {
        displayPickerView(true)
    }
    
    @IBAction func doneClick(_ sender: Any) {
        let addr = hostel.dataArray[pickerView.selectedRow(inComponent: 0)]
        displayPickerView(false)
    }
    
    func displayPickerView(_ show: Bool) {
        for ground in view.constraints {
            if ground.identifier == "bottom" {
                ground.constant = (show) ? -10 : 250
                break
            }
        }
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hostels.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! HostelViewCell
        let hostel = hostels[indexPath.row]
        cell.nameLabel.text = hostel.nameArray
        cell.addressLabel.text = hostel.addressArray
        cell.priceLabel.text = hostel.priceArray
        print(hostel.addressArray)
        return cell
    }
    
 /*   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
        let targetView = segue.destination as! HostelDetailViewController
        targetView.getName = hostel.nameArray[indexPath.row]
        targetView.getAddress = hostel.addressArray[indexPath.row]
        targetView.getPrice = hostel.priceArray[indexPath.row]
        targetView.getPhoneNum1 = hostel.phoneNum1Array[indexPath.row]
        targetView.getEmail = hostel.emailArray[indexPath.row]
        targetView.getUrl = hostel.urlArray[indexPath.row]
        targetView.getLatitude = hostel.latitudeArray[indexPath.row]
        targetView.getLongitude = hostel.longitudeArray[indexPath.row]
        print(targetView.getName)
    }  */
    
}


