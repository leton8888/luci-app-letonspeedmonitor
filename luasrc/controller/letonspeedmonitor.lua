module("luci.controller.letonspeedmonitor", package.seeall)

function index()
    entry({"admin", "status", "letonspeedmonitor"}, template("letonspeedmonitor/status"), _("Hello World"), 60)
end 