# `jquery_file_download-rails`

[![Install gem](https://badge.fury.io/rb/jquery_file_download-rails.png)](https://rubygems.org/gems/jquery_file_download-rails)
[![Build status](https://travis-ci.org/rcook/jquery_file_download-rails.png)](https://travis-ci.org/rcook/jquery_file_download-rails)

Packages the [`jquery.fileDownload.js`](https://github.com/johnculviner/jquery.fileDownload)
script for use with the Rails 3.1+ and Rails 4 asset pipeline.

## Installation

* Add `jquery_file_download-rails` to your application's `Gemfile`:

```ruby
gem 'jquery_file_download-rails'
```

* Run Bundler to lock the gem:

```bash
bundle install
```

* Add a reference to the gem's assets to your application's JavaScript asset
manifest (usually `app/assets/javascripts/application.js`) immediately after
the `require` directive for `jquery` and `jquery_ufs`:

```javascript
//= require jquery.fileDownload
```

* With the gem installed, the `$.fileDownload` jQuery plugin is available to
JavaScripts, for example:

```javascript
$(function () {
  $("#download").on("click", function (e) {
    e.preventDefault();
    alert("Download link clicked");
    $.fileDownload($(this).prop("href"), {
      successCallback: function (url) { alert("Success"); },
      failCallback: function (url) { alert("Fail"); }
    });
  });
});
```

* Actions sending files in response to download requests must set the
`fileDownload` cookie which can be done via the `cookies` collection as in this
sample controller:

```ruby
class DownloadController < ApplicationController
  def some_file
    cookies['fileDownload'] = 'true'

    send_file 'path-to-file-on-server',
      filename: 'browser-download-file-name',
      type: 'content-type',
      x_sendfile: true
  end
end
```

## Step-by-step instructions and sample applications

* [Samples](https://github.com/rcook/jquery_file_download-rails-samples)

## Links

* [`jquery_file_download-rails-samples`](https://github.com/rcook/jquery_file_download-rails-samples)
* [`jquery.fileDownload`](https://github.com/johnculviner/jquery.fileDownload)
* [John Culviner's original blog post](http://johnculviner.com/post/2012/03/22/Ajax-like-feature-rich-file-downloads-with-jQuery-File-Download.aspx)

## Licence

`jquery_file_download-rails` is released under the MIT licence.

