//
//  ItemData.swift
//  kadai-list
//
//  Created by 渡邊魁優 on 2023/11/25.
//

import Foundation

class ItemData: ObservableObject {
    @Published var items: [Item] = []
    @Published var isActive = false
    
    func didTapPlusbutton() {
        isActive = true
    }
    func didTapDeleteButton(offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
    func didTapCheckButton(item: Item) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else {
            return
        }
        items[index].isCheck.toggle()
    }
    func didTapSaveButon(item: Item) {
        items.append(item)
        isActive = false
    }
    func didTapCancelButton() {
        isActive = false
    }
}
