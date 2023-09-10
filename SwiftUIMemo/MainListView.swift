//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by 윤강록 on 2023/09/09.
//

import SwiftUI

struct MainListView: View {
    
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) {
                memo in VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1) // 메모가 길어도 한줄만 표시
                    Text(memo.insertDate, style:  .date)
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
