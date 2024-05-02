//
//  HikesView.swift
//  Landmarks
//
//  Created by Charlin Leo on 02/05/24.
//

import SwiftUI

struct HikesView: View {
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button {
                    showDetail.toggle()
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1 )
                        .padding()
                        .animation(.spring(), value: showDetail)
                }
            }
            if showDetail {
                HikeDetail(hike: hike)
            }
        }
    }
}

//#Preview {
//    HikesView(hike: hike, showDetail: true)
//}
