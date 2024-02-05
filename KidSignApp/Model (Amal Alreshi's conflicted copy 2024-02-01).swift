//
//  Model.swift
//  KidSignApp
//
//  Created by Ahlamalmutiri on 18/07/1445 AH.

import Foundation

struct Page: Identifiable, Equatable {
    static func == (lhs: Page, rhs: Page) -> Bool {
        
    }
    
   
    let id = UUID()
    var word: String
    var Image: String
    var GifImage: String
    var progress: Int
    var segments: Int
    var tag: Int

    static var cards: [Page] = [
        
        Page(word: "سعيد", Image :"happyph", GifImage: "happyword", progress: 1, segments: 4,tag: 0),
        
        Page(word: "أنا سعيد",  Image :"happyph", GifImage: "happy",  progress: 1, segments: 4,tag: 1),]
  
     
    static var Sad: [Page] = [
        
        Page(word: "حزين", Image :"sadph", GifImage: "sadword",progress: 2, segments: 4, tag: 0),
        
        Page(word: "أنا أشعر بالحزن",  Image :"sadph", GifImage: "sad", progress: 2, segments: 4,tag: 1),]
    
    
    
    static var boring: [Page] = [
    
            Page(word :"طفشان ",Image :"boringph", GifImage: "boringword", progress: 3, segments: 4,tag: 0),
    
            Page(word: "أنا طفشان", Image :"boringph", GifImage: "boring", progress: 3, segments: 4,tag: 1),]
    
    
    static var excited: [Page] = [
    
            Page(word:"متحمس",Image :"excitedph", GifImage: "excitedword", progress: 4, segments: 4,tag: 0),
    
            Page(word: "أنا أشعر بالحماس", Image :"excitedph", GifImage: "excited", progress: 4, segments: 4,tag: 1),]

  
    static var clothes: [Page] = [
        
        Page(word: "تبديل الملابس",Image :"changeph", GifImage: "changeword", progress: 1, segments: 12,tag: 0),
        
        Page(word: "أنا أريد تبديل الملابس ",Image :"changeph", GifImage: "change", progress: 1, segments: 12,tag: 1), ]
   
    
    
    static var toilet: [Page] = [
        
        Page(word:"الحمام",Image :"toiletph", GifImage: "toiletword", progress: 2, segments: 12,tag: 0),
        
        Page(word: "أنا أريد الحمام", Image :"toiletph", GifImage: "toilet", progress: 2, segments: 12,tag: 1),]
    
    
    static var sleep: [Page] = [
    
            Page(word:"النوم", Image :"sleepph",GifImage: "sleepword", progress: 3, segments: 12,tag: 0),
    
            Page(word: "أريد النوم",Image :"sleepph",  GifImage: "sleep", progress: 3, segments: 12,tag: 1),]
        
   
    static var brushing: [Page] = [
    
            Page(word:"تفريش الاسنان", Image :"brushingph",GifImage: "brushingword", progress: 4, segments: 12,tag: 0),
    
            Page(word: "أنا أريد تفريش اسناني",Image :"brushingph",  GifImage: "brushing", progress: 4, segments: 12,tag: 1),]
    
    
    static var bath: [Page] = [
    
            Page(word:"الاستحمام", Image :"bathph",GifImage: "bathword", progress: 5, segments: 12,tag: 0),
    
            Page(word: "أريد الاستحمام", Image :"bathph", GifImage: "bath", progress: 5, segments: 12,tag: 1),]
    
   
    static var washface: [Page] = [
    
            Page(word:"غسل الوجه ",Image :"washfaceph", GifImage: "washfaceword", progress: 6, segments: 12,tag: 0),
    
            Page(word: "أنا أريد غسل وجهي", Image :"washfaceph", GifImage: "washface", progress: 6, segments: 12,tag: 1),]
    
    static var washhand: [Page] = [
        
        Page(word:"غسل اليدين",Image :"washhandph", GifImage: "washhandword", progress: 7, segments: 12,tag: 0),
        
        Page(word: "أنا أريد غسل يدي", Image :"washhandph", GifImage: "washhand", progress: 7, segments: 12,tag: 1),]
    
    
    
    static var full: [Page] = [
    
            Page(word:"شبعان", Image :"fullph",GifImage: "fullword", progress: 8, segments: 12,tag: 0),
    
            Page(word: "أنا شبعان", Image :"fullph", GifImage: "full", progress: 8, segments: 12,tag: 1),]
    

    static var hungry: [Page] = [
        
        Page(word:"جوعان", Image :"hungryph", GifImage: "hungryword", progress: 9, segments: 12,tag: 0),
        
        Page(word: "أنا أشعر بالجوع", Image :"hungryph",  GifImage: "hungry", progress: 9, segments: 12,tag: 1),]
    
   
    static var thirsty: [Page] = [
        
        Page(word:"عطشان",  Image :"thirstyph",GifImage: "thirstyword", progress: 10, segments: 12,tag: 0),
        
        Page(word: "أنا أشعر بالعطش ", Image :"thirstyph",  GifImage: "thirsty", progress: 10, segments: 12,tag: 1),]
    
    
    
    
    
    static var kg: [Page] = [
        
        Page(word:"الروضة",  Image :"kgph",GifImage: "kgword", progress: 11, segments: 12,tag: 0),
        
        Page(word: "أنا أريد الذهاب للروضة",  Image :"kgph", GifImage: "kg", progress: 11, segments: 12,tag: 1),]
    
    
    
    static var School: [Page] = [

        Page(word:"المدرسة",Image :"schoolph", GifImage: "schoolword", progress: 12, segments: 12,tag: 0),

        Page(word: "أنا أريد الذهاب للمدرسة",Image :"schoolph", GifImage: "school", progress: 12, segments: 12,tag: 1),]
    
}
