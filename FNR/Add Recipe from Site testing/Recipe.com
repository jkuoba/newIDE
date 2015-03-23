<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head profile="http://selenium-ide.openqa.org/profiles/test-case">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="selenium.base" href="http://recipes.qa1-foodnetwork.com/" />
<title>Recipe</title>
</head>
<body>
<table cellpadding="1" cellspacing="1" border="1">
<thead>
<tr><td rowspan="1" colspan="3">Recipe</td></tr>
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
	<td>http://www.recipe.com/spicy-beef-noodle-bowl/</td>
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
	<td>Spicy Beef-Noodle Bowl was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div</td>
	<td>Total Time: More</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>Spice up your beef and noodles with this delicious twist. Beef strips flavored with peanut sauce is added to noodles and broccoli.</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>1&nbsp;&nbsp;&nbsp;pound&nbsp;&nbsp;boneless beef sirloin steak, cut in thin strips</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[7]/a/span[2]</td>
	<td>1/4&nbsp;&nbsp;cup&nbsp;&nbsp;bias-sliced green onions (optional)</td>
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
	<td>http://www.recipe.com/southwestern-tofu-scramble/</td>
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
	<td>Southwestern Tofu Scramble was added to All Recipes</td>
</tr>
<tr>
	<td>click</td>
	<td>css=span.mrb-grid-item-image-parent &gt; img</td>
	<td></td>
</tr>
<!--ERROr MRB-886 missing servers and time info -->
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div/div</td>
	<td>Total Time: More</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li/a/span[2]</td>
	<td>3&nbsp;&nbsp;&nbsp;teaspoons&nbsp;&nbsp;canola oil, divided</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[6]/a/span[2]</td>
	<td>1&nbsp;&nbsp;&nbsp;&nbsp;small zucchini, diced</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[2]/div/ul/li[11]/a/span[2]</td>
	<td>1/4&nbsp;&nbsp;cup&nbsp;&nbsp;chopped fresh cilantro</td>
</tr>
<tr>
	<td>assertText</td>
	<td>//div[@id='mrb-grid-preview-slider']/div/div/div/div/div/div/div[3]/div/span</td>
	<td>Cooking crumbled firm tofu in a skillet approximates the fluffy texture of scrambled eggs in this vegetable-studded, vegetarian main dish. Enjoy it for breakfast, lunch or dinner. Serve with steamed corn tortillas, some extra salsa and black beans.</td>
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
