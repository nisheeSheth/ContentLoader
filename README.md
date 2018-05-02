# ContentLoader

This library allows you to easily add FaceBook style animated loading placeholder.

## Usage

```swift

Loader.addLoaderToTableView(self.tableView) 		// to add 
Loader.removeLoaderFromTableView(self.tableView)	// to remove

```

## How it works

It adds an animated gradient to the content views of the visible cells or UIview. After that it inserts a cutout view.

all the other views are with "holes" where all the text and image views are. 

The alphas of all the text and image views are set to zero.

This is undone when you remove the loader

