sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"hola/test/integration/pages/TurnosList",
	"hola/test/integration/pages/TurnosObjectPage"
], function (JourneyRunner, TurnosList, TurnosObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('hola') + '/test/flp.html#app-preview',
        pages: {
			onTheTurnosList: TurnosList,
			onTheTurnosObjectPage: TurnosObjectPage
        },
        async: true
    });

    return runner;
});

