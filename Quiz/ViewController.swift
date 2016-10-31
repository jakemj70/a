//
//  ViewController.swift
//  Quiz
//
//  Created by Jake Johnson on 10/7/16.
//  Copyright © 2016 Jake Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        answerArray = [Int]()
        incorrectString = ""
        numberIncorrect = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    //Need to create the test in this class
}

var q0 = Question(x: ["What does a turn consist of?" , "Action & Bonus Action" , " Reaction " , " Movement " , "All of the above"], y: 4)
var q1 = Question(x: ["What is a spell slot?" , "The list of spells I know" ,"The number of spells I can learn", "The number of spells I can cast" , "The list of spells ready to cast today"], y: 3)
var q2 = Question(x: ["Some classes (like warlocks) have known spells.\nOther classes may acquire known spells through their race or other means.\nWhat is a known spell?", "A spell you do not have to prepare and can always cast", "A spell you do not have to prepare and can always cast using a spell slot", "A spell you have learned and have prepared", "New spells you get upon leveling up"], y: 2)
var q3 = Question(x: ["What is a hit die?", "The amount of health you can roll to recover during a short rest", "The amount of health you can roll to recover during a short rest", "The die rolled to determine the chance for an enemy to hit you", "The die rolled to determine chance to hit"], y: 1)
var q4 = Question(x: ["What is magical attunement?", "The ability to cast spells", "The ability to detect magicical enemies nearby", "The ability to use some magical items", "All of the above"], y: 3)
var q5 = Question(x: ["What is a prepared spell?", "The list of spells I know", " The number of spells I can learn", "The number of spells I can cast", "The list of spells ready to cast today"], y: 4)
var q6 = Question(x: ["How much health is recovered during a short rest?", "10 hp per level", "1 hit die", "Up to all of your hit die", "All of your missing hp"], y: 3)
var q7 = Question(x: ["How many silver make a gold?", "1/10", "10", "100","1000"], y: 3)
var q8 = Question(x: ["What is a DC (dificulty class)?", "The roll with bonuses a player has to make to hit with a spell or a manuever", "How high a player has to roll with bonuses to hit an enemy", "The difficulty of an enemy listed in the monster manual", "The number of a roll + bonuses a player or creature must make to overcome an obstacle or save against a spell"], y: 4)
var q9 = Question(x: ["How do I calculate a melee/ranged hit?", "Roll a d20", "Roll a d20, add proficiency bonus",  "Roll a d20, add proficiency bonus, and add Str or Dex modifier", "None of the above"], y: 3)
var q10 = Question(x: ["How do I calculate damage for a crit?", "Double the damage", "Double the damage dice", "Roll an extra d10", "Add 1d4 per level"], y: 2)
var q11 = Question(x: ["How does advantage work?", "Roll two d20 and keep the higher of the two rolls", "Add an extra d10 to the roll", "Add your proficiency bonus to the roll", "Roll two d20 and take the average or the higher number"], y: 1)
var q12 = Question(x: ["What is a saving throw?", "Throwing a potion to an injured party member", "A roll to protect against a spell, poison, trap, etc.", "A roll to determine if a spell hits", "A hail Mary touchdown attempt"], y: 2)
var q13 = Question(x: ["How can I increase my character stats?", "Certain magical items", "Taking stats or a feat when leveling to a certain level as shown on my class guide", "Getting a boon from a powerful entity", "All of the above"], y: 4)
var q14 = Question(x: ["How can I save someone from dying?", "Heal them","Medicine check to stabilize", "Use a healer's kit", "All of the above"], y: 4)
var q15 = Question(x: ["Where is Cody's bed and TV?", "Stolen", "Pranked", "Taken to a demiplane", "Astral pocket"], y: 1)
var q16 = Question(x: ["What is a long rest?", "A rest of roughly 8+ hours", "A rest that restores all hit die and spell slots", "A rest that restore all hp", "All of the above"], y: 4)
var q17 = Question(x: ["What is AC?", "Advanced Combat", "Accuracy Check", "Armor Class", "Artificial Clones"], y: 3)
var q18 = Question(x: ["Often DnD will refer to things in the format 'number'+'d'+'number'. What does '4d6' mean?", " 4 divived by 6", "4 dice with 6 sides", "6 dice with 4 sides", "None of the above"], y: 2)
var q19 = Question(x: ["How is damage resistance calculated?", "Half the damage", "Half the damage dice", "Subtract a d10", "Subtract 1d4 per level"], y: 1)
var q20 = Question(x: ["What is the name of the woman Strahd is after?", "Talyia", "Tatyana", "Ireena", "Ismark"], y: 2)


var test = Test(x: [q0, q1, q2, q3, q4, q5, q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20])
