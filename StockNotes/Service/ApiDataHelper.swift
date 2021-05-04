//
//  ApiDataHelper.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/4.
//

import Foundation

class ApiDataHelper {
    static let share = ApiDataHelper()

    init() {}
}

extension ApiDataHelper {
    /// 取得台股上市櫃清單
    func getStockList(urlString: String, successHandler: @escaping (([StockSimpleInfo]) -> Void), errorHandler: @escaping ((String) -> Void)) {
        let requestPath = urlString 
        guard let requestURL = URL(string: requestPath) else {
            errorHandler("網址有誤，請確認")
            return
        }
        URLSession.shared.dataTask(with: requestURL) { (data, response, error) in
            guard let data = data else {
                errorHandler("資料轉型有誤")
                return
            }
            guard let jsonData = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] else { return }
            let result = jsonData.map { (dict) -> StockSimpleInfo in
                let industry = IndustryType.allCases.first { (caseData) in
                    caseData.rawValue == dict["產業別"] as? String ?? ""
                }
                return StockSimpleInfo(code: dict["公司代號"] as? String ?? "",
                                       name: dict["公司簡稱"] as? String ?? "",
                                       industry: industry ?? .unknown)
            }
            successHandler(result)
        }.resume()
    }
}
