//
//  ViewController.swift
//  ScrollViewWithAutolayout
//
//  Created by Rakesha Shastri on 18/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: UI Element(s)
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .green
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: View Controller Method(s)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        addConstraints()
    }
    
    //MARK: Helper Method(s)
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(redView)
        contentView.addSubview(blueView)
    }
    
    func addConstraints() {
        scrollView.leadingAnchor    .constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor   .constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor        .constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor     .constraint(equalTo: view.bottomAnchor).isActive = true
        
        //  The scroll view has get a frame now, which would the same as that of the view. But this doesn't describe the content inside it.
        //  Depending on what you have inside the scroll view, the "contentSize" of the scroll view changes. I recommend adding a container
        //  which will hold the contents of the scroll view which will have a fixed width/height depending on your scroll direciton.
        
        contentView.leadingAnchor   .constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor  .constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.widthAnchor     .constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        contentView.topAnchor       .constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor    .constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        redView.leadingAnchor       .constraint(equalTo: contentView.leadingAnchor).isActive = true
        redView.trailingAnchor      .constraint(equalTo: contentView.trailingAnchor).isActive = true
        redView.topAnchor           .constraint(equalTo: contentView.topAnchor).isActive = true
        redView.heightAnchor        .constraint(equalToConstant: UIScreen.main.bounds.height * (2/3)).isActive = true
        
        blueView.leadingAnchor      .constraint(equalTo: contentView.leadingAnchor).isActive = true
        blueView.trailingAnchor     .constraint(equalTo: contentView.trailingAnchor).isActive = true
        blueView.topAnchor          .constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.bottomAnchor       .constraint(equalTo: contentView.bottomAnchor).isActive = true
        blueView.heightAnchor       .constraint(equalToConstant: UIScreen.main.bounds.height * (2/3)).isActive = true
        
        // The heights specified by you (or the intrinsic height if available) will help in defining the scroll height. The width can also be
        // adjusted.
    }
    
}
