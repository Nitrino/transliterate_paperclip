# TransliteratePaperclip

Transliteration of [paperclip](https://github.com/thoughtbot/paperclip) Cyrillic file names

## Installation

Add this line to your application's Gemfile:

    gem 'transliterate_paperclip', git: 'git@github.com:Nitrino/transliterate_paperclip.git'

And then execute:

    $ bundle

## Usage

In your model put:

	has_attached_file :logo, styles: { medium: '130x130>', thumb: '100x100>'}
	before_post_process { translit_paperclip_file_name self.photo }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
