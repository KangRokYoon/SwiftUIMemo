//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by 윤강록 on 2023/09/09.
//
// memo 목록을 저장하는 class구현
import Foundation
 
class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awesome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
        
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)  // 새로운 메모를 0번 인덱스에 추가(새로운 메모가 가장 먼저 표시된다)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll {$0.id == memo.id}
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
