//
//  ContentPanel.swift
//  Tutorial
//
//  Created by Jared Davidson on 12/8/24.
//

import AppKit
import SwiftUI

class ContentPanel: NSPanel {
    
    init() {
        super.init(
            contentRect: .zero,
            styleMask: [.borderless, .nonactivatingPanel, .titled],
            backing: .buffered,
            defer: true
        )
        
        setupWindow()
        setupContentView()
    }
    
    private func setupWindow() {
        backgroundColor = .clear
        isOpaque = false
        hasShadow = false
        level = .floating
        isMovableByWindowBackground = true
        titlebarAppearsTransparent = true
        titleVisibility = .hidden
        
        collectionBehavior = [
            .canJoinAllSpaces,
            .stationary
        ]
    }
    
    private func setupContentView() {
        let contentView = ContentView() {
            self.close()
        }
        
        let hostingView = NSHostingView(rootView: contentView)
        self.contentView = hostingView
        
        hostingView.setFrameSize(hostingView.fittingSize)
        
        if let screen = NSScreen.main {
            let padding: CGFloat = 20
            
            let screenFrame = screen.visibleFrame
            let xPosition = screenFrame.maxX - hostingView.frame.width - padding
            let yPosition = screenFrame.minY + padding
            
            setFrameOrigin(NSPoint(x: xPosition, y: yPosition))
            setContentSize(hostingView.frame.size)
        }
    }
}
