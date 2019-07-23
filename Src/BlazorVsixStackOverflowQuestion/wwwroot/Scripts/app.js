VSS.init({
    explicitNotifyLoaded: true,
    usePlatformStyles: true
});

VSS.require("TFS/Dashboards/WidgetHelpers", function (WidgetHelpers) {

    WidgetHelpers.IncludeWidgetStyles();
    WidgetHelpers.IncludeWidgetConfigurationStyles();

    var registerWidget = function () {
        return {
            load: function (widgetSettings) {
                return WidgetHelpers.WidgetStatusHelper.Success();
            }
        };
    };

    VSS.register("JSParamValue_BlazorVsixStackOverflowQuestion", registerWidget);

    VSS.notifyLoadSucceeded();
});
