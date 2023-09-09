//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 윤강록 on 2023/09/09.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    // 두가지 프로토콜을 채용
    // Identifiable은 리스트에 데이터를 쉽게 바인딩하기 위해서 필요
    // ObservableObject memo를 편집할 때 뷰를 자동으로 업데이트 하기 위해서
    
    let id: UUID
    @Published var content : String  //Publish을 주면 새로운 값을 저장할 때마다 바인딩 되어있는 UI가 자동 업데이트
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
