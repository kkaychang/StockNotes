//
//  StockNotesMainViewModel.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/4.
//

import Foundation

class StockNotesMainViewModel {

    private(set) var sortedIndustryList: [IndustryType] = []
    private(set) var stockSimpleList: [StockSimpleInfo] = []

    init() {
        getUserSortIndustryList()
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

    /// 取得用戶排序股票類別清單(有預設值)
    func getUserSortIndustryList() -> [IndustryType] {
        sortedIndustryList = UserDefaults.standard.array(forKey: "UserSortIndustryList") as? [IndustryType] ?? getDefaultIndustryList()
        return sortedIndustryList
    }

    /// 儲存用戶排序股票類別清單
    func saveUserSortedIndustryList(sortedList: [IndustryType]) {
        UserDefaults.standard.set(sortedList, forKey: "UserSortIndustryList")
    }

    /// 更新用戶排序股票類別清單
    func updateUserSortedIndustryList(currentIndex: Int, updateIndex: Int) {
        var updateList = sortedIndustryList
        let updateItem = sortedIndustryList[currentIndex]
        updateList.remove(at: currentIndex)
        updateList.insert(updateItem, at: updateIndex)
        sortedIndustryList = updateList
        saveUserSortedIndustryList(sortedList: sortedIndustryList)
    }
}

private extension StockNotesMainViewModel {
    func getDefaultIndustryList() -> [IndustryType] {
        return IndustryType.allCases.filter { $0 != .unknown }
    }
}
