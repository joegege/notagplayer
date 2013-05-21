import bb.cascades 1.0
import "../lib/globaldefs.js" as GlobalDefs

StandardListItem {
    id: item1
    title: ListItemData.name
    description: GlobalDefs.decorateSystemPath(ListItemData.path)
    //status: ListItemData.type
    imageSource: {
        var src = "asset:///images/ic_folder.png";
        if(ListItemData.type == "file") {
            if(title.endsWith(".mp3")
            || title.endsWith(".ogg")
            || title.endsWith(".aac")) src = "asset:///images/ca_music.png";
            else src = "asset:///images/ic_doctype_generic.png";
        }
        src
    } 
    contextActions: [
        ActionSet {
            // needed by multiselect
            ActionItem {
                title: "Add to play list"
                imageSource: "asset:///images/ic_add_tracks.png"
                onTriggered: {
                    //console.debug("item1: " + item1);
                    //console.debug("item1.ListItem: " + item1.ListItem);
                    //console.debug("item1.ListItem.view: " + item1.ListItem.view);
                    //console.debug("item1.ListItem.view.chooseSelection: " + item1.ListItem.view.chooseSelection);
                    item1.ListItem.view.chooseSelection();
                }
            }
        }
    ]
    onCreationCompleted: {
    }
}