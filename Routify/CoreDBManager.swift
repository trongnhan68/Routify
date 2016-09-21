//
//  CoreDBManager.swift
//  GoodJob
//
//  Created by Jacky Nguyen on 9/19/16.
//  Copyright © 2016 Jacky. All rights reserved.
//

import UIKit
import CoreData


class CoreDBManager: NSObject {

    static let sharedIntance = CoreDBManager()
    var dataAll = [NSManagedObject]()
    
    func save(entity: EntityModel) -> Bool {
        
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //2
        let mEntityDB =  NSEntityDescription.entity(forEntityName: "Entity", in: managedContext)
        
        let manageObject = NSManagedObject(entity: mEntityDB!, insertInto: managedContext)
        
        //3
        manageObject.setValue(entity.contentId, forKey: "contentId")
        manageObject.setValue(entity.thumbUrl, forKey: "thumbUrl")
        manageObject.setValue(entity.content, forKey: "content")
        manageObject.setValue(entity.title, forKey: "title")
        manageObject.setValue(entity.dateCreated, forKey: "dateCreated")
        
        //4
        do {
            try managedContext.save()
            //5
            dataAll.append(manageObject)
            print("Save success")
            return true
        } catch let error as NSError  {
            print("Could not Save")
        
        }
        return false
    }
    
    func getEntityWithId(contentId: String) -> EntityModel {
        
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext

        
        //2
        let fetchRequest : NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Entity");
        
        //3
        
        do {
            let results =
                try managedContext.fetch(fetchRequest)
            if (results.isEmpty == false) {
                print(results);
                dataAll = results as! [NSManagedObject]
            }
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        }
        
        var listEntity = [EntityModel]();
        //3
        for manageObject in dataAll {
            let entity = EntityModel();
            
            entity.contentId = manageObject.value(forKey: "contentId") as! String?
            entity.thumbUrl = manageObject.value(forKey: "thumbUrl") as! String?
            entity.content = manageObject.value(forKey: "content") as! String?
            entity.title = manageObject.value(forKey: "title") as! String?
            entity.dateCreated = manageObject.value(forKey: "dateCreated") as! Date?
            listEntity.append(entity);
        
        }
        return EntityModel();
    }
    
}
