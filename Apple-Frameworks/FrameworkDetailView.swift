//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Carlos Román Alcaide on 5/3/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    //Al crear una variable en la View y no pasarle un valor, es necesario que para la preview la pasemos como parámetro
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
                //Botón refactorizado
            }
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    //La pasamos por aquí
}
