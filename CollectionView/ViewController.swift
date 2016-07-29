//
//  ViewController.swift
//  CollectionView
//
//  Created by Jack on 06/01/16.
//  Copyright © 2016 com.mindlogic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var arrayOfNames:NSMutableArray=["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg","12.jpg","13.jpg","14.jpg","15.jpg","16.jpg","17.jpg","18.jpg"]

    @IBOutlet weak var colletionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     // MARK: CollectionView Method
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfNames.count
    }
    
   
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        
     
         let images = cell.viewWithTag(1) as! UIImageView
         images.image=UIImage(named: arrayOfNames[indexPath.row] as! String)
         
         return cell
    }
    
    func collectionView(collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            
            let cellWidth = (collectionView.bounds.width / 2) - 20
            
            return CGSize(width: cellWidth, height: cellWidth)
    }
    
    
    func collectionView(collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            
            return UIEdgeInsets(top: 10.0, left: 15.0, bottom: 10.0, right: 15.0)
    }
    
    
}

