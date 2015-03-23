<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head profile="http://selenium-ide.openqa.org/profiles/test-case">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="selenium.base" href="http://recipes.qa1-foodnetwork.com/" />
<title>Allrecipes</title>
</head>
<body>
<table cellpadding="1" cellspacing="1" border="1">
<thead>
<tr><td rowspan="1" colspan="3">Allrecipes</td></tr>
</thead><tbody>
<tr>
	<td>open</td>
	<td>/</td>
	<td></td>
</tr>
<tr>
	<td>setSpeed</td>
	<td>700</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>css=button.mrb-add-recipe-button.mrb-dropdown-trigger</td>
	<td></td>
</tr>
<tr>
	<td>clickAndWait</td>
	<td>link=Add a recipe from a site</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>name=url</td>
	<td></td>
</tr>
<tr>
	<td>type</td>
	<td>name=url</td>
	<td>http://allrecipes.com/Recipe/Blueberry-Zucchini-Bread/?prop24=hn_slide1_Blueberry-Zucchini-Bread&amp;evt19=1</td>
</tr>
<tr>
	<td>click</td>
	<td>name=addRecipe</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>name=saveRecipe</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>waitForElementPresent</td>
	<td>css=a.mrb-folder-link</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>1000</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>css=a.mrb-folder-link</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>waitForText</td>
	<td>css=span.message</td>
	<td>Blueberry Zucchini Bread was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div</td>
	<td>Blueberry Zucchini Bread allrecipes.com 50 minutes <br /> Total Time: 1 hour 45 minutes More <br /> Cook: 50 minutes <br /> <br /> Serves: 4 mini-loaves <br /> <br /> Ingredients Tap to add to Grocery List 3 eggs, lightly beaten 3 eggs, lightly beaten 1 cup vegetable oil 1 cup vegetable oil 3 teaspoons vanilla extract 3 teaspoons vanilla extract 2 1/4 cups white sugar 2 1/4 cups white sugar 2 cups shredded zucchini 2 cups shredded zucchini 3 cups all-purpose flour 3 cups all-purpose flour 1 teaspoon salt 1 teaspoon salt 1 teaspoon baking powder 1 teaspoon baking powder 1/4 teaspoon baking soda 1/4 teaspoon baking soda 1 tablespoon ground cinnamon 1 tablespoon ground cinnamon 1 pint fresh blueberries 1 pint fresh blueberries Directions View Full Recipe For Directions <br /> <br /> Chef's Note &quot;Blueberries and zucchini baked up into delicious little summertime bread loaves!&quot; Show <br /> My Private Note Add Private Note Click here to write a note about this recipe. <br /> <br /> Save Note Cancel <br /> Show <br /> <br /> Full Recipe</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div</td>
	<td>Total Time: 1 hour 45 minutes More</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div</td>
	<td>exact:Cook: 50 minutes</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div[2]</td>
	<td>exact:Serves: 4 mini-loaves</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>&quot;Blueberries and zucchini baked up into delicious little summertime bread loaves!&quot;</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>3 eggs, lightly beaten</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[11]/a/span[2]</td>
	<td>1 pint fresh blueberries</td>
</tr>
<tr>
	<td>assertElementPresent</td>
	<td>xpath=(//a[contains(text(),'View Full Recipe For Directions')])[22]</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.ss-delete</td>
	<td></td>
</tr>
<tr>
	<td>waitForText</td>
	<td>css=h2</td>
	<td>All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-icon.mrb-trash</td>
	<td></td>
</tr>
<tr>
	<td>waitForElementPresent</td>
	<td>css=span.message</td>
	<td></td>
</tr>
<!--Note: #2 recipe-->
<tr>
	<td>click</td>
	<td>css=button.mrb-add-recipe-button.mrb-dropdown-trigger</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>link=Add a recipe from a site</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>name=url</td>
	<td></td>
</tr>
<tr>
	<td>type</td>
	<td>name=url</td>
	<td>http://allrecipes.com/Recipe/Slow-Cooker-Chicken-and-Dumplings/Detail.aspx?evt19=1</td>
</tr>
<tr>
	<td>click</td>
	<td>name=addRecipe</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>name=saveRecipe</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>waitForElementPresent</td>
	<td>css=a.mrb-folder-link</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>1000</td>
	<td></td>
</tr>
<tr>
	<td>click</td>
	<td>css=a.mrb-folder-link</td>
	<td></td>
</tr>
<tr>
	<td>pause</td>
	<td>3000</td>
	<td></td>
</tr>
<tr>
	<td>waitForText</td>
	<td>css=span.message</td>
	<td>Slow Cooker Chicken and Dumplings was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<!--Note: verify -->
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div</td>
	<td>Slow Cooker Chicken and Dumplings allrecipes.com 6 hours <br /> Total Time: 6 hours 10 minutes More <br /> Cook: 6 hours <br /> <br /> Serves: 8 servings <br /> <br /> Ingredients Tap to add to Grocery List 4 skinless, boneless chicken breast halves 4 skinless, boneless chicken breast halves 2 tablespoons butter 2 tablespoons butter 2 (10.75 ounce) cans condensed cream of chicken soup 2 (10.75 ounce) cans condensed cream of chicken soup 1 onion, finely diced 1 onion, finely diced 2 (10 ounce) packages refrigerated biscuit dough, torn into pieces 2 (10 ounce) packages refrigerated biscuit dough, torn into pieces Directions View Full Recipe For Directions <br /> <br /> Chef's Note &quot;This is an easy slow cooker recipe that cooks while you are at work! It is wonderful on a cold, snowy day. I have four children who are picky eaters, and they LOVE this! Enjoy!&quot; Show <br /> My Private Note Add Private Note Click here to write a note about this recipe. <br /> <br /> Save Note Cancel <br /> Show <br /> <br /> Full Recipe</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div/span[2]</td>
	<td>6 hours 10 minutes</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div[2]/span</td>
	<td>8 servings</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>&quot;This is an easy slow cooker recipe that cooks while you are at work! It is wonderful on a cold, snowy day. I have four children who are picky eaters, and they LOVE this! Enjoy!&quot;</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>4 skinless, boneless chicken breast halves</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[2]/a/span[2]</td>
	<td>2 tablespoons butter</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[3]/a/span[2]</td>
	<td>2 (10.75 ounce) cans condensed cream of chicken soup</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[4]/a/span[2]</td>
	<td>1 onion, finely diced</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[5]/a/span[2]</td>
	<td>2 (10 ounce) packages refrigerated biscuit dough, torn into pieces</td>
</tr>
<tr>
	<td>assertText</td>
	<td>xpath=(//a[contains(text(),'View Full Recipe For Directions')])[22]</td>
	<td>View Full Recipe For Directions</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.ss-delete</td>
	<td></td>
</tr>
<tr>
	<td>waitForText</td>
	<td>css=h2</td>
	<td>All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-icon.mrb-trash</td>
	<td></td>
</tr>
<tr>
	<td>waitForElementPresent</td>
	<td>css=span.message</td>
	<td></td>
</tr>
</tbody></table>
</body>
</html>
