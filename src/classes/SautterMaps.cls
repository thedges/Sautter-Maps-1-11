public with sharing class SautterMaps {

    public SautterMaps() {}

    ApexPages.StandardSetController mController;

    public SautterMaps(ApexPages.StandardSetController controller) {
      mController = controller;
      if (mController != null) {
        mController.setPageSize(1000);
      }
    }

    public SelectOption[] MapLayers { get {
      List<SelectOption> result = new List<SelectOption>(); 
      result.add(new SelectOption('', 'No Layer'));
      Map_Layer__c[] layers = [SELECT Name, KML_URL__c, Visible__c from Map_Layer__c];
      for (Map_Layer__c layer: layers) {
        result.add(new SelectOption(layer.KML_URL__c, layer.Name));
      }
      return result;
    } 
  }
  
 }