//
//  StockSimpleInfo.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/4.
//

import Foundation

struct StockSimpleInfo {
    /// 股票代號(公司代號)
    let code: String

    /// 股票名稱(公司簡稱)
    let name: String

    /// 產業別(產業別)
    let industry: IndustryType
}
