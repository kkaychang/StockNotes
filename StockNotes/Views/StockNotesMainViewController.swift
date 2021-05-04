//
//  StockNotesMainViewController.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/3.
//

import UIKit

class StockNotesMainViewController: UIViewController {

    private let viewModel = StockNotesMainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
}

extension StockNotesMainViewController {

    func bindData() {
        viewModel.getTWStockList { [weak self] in
            dump(self?.viewModel.stockSimpleList)
        } errorHandler: { (error) in
            print(error)
        }

    }
}
