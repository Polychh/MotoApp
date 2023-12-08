//
//  TestDetailView.swift
//  MotoControll
//
//  Created by Polina on 01.12.2023.
//

import SwiftUI
import MarkdownUI

struct DetailView: View {
    var titleText: MarkdownContent = theoryTheory.title
    var bodyText: MarkdownContent = theoryTheory.body
    var images: [String?] = theoryTheory.images
    var videoId: String = theoryTheory.videoId
    @State private var isLoading = true
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false){
                YouTubeView(videoId: videoId, isLoading: $isLoading )
                    .frame(width: geometry.size.width, height: 200)
                    .cornerRadius(12)
                    .overlay {
                        Group{
                            if isLoading {
                                ProgressView().controlSize(.large).tint(.green)
                            }
                        }
                    }

                VStack(alignment: .leading, spacing: 16){
                    Markdown(titleText)
                        .padding(.top,8)
                    Markdown(bodyText)
                }
                .markdownTextStyle {
                    FontFamily(.custom("Trebuchet MS"))
                }
                .markdownTheme(.gitHub)
                .padding(.horizontal)
                LazyHStack(spacing: 8){
                    ForEach(images.compactMap{$0}, id: \.self){ img in
                        Image(img)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width / CGFloat(images.count), height: 100)
                    }
                }
            }
        }
 
    }
}

#Preview {
    DetailView()
}
