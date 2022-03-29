<aura:application >
    <ltng:require styles="{!$Resource.SLDS203 + 
                          '/assets/styles/salesforce-lightning-design-system-ltng.css'}"/>
    <div class="VijayGanji">
        <div class="slds">
    		<c:RelatedList heading="Account Details:" create="true" edit="true" delete="true"/>
        </div>
    </div>
</aura:application>