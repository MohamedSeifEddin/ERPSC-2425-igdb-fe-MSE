sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/fe/demo/sapfiorimse/test/integration/FirstJourney',
		'sap/fe/demo/sapfiorimse/test/integration/pages/StudentList',
		'sap/fe/demo/sapfiorimse/test/integration/pages/StudentObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/fe/demo/sapfiorimse') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage
                }
            },
            opaJourney.run
        );
    }
);