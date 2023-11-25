//
//  ListRow.swift
//  kadai-list
//
//  Created by 渡邊魁優 on 2023/11/25.
//

import SwiftUI

struct ListRow: View {
    @Binding var item: Item
    let tapCheck: (Item) -> Void
    var body: some View {
            HStack {
                Text(item.name)
                Spacer()
                Button(action: {
                    tapCheck(item)
                }) {
                    Image(systemName: item.isCheck
                          ? "checkmark.circle"
                          : "circle"
                    )
                }
                .buttonStyle(.borderless)
            }
    }
}

struct Preview: View {
    @State var item = Item(name: "AAA", isCheck: false)
    var body: some View {
        ListRow(item: $item, tapCheck: { _ in })
    }
}

#Preview {
    Preview()
}
