//
//  StockNotesMainViewModel.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/4.
//

import Foundation

class StockNotesMainViewModel {

    private(set) var stockSimpleList: [StockSimpleInfo] = []

    init() {

    }

}

extension StockNotesMainViewModel {

    func getTWStockList(successHandler: @escaping (() -> Void), errorHandler: @escaping ((String) -> Void)) {
        // 先取得上市清單
        ApiDataHelper.share.getStockList(urlString: "https://quality.data.gov.tw/dq_download_json.php?nid=18419&md5_url=9791ec942cbcb925635aa5612ae95588") { [weak self] (datas) in
            self?.stockSimpleList.append(contentsOf: datas)

            // 取得上櫃清單
            ApiDataHelper.share.getStockList(urlString: "https://quality.data.gov.tw/dq_download_json.php?nid=25036&md5_url=1aae8254db1d14b0d113dd93f2265d06") { (datas) in
                self?.stockSimpleList.append(contentsOf: datas)
                successHandler()
            } errorHandler: { (error) in
                errorHandler("取得上櫃清單錯誤")
            }

        } errorHandler: { (error) in
            errorHandler("取得上市清單錯誤")
        }
    }
}
