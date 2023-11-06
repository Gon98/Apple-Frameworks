//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Gonçalo Rocha on 24/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    
    @State var isShowingSafariView = false
    
    let framework: Framework
    
    var body: some View {
        VStack {
            
            HStack {
                
                Spacer()
                
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                }
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
