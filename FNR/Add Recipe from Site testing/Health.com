<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head profile="http://selenium-ide.openqa.org/profiles/test-case">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="selenium.base" href="http://recipes.qa1-foodnetwork.com/" />
<title>Health</title>
</head>
<body>
<table cellpadding="1" cellspacing="1" border="1">
<thead>
<tr><td rowspan="1" colspan="3">Health</td></tr>
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
	<td>http://www.health.com/health/recipe/0,,10000001087041,00.html</td>
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
	<td>Zucchini Oven Chips was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<!--ERROR MRB-877 serves size info cut off -->
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div</td>
	<td>Total Time: More</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div[2]/span</td>
	<td>4 servings (serving size: about 3/4 cup)</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>Not all chips have to be unhealthy and fat-laden. Zucchinis are more nutritious than potatoes, which are usually used for chips. Baking the zucchini cuts back on fat that is needed for frying.</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>1/4 cup dry breadcrumbs</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[8]/a/span[2]</td>
	<td>Cooking spray</td>
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
	<td>http://www.health.com/health/recipe/0,,50400000134509,00.html</td>
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
	<td>Mixed Herb and Frisée Salad with Roasted Potatoes was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div</td>
	<td>Total Time: 45 minutes More</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div</td>
	<td>exact:Cook: 30 minutes</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/section/div[2]</td>
	<td>exact:Serves: Serves: 4</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>exact:Tip: When you use rosemary, don't throw away the stem once you pick off the leaves. If the stems are thicker, wipe them thoroughly, place them in a plastic bag and freeze. Once thawed, they make great skewers for grilling! (The moisture from thawing keeps them from burning on the grill.)</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>1 tablespoon fresh rosemary</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[12]/a/span[2]</td>
	<td>1 1/2 tablespoons grainy mustard</td>
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
