# esx_limeysjob
just a simple job at the limeys juicebar that I made. Figured that I wanna share it here. Don't expect any fixes or updates... I don't have the time and energy to do those.. sorry.
## Features
* Easy Configurations. Read Comments in the files for more information.
* Possibility to add more items or change current items that can be used and made in the kitchen.

## Requirements
* [es_extended](https://github.com/esx-framework/es_extended/tree/v1-final).
* [esx_addonaccount](https://github.com/esx-framework/esx_addonaccount).
* [skinchanger](https://github.com/esx-framework/skinchanger).
* [esx_skin](https://github.com/esx-framework/esx_skin).
* [Limeys Juice Bar (MLO)](https://www.gta5-mods.com/maps/mlo-limeys-juice-bar-fivem-add-on-sp).

## Notes
* In the client.lua, you can change the location of the working spots and the blip. You can add more working spots if you want to, You can also configure the menu whether you want to add more items that can be created or remove some of it.
* Do not forget to change the 'x' in the job.name (Line 50, Line 74, Line 101 and Line 127.) into whatever job you plan to set it to.
* Do not forget to add the items that will be used and will be made in your `items` table in your database. I had an sql file ready if you want to use it to add the items
to your database. OR you can just manually do it. The items are in the `limeysitems.sql` file.
* `Line 50`, That is the line for the `MAP BLIP` that you can see in the menu. Feel Free to change that.
* `Line 75, 102 and 128`. This is the coords for the `cooking spots`.

## Download & Installation
### Using Git
```
cd resources
git clone https://github.com/chaos339/esx_limeysjob
```
### Manually
- Download this resource and put it in your resources folder.

## Installation
- Add this to your `server.cfg`:

```
ensure esx_limeysjob
```
## Optional
* Run `limeysitems.sql` in your database to add items in your `items` table.
