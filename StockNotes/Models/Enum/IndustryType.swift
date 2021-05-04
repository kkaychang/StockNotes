//
//  IndustryType.swift
//  StockNotes
//
//  Created by Oldkay Chang on 2021/5/4.
//

import Foundation

enum IndustryType: String, CaseIterable {

    /// 水泥工業
    case cement = "水泥工業"
    /// 資訊服務業
    case informationService = "資訊服務業"
    /// 玻璃陶瓷
    case glassCeramics = "玻璃陶瓷"
    /// 塑膠工業
    case plastic = "塑膠工業"
    /// 生技醫療業
    case biotechnologAndMedicine = "生技醫療業"
    /// 電子通路業
    case electronicChannel = "電子通路業"
    /// 電腦及週邊設備業
    case computersAndPeripheralEquipment = "電腦及週邊設備業"
    /// 航運業
    case shippingBusiness = "航運業"
    /// 存託憑證
    case depositaryReceipts = "存託憑證"
    /// 電子零組件業
    case electronicComponents = "電子零組件業"
    /// 文化創意業
    case curturalInnovation = "文化創意業"
    /// 半導體業
    case semiconductor = "半導體業"
    /// 紡織纖維
    case textileFiber = "紡織纖維"
    /// 鋼鐵工業
    case metal = "鋼鐵工業"
    /// 貿易百貨
    case tradeDepartmentStore = "貿易百貨"
    /// 電子商務
    case eCommerce = "電子商務"
    /// 農業科技
    case agriculturalTechnology = "農業科技"
    /// 油電燃氣業
    case energy = "油電燃氣業"
    /// 汽車工業
    case automobile = "汽車工業"
    /// 金融業
    case financial = "金融業"
    /// 造紙工業
    case paper = "造紙工業"
    /// 其他
    case other = "其他"
    /// 金融保險業
    case financeAndInsurance = "金融保險業"
    /// 其他電子業
    case otherElectronics = "其他電子業"
    /// 橡膠工業
    case rubber = "橡膠工業"
    /// 通信網路業
    case communicationNetwork = "通信網路業"
    /// 電機機械
    case electricMachinery = "電機機械"
    /// 建材營造
    case construction = "建材營造"
    /// 觀光事業
    case tourist = "觀光事業"
    /// 光電業
    case optoelectronics = "光電業"
    /// 食品工業
    case food = "食品工業"
    /// 電器電纜
    case electricCable = "電器電纜"
    /// 化學工業
    case chemical = "化學工業"
    /// 未知
    case unknown
}

//extension IndustryType: ExpressibleByStringLiteral {
//    init(stringLiteral value: StringLiteralType) {
//        switch value {
//        case "水泥工業":
//            self = .cement
//        case "資訊服務業":
//            self = .informationService
//        case "玻璃陶瓷":
//            self = .glassCeramics
//        case "塑膠工業":
//            self = .plastic
//        case "生技醫療業":
//            self = .biotechnologAndMedicine
//        case "電子通路業":
//            self = .electronicChannel
//        case "電腦及週邊設備業":
//            self = .computersAndPeripheralEquipment
//        case "航運業":
//            self = .shippingBusiness
//        case "存託憑證":
//            self = .depositaryReceipts
//        case "電子零組件業":
//            self = .electronicComponents
//        case "文化創意業":
//            self = .curturalInnovation
//        case "半導體業":
//            self = .semiconductor
//        case "紡織纖維":
//            self = .textileFiber
//        case "鋼鐵工業":
//            self = .metal
//        case "貿易百貨":
//            self = .tradeDepartmentStore
//        case "電子商務":
//            self = .eCommerce
//        case "農業科技":
//            self = .agriculturalTechnology
//        case "油電燃氣業":
//            self = .energy
//        case "汽車工業":
//            self = .automobile
//        case "金融業":
//            self = .financial
//        case "造紙工業":
//            self = .paper
//        case "其他":
//            self = .other
//        case "金融保險業":
//            self = .financeAndInsurance
//        case "其他電子業":
//            self = .otherElectronics
//        case "橡膠工業":
//            self = .rubber
//        case "通信網路業":
//            self = .communicationNetwork
//        case "電機機械":
//            self = .electricMachinery
//        case "建材營造":
//            self = .construction
//        case "觀光事業":
//            self = .tourist
//        case "光電業":
//            self = .optoelectronics
//        case "食品工業":
//            self = .food
//        case "電器電纜":
//            self = .electricCable
//        case "化學工業":
//            self = .chemical
//        default:
//            self = .unknown
//        }
//    }
//}

//- "水泥工業"
//- "資訊服務業"
//- "玻璃陶瓷"
//- "塑膠工業"
//- "生技醫療業"
//- "電子通路業"
//- "電腦及週邊設備業"
//- "航運業"
//- "存託憑證"
//- "電子零組件業"
//- "文化創意業"
//- "半導體業"
//- "紡織纖維"
//- "鋼鐵工業"
//- "貿易百貨"
//- "電子商務"
//- "農業科技"
//- "油電燃氣業"
//- "汽車工業"
//- "金融業"
//- "造紙工業"
//- "其他"
//- "金融保險業"
//- "其他電子業"
//- "橡膠工業"
//- "通信網路業"
//- "電機機械"
//- "建材營造"
//- "觀光事業"
//- "光電業"
//- "食品工業"
//- "電器電纜"
//- "化學工業"
