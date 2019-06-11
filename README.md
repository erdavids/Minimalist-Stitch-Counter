# Minimalist-Stitch-Counter

This project provides a unique stitch counter for crocheting and knitting projects. Users are able to count stitches, specify project row total, track progress, save/load files, and customize interface color all from the same screen. In the spirit of minimalism, this was an attempt to keep things as simple as possible while providing the ability to cusomize the appearance of the app.

Download the app [here](https://play.google.com/store/apps/details?id=com.buffed.stitch)

Solarized dark             |  Solarized Ocean
:-------------------------:|:-------------------------:
![](https://github.com/erdavids/Minimalist-Stitch-Counter/blob/master/Screenshots/Screenshot_20190504-020544.png)  |  ![](https://github.com/erdavids/Minimalist-Stitch-Counter/blob/master/Screenshots/Screenshot_20190504-132457.png)

## User Guide

### Basic Usage

When the app is launched, a single stitch counter is available. Use the **-** and **+** buttons to **decrease** and **increase** the count. This can be useful for keeping count when you're not sure how many stitches you need, or you just want a basic counter.

To clear the stitches, **double-tap** the Reset button. On the first tap, the **Reset** button will do a soft prompt for confirmation by changing to **Reset?**, providing 1.5 seconds to confirm. If you do not want to confirm, simply don't tap it again and it will time out. Keep in mind that the functionality changes if you have chosen to use the **row counter** as well.

### Row Counter

To enable the row counter, select **Options -> Row Count**. The app will shift to include the row counter. Three new elements have been introduced.

The **St/R** value indicates how many stitches are needed **per round**. For example, if **St/R** is set to 5, when you increase the main stitch counter to 5, it will reset to 0 because you have completed a row.

The **Rows** value indicates how many rows (or rounds) you expect in your project.

The **Ratio** displayed above **Rows** shows how many rows have been completed out of the total number of rows for this project.

To remove the row counter, simply select **Options -> Row Count** again. The data will be maintained.

To clear the completed rows in the **Ratio**, you must **triple-tap** the reset button

To clear the **St/R** and **Rows** values, you must tap the reset button **four times**.

### Saving Projects

The most important thing to note here is that projects do not autosave.

In order to save a new project or update an existing project, you must select **Options -> Save** to display the **Save Name?** field. You can select that element to enter the name of the save file. Press enter/return to complete the save.

If you specify an existing file, it will be overwritten without a confirmation prompt. 

You can save up to **8 projects**.

### Loading Projects

Select **Options -> Load** to display a list of saved projects (if any exist). Select a project to load.

Remember that if you make updates after loading a project, you **must save to keep your changes**.

To remove the list of projects from the view, either select **Load** again or select the parent **Object** button to remove all visible options.

### Deleting Projects

Select **Options -> Load** to display a list of saved projects (if any exist).

Above the project list is a **Delete** button. If you select **Delete**, then select a project, it will be deleted **without a prompt for confirmation**.

### Color Customization

The application provides access to 9 color options. Select **Options -> Color** to see available colors, and select any to see the changes. 

The most recent color choice is saved and persists between app launches.

To remove the list of projects from the view, either select **Color** again or select the parent **Object** button to remove all visible options.

### Reset Details

One tap    -> **Confirmation (Nothing is Reset)**

Two taps   -> **Reset Main Stitch Count**

If row counter is visible:

Three taps -> **Reset Main Stitch Count and Completed Rows**

Four taps  -> **Reset Everything**


