//
//  Extension.swift
//  GitRepoSearch
//
//  Created by VJ's iMAC on 06/05/20.
//  Copyright © 2020 Deuglo. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{

    func showEmptyMessage(_ message:String, isEmpty: Bool){
           
           if isEmpty{
               let emptyLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
               emptyLabel.text = message
               emptyLabel.numberOfLines = 0
               emptyLabel.textColor = UIColor.gray
               emptyLabel.textAlignment = NSTextAlignment.center
               self.backgroundView = emptyLabel
               self.backgroundView?.isHidden = false
               self.separatorStyle = UITableViewCell.SeparatorStyle.none
           }else{
               self.backgroundView?.isHidden = true
           }
       }
}


extension UIView{

    func makeRounded(){
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }

}

