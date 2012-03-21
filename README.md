# Bootstrap Datepicker for Rails
Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.
It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.

http://twitter.github.com/bootstrap/

Bootstrap Datepicker is a plugin for Bootstrap designed by Stefan Petre. It provides a stylish date picker for Bootstrap.

http://www.eyecon.ro/bootstrap-datepicker/

bootstrap-datepicker-rails project integrates Datepicker with Rails 3 assets pipeline.

http://github.com/Nerian/bootstrap-datepicker-rails

## Rails > 3.1
Include bootstrap-datepicker-rails in Gemfile;

``` ruby
gem 'bootstrap-datepicker-rails'
```

or you can install from latest build;

``` ruby
gem 'bootstrap-datepicker-rails', :require => 'bootstrap-datepicker-rails',
                              :git => 'git://github.com/Nerian/bootstrap-datepicker-rails.git'
```

and run bundle install.

## Stylesheets

Add necessary stylesheet file to app/assets/stylesheets/application.css

``` css
*=bootstrap-datepicker
```

## Javascripts

Add necessary javascript(s) files to app/assets/javascripts/application.js

``` javascript
//= require bootstrap-datepicker
```

## Using bootstrap-datepicker-rails

Just call datepicker() with any selector.

```javascript
$('.datepicker').datepicker()
```

### Options

#### format

String.  Default: 'mm/dd/yyyy'

The date format, combination of d, dd, m, mm, M, MM, yy, yyy.

#### weekStart

Integer.  Default: 0

Day of the week start. 0 (Sunday) to 6 (Saturday)

#### startDate

String.  Default: Beginning of time

The earliest date that may be selected; all earlier dates will be disabled.

#### endDate

String.  Default: End of time

The latest date that may be selected; all later dates will be disabled.

#### autoclose

Boolean.  Default: false

Whether or not to close the datepicker immediately when a date is selected.

### Markup

Format a component.

```html 
<div class="input-append date" id="datepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
    <input class="span2" size="16" type="text" value="12-02-2012">
    <span class="add-on"><i class="icon-th"></i></span>
</div>
```

### Methods

#### .datepicker(options)

Initializes an datepicker.

#### show

Arguments: None

Show the datepicker.

```javascript
$('#datepicker').datepicker('show');
```

#### hide

Arguments: None

Hide the datepicker.

```javascript
$('#datepicker').datepicker('hide');
```

#### update

Arguments: None

Update the datepicker with the current input value.

```javascript
$('#datepicker').datepicker('update');
```

#### setStartDate

Arguments:

* startDate (String)

Sets a new lower date limit on the datepicker.

```javascript
$('#datepicker').datepicker('setStartDate', '2012-01-01');
```
Omit startDate (or provide an otherwise falsey value) to unset the limit.

```javascript
$('#datepicker').datepicker('setStartDate');
$('#datepicker').datepicker('setStartDate', null);
```

#### setEndDate

Arguments:

* endDate (String)

Sets a new upper date limit on the datepicker.

```javascript
$('#datepicker').datepicker('setEndDate', '2012-12-31');
```

Omit endDate (or provide an otherwise falsey value) to unset the limit.

```javascript
$('#datepicker').datepicker('setEndDate');
$('#datepicker').datepicker('setEndDate', null);
```

### Events

Datepicker class exposes a few events for manipulating the dates.

#### show

Fired when the date picker is displayed.

#### hide

Fired when the date picker is hidden.

#### changeDate

Fired when the date is changed.

```javascript
$('#date-end')
    .datepicker()
    .on('changeDate', function(ev){
        if (ev.date.valueOf() < date-start-display.valueOf()){
            ....
        }
    });
```

## License
Copyright (c) 2011 Gonzalo Rodríguez-Baltanás Díaz

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
