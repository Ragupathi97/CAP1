sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'tablegen/test/integration/FirstJourney',
		'tablegen/test/integration/pages/EmployeeList',
		'tablegen/test/integration/pages/EmployeeObjectPage',
		'tablegen/test/integration/pages/SkillObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage, SkillObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('tablegen') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage,
					onTheSkillObjectPage: SkillObjectPage
                }
            },
            opaJourney.run
        );
    }
);