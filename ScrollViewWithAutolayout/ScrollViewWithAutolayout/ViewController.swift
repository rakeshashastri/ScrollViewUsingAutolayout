//
//  ViewController.swift
//  ScrollViewWithAutolayout
//
//  Created by Rakesha Shastri on 18/08/18.
//  Copyright © 2018 RakeshaShastri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView =  UIScrollView(frame: .zero)
    
    lazy var contentView: UIView = UIView()
    
    lazy var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addScrollView()
        addRedView()
        addBlueView()
    }
    
    /// Adds the scrollView and the contentView that is used to determine the contentSize of the scrollView.
    func addScrollView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor    .constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.topAnchor        .constraint(equalTo: view.topAnchor).isActive = true
        scrollView.trailingAnchor   .constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor     .constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor   .constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.topAnchor       .constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.trailingAnchor  .constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor    .constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor     .constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
    }
     // Notice how the scrollView is attached to the view's edges and the contentView which is inside the scrollView is also attached to the scrollview. But the scrollViews uses the content inside it to determine contentSize. The contentSize is the one that determines the scroll area, not the scrollview's frame and this contentSize is determined by what is inside the scrollView.
    
    func addRedView() {
        contentView.addSubview(redView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        redView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        redView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        redView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * (2/3)).isActive = true
    }
    
    func addBlueView() {
        contentView.addSubview(blueView)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * (2/3)).isActive = true
    }
    
}
