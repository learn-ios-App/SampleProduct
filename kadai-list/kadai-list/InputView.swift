//
//  InputView.swift
//  kadai-list
//
//  Created by 渡邊魁優 on 2023/11/25.
//

import SwiftUI

struct InputView: View {
    @State var item = Item(name: "", isCheck: false)
    
    let save: (Item) -> Void
    let cancel: () -> Void
    
    var body: some View {
        NavigationStack {
            TextField("title", text: $item.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
            .toolbar {
                ToolbarItem {
                    Button("save") {
                        save(item)
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button("cancel") {
                        cancel()
                    }
                }
            }
        }
    }
}

#Preview {
    InputView(save: { _ in }, cancel: {})
}
