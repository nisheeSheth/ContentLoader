//
//  ViewController.swift
//  ContentPlaceholderLoader
//
//  Created by Sufalam 4 on 02/05/18.
//  Copyright © 2018 Sufalam 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var viewLoader: UIView!
    @IBOutlet weak var tblContentLoader: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tblContentLoader.reloadData()
        Loader.addLoaderTo(self.tblContentLoader)
        Loader.addLoaderToViews([viewLoader])
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(loadedStop), userInfo: nil, repeats: false)
    }
    
    @objc func loadedStop()
    {
        Loader.removeLoaderFrom(self.tblContentLoader)
        Loader.removeLoaderFromViews([viewLoader])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LoaderTableViewCell") as! LoaderTableViewCell
        
        cell.lblName.text = "Nishee sheth"
        cell.txtviewAddress.text = "B-45, siddhi darshan App.,Nr shirvanji cross road, Ahmedabad - 380034"
        cell.lblAbout.text = "It adds an animated gradient to the content views of the visible cells. After that it inserts a cutout view wherever all the other views are with holes where all the text and image views are. The alphas of all the text and image views are set to zero."
        return cell
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

