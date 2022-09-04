//
//  sidemenuViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 14/07/22.
//

import UIKit
import MapKit
import GooglePlaces
import FloatingPanel

class sidemenuViewController: UIViewController ,FloatingPanelControllerDelegate {

    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var sideview: UIView!
    @IBOutlet var tabelview: UITableView!
    var resultsViewController: GMSAutocompleteResultsViewController?
    var searchController: UISearchController?
    var arrvalue = [String?]()
    var arrimage = [String?]()
    var issideviewopen: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
     tabelview.delegate = self
        tabelview.dataSource = self
      arrvalue = ["User Name","Email","Address","Mobile","Logout"]
        arrimage = ["male","mail","home","iphone","logout-1"]
       sideview.isHidden = true
        
       issideviewopen = true
        setupSearchController()
        resultsViewController?.delegate = self
    }
    func setupSearchController() {
        resultsViewController = GMSAutocompleteResultsViewController()
        searchController = UISearchController(searchResultsController: resultsViewController)
        searchController?.searchResultsUpdater = resultsViewController

        let searchBar = searchController!.searchBar
        searchBar.sizeToFit()
        searchBar.placeholder = "Search for places"
        navigationItem.titleView = searchController?.searchBar
        definesPresentationContext = true
        searchController?.hidesNavigationBarDuringPresentation = false
    }
    

  
    @IBAction func sidemenu(_ sender: Any) {
        sideview.isHidden = false
        tabelview.isHidden = false
        self.view.bringSubviewToFront(sideview)
        if !issideviewopen{
            issideviewopen = true
            sideview.frame = CGRect(x: 414, y: 111, width: 0, height: 724)
            tabelview.frame = CGRect(x: 294, y: 0, width: 0, height: 679)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideview.frame = CGRect(x: 107, y: 96, width: 307, height: 766)
            tabelview.frame = CGRect(x: 0, y: 0, width: 307, height: 766)
            UIView.commitAnimations()
            
        }else
        {
            sideview.isHidden = true
            tabelview.isHidden = true
            issideviewopen = false
            sideview.frame = CGRect(x: 120, y: 111, width: 294, height: 724)
            tabelview.frame = CGRect(x: 54, y: 0, width: 240, height: 679)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideview.frame = CGRect(x: 408, y: 96, width: 6, height: 766)
            tabelview.frame = CGRect(x: 302, y: 0, width: 5, height: 766)
            UIView.commitAnimations()
            
        }
        
    }
    
}
extension sidemenuViewController: UITableViewDelegate , UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrvalue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tablecell", for: indexPath) as! TableViewCell
       
        cell.lblname.text = arrvalue[indexPath.row]
             cell.image2.image =  UIImage(named: arrimage[indexPath.row] ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  75
    }
}
    
extension sidemenuViewController: GMSAutocompleteResultsViewControllerDelegate {
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didAutocompleteWith place: GMSPlace) {
        
        searchController?.isActive = false

        
        mapView.removeAnnotations(mapView.annotations)

        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: place.coordinate, span: span)
        mapView.setRegion(region, animated: true)

        
        let annotation = MKPointAnnotation()
        annotation.coordinate = place.coordinate
        annotation.title = place.name
        annotation.subtitle = place.formattedAddress
        mapView.addAnnotation(annotation)
    }
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didFailAutocompleteWithError error: Error) {
        print("Error: \(error.localizedDescription)")
    }
    
    
}

