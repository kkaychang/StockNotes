//
//  StockNotesMainViewController.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/3.
//

import UIKit

/// 股票記事主頁

class StockNotesMainViewController: UIViewController {

    /// 股票類別
    @IBOutlet weak var collectionView: UICollectionView!

    private let viewModel = StockNotesMainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
        bindData()
    }
}

private extension StockNotesMainViewController {

    func registerCollectionView() {
        // 註冊Cell
        let cellNib = UINib(nibName: "\(StockIndustryCell.self)", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "\(StockIndustryCell.self)")
        collectionView.dataSource = self

        // 設定CollectionView FlowLayout
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 15
        // 亦可使用DataSource方法
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 3 - 20, height: UIScreen.main.bounds.width / 3 - 20)

        collectionView.collectionViewLayout = layout

        // 增加拖動手勢
        collectionView.dragInteractionEnabled = true
    }

    func bindData() {
//        viewModel.getTWStockList { [weak self] in
//            dump(self?.viewModel.stockSimpleList)
//        } errorHandler: { (error) in
//            print(error)
//        }
        collectionView.reloadData()
    }
}

extension StockNotesMainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.sortedIndustryList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(StockIndustryCell.self)", for: indexPath) as? StockIndustryCell, viewModel.sortedIndustryList.count > indexPath.row else { return UICollectionViewCell() }
        cell.setupCell(industryName: viewModel.sortedIndustryList[indexPath.row].rawValue)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        print("source: \(sourceIndexPath), destination: \(destinationIndexPath)")
    }
}
