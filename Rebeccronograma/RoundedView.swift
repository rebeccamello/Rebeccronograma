//
//  RoundedView.swift
//  Rebeccronograma
//
//  Created by Rebecca Mello on 11/08/21.
//

import Foundation
import UIKit

//class RoundedView: UIView{
//    var cornerRadius: CGFloat = 20
//
//    override func layoutSubviews() {
//        self.layer.masksToBounds = true
//        self.layer.cornerRadius = cornerRadius
//    }
//}

//o IBDesignable faz o storyboard mostrar essas mudanças
@IBDesignable class RoundedView: UIView{
    @IBInspectable var cornerRadius: CGFloat = 20 {
        //faz com que sempre que eu mude o valor desse corner, ele refaz essa parte que ta dentro do didSet, mostrando no storyboard
        didSet{
            self.layer.masksToBounds = true
            self.layer.cornerRadius = cornerRadius
        }
    }
}
