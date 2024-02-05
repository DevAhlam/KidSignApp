//
//  Model.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 18/07/1445 AH.

import Foundation

struct Page: Identifiable, Equatable {

   
    let id = UUID()
    var word: String
    var sentence: String
    var Image: String
    var GifImage: String
    var tag: Int
    var index : Int
   
    
    
    
    
    //Emotion
    
    static var happy: [Page] = [
        
        Page(word: "سعيد", sentence: "", Image :"happyph", GifImage: "happyword",tag: 1 , index:1),
        
        Page(word:"", sentence: "أنا سعيد",  Image :"happyph", GifImage: "happy",tag: 2,index : 1),]
   
    static var Sad: [Page] = [
        
        Page(word: "حزين", sentence: "", Image :"sadph", GifImage: "sadword", tag: 1, index: 2),
        
        Page(word: "", sentence: "أنا أشعر بالحزن",  Image :"sadph", GifImage: "sad",tag: 2, index: 2),]
    
    static var excited: [Page] = [
    
        Page(word:"متحمس", sentence: "",Image :"excitedph", GifImage: "excitedword",tag: 1, index: 3),
    
        Page(word: "", sentence: "أنا اشعر بالحماس", Image :"excitedph", GifImage: "excited",tag: 2, index: 3),]
    
    static var boring: [Page] = [
    
        Page(word :"طفشان ", sentence: "",Image :"boringph", GifImage: "boringword", tag: 1, index: 4),
    
        Page(word: "", sentence: "أنا طفشان", Image :"boringph", GifImage: "boring",tag: 2, index: 4),]
    
    
    //Routine1
    
    static var hungry: [Page] = [
        
        Page(word:"جوعان", sentence: "", Image :"hungryph", GifImage: "hungryword",tag: 1, index: 1),
        
        Page(word:"", sentence: "أنا أشعر بالجوع", Image :"hungryph",  GifImage: "hungry",tag: 2, index: 1),]
    
    
    
    static var full: [Page] = [
    
        Page(word:"شبعان", sentence: "", Image :"fullph",GifImage: "fullword",tag: 1, index: 2),
    
        Page(word: "", sentence: "أنا شبعان", Image :"fullph", GifImage: "full",tag: 2, index: 2),]
    

    
   
    
    static var thirsty: [Page] = [
        
        Page(word:"عطشان", sentence: "",  Image :"thirstyph",GifImage: "thirstyword", tag: 1, index: 3),
        
        Page(word: "", sentence:  "أنا أشعر بالعطش", Image :"thirstyph",  GifImage: "thirsty", tag: 2, index: 3),]
    
   
    
    static var washface: [Page] = [
    
        Page(word:"غسل الوجه ", sentence: "",Image :"washfaceph", GifImage: "washfaceword",tag: 1, index: 4),
    
        Page(word: "غسل وجهي", sentence:  "أنا أريد غسل وجهي", Image :"washfaceph", GifImage: "washface", tag: 2, index: 4),]
    
    static var washhand: [Page] = [
        
        Page(word:"غسل اليدين", sentence: "",Image :"washhandph", GifImage: "washhandword",tag: 1, index: 5),
        
        Page(word: "", sentence: "أنا أريد غسل يدي", Image :"washhandph", GifImage: "washhand",tag: 2, index: 5),]
    
    
    
    
    static var bath: [Page] = [
    
        Page(word:"الاستحمام", sentence: "", Image :"bathph",GifImage: "bathword", tag: 1, index: 6),
    
        Page(word:"", sentence: "أريد الاستحمام", Image :"bathph", GifImage: "bath", tag: 2, index: 6),]
    
   
    
    
    
    
    //Routine2
    
    
    
    
    static var toilet: [Page] = [
        
        Page(word:"الحمام", sentence: "",Image :"toiletph", GifImage: "toiletword",tag: 1, index: 1),
        
        Page(word: "", sentence:  "أنا أريد الحمام", Image :"toiletph", GifImage: "toilet",tag: 2, index: 1),]
    
    
    static var brushing: [Page] = [
    
        Page(word:"تفريش الاسنان", sentence: "", Image :"brushingph",GifImage: "brushingword",tag: 1, index: 2),
    
        Page(word: "", sentence: "أنا أريد تفريش اسناني",Image :"brushingph",  GifImage: "brushing", tag: 2, index: 2),]
    
    
    static var clothes: [Page] = [
        
        Page(word: "تبديل الملابس", sentence: "",Image :"changeph", GifImage: "changeword",tag: 1, index: 3),
        
        Page(word: "", sentence: "أنا أريد تبديل الملابس",Image :"changeph", GifImage: "change",tag: 2, index: 3), ]
   
    
    static var sleep: [Page] = [
    
        Page(word:"النوم", sentence: "", Image :"sleepph",GifImage: "sleepword",tag: 1, index: 4),
    
        Page(word: "", sentence:  "أريد النوم",Image :"sleepph",  GifImage: "sleep",tag: 2, index: 4),]
        
   
    static var School: [Page] = [

        Page(word:"المدرسة", sentence: "",Image :"schoolph", GifImage: "schoolword", tag: 1, index: 5),

        Page(word:"", sentence:  "أنا أريد الذهاب للمدرسة",Image :"schoolph", GifImage: "school",tag: 2, index: 5),]
    
    
    static var kg: [Page] = [
        
        Page(word:"الروضة", sentence: "",  Image :"kgph",GifImage: "kgword",tag: 1, index: 6),
        
        Page(word: "", sentence: "أنا أريد الذهاب للروضة",  Image :"kgph", GifImage: "kg",tag: 2, index: 6),]
    
    
}
