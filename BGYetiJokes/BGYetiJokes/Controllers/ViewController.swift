//
//  ViewController.swift
//  BGYetiJokes
//
//  Created by bhavesh on 28/08/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

  // MARK: - Instance properties
  public let jokeProvider: JokeProvider = JokeProvider(fileName: "jokes")

  // MARK: - Outlets
  @IBOutlet public var textLabel: UILabel!
  @IBOutlet public var segmentedControl: UISegmentedControl!

  // MARK: - Actions
  @IBAction public func segmentedControlValueChanged(_ sender: UISegmentedControl) {

  }

  @IBAction public func newJokePressed(_ sender: UIButton) {
    guard let joke = jokeProvider.jokes.randomElement() else {
      return
    }

    textLabel.text = joke.question + "\n\n" + joke.answer
  }
}
