//
//  ViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 09/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides:[Slide] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      scrollView.delegate = self
        
      slides = createSlide()
      setupSlideScrollView(slides: slides)
      
      pageControl.numberOfPages = slides.count
      pageControl.currentPage = 0

    }
    
    //load slide content to the scrollview
    func createSlide() -> [Slide] {
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.imageView.image = UIImage(named: "02m")
        slide1.titleLabel.text = "Lawu Mountain"
        slide1.shortBriefLabel.text = "is located on the border of Central Java and East Java. This Mountain is a volcano that has long been inactive with the highest point 3265 m above sea level"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.imageView.image = UIImage(named: "02n")
        slide2.titleLabel.text = "Everest Mountain"
        slide2.shortBriefLabel.text = "is located on the border of Central Java and East Java. This Mountain is a volcano that has long been inactive with the highest point 3265 m above sea level"
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.imageView.image = UIImage(named: "02o")
        slide3.titleLabel.text = "Beach"
        slide3.shortBriefLabel.text = "is located on the border of Central Java and East Java. This Mountain is a volcano that has long been inactive with the highest point 3265 m above sea level"
        
        return[slide1, slide2, slide3]
    }
    
    //initializing a list of 3 slides to be added as a subview to the scrollview
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    //Method to change page control to its current page when scrollview updated
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }

    

}

