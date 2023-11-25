//
//  ContentView.swift
//  kadai-list
//
//  Created by 渡邊魁優 on 2023/11/25.
//

import SwiftUI

struct ListView: View {
    @StateObject var itemData = ItemData()

    var body: some View {
        NavigationStack {
            List {
                ForEach($itemData.items) { item in
                    ListRow(item: item) { item in
                        itemData.didTapCheckButton(item: item)
                    }
                }
                .onDelete(perform: { indexSet in
                    itemData.didTapDeleteButton(offset: indexSet)
                })
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        itemData.didTapPlusbutton()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationTitle("アイテムリスト")
            .navigationBarTitleDisplayMode(.inline)
        }
        .sheet(isPresented: $itemData.isActive) {
            InputView { item in
                itemData.didTapSaveButon(item: item)
            } cancel: {
                itemData.didTapCancelButton()
            }
        }
    }
}

#Preview {
    ListView()
}
