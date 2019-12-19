//
//  TweetViewController.swift
//  Twitter
//
//  Created by Mark Falcone on 12/18/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var tweetTextView: UITextView!
    
    
    
    
    @IBAction func tweet(_ sender: Any) {
        if (tweetTextView.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweetTextView.text, success: self.dismiss(animated: true, completion: nil), failure: ( error ), in print("error in posting \(error")
                self.dismiss(animated: true, completion: nil)
                })
                else{
                self.dismiss(animated: true, completion: nil)
            }
    }
        
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
