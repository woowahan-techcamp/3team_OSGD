//
//  CartViewController.swift
//  fling
//
//  Created by woowabrothers on 2017. 8. 21..
//  Copyright © 2017년 osgd. All rights reserved.
//

import UIKit
import AlamofireImage

class CartViewController: UIViewController {

    var cart = Cart()

    @IBOutlet weak var cartTableView: UITableView!
    @IBOutlet weak var totalPriceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }

        cart = appDelegate.cart

        updateTotalPrice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func updateTotalPrice() {
        var total = Decimal()

        cart.recipes.forEach { object in
            total += object.totalPrice()
        }

        totalPriceLabel.text = total.addPriceTag()
    }
}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.recipes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //swiftlint:disable line_length
        guard let cell =
            cartTableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as? CartTableViewCell else {
                return CartTableViewCell()
        }

        let recipe = cart.recipes[indexPath.row]
        if recipe.image != "" {
            cell.recipeImage?.af_setImage(withURL: URL(string: recipe.image)!)
        }

        cell.recipeTitleLabel?.text = recipe.title
        cell.recipeSubtitleLabel?.text = recipe.subtitle

        var price = recipe.totalPrice()
        cell.priceLabel?.text = price.addPriceTag()

        let count = 4
        var materialList = String()
        for(index, element) in recipe.products.enumerated() where (index <= count) {
            let name = element.product.materialName
            materialList.append("\(name)")
            if index != count && index != recipe.products.count - 1 {
                materialList.append(", ")
            }
        }
        if recipe.products.count > count {
            materialList.append("...")
        }
        cell.materialListLabel?.text = materialList

        return cell
    }
}