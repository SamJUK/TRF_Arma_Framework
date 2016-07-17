if (0 == (player getVariable "TRF_earplugs")) then { //If earpugs are not in
  ((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow false; //Hide Icon
} else {
    ((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow true;  //Show Icon
};
