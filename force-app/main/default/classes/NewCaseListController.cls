public with sharing class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> casesToReturn = new List<Case>();
        casesToReturn = [Select Id, CaseNumber from Case where status='New'];
        return casesToReturn;
    }
}