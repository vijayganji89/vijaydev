/**
author        : www.aslambari.com
date          : 26 May, 2011
description   : Stores the data model for different sheets data
*/
public class DataModel{
    public list<Model> data{get;set;}
    
    public class Model{
        public string sheetname {get;set;}
        public list<string> headers{get;set;}
        public list<map<string,string>> data{get;set;}        
    }
}