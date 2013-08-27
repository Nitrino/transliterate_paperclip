require "transliterate_paperclip/version"

module TransliteratePaperclip
  def translit_paperclip_file_name paperclip_image
    image_file_name = self.attributes[paperclip_image.name.to_s + '_file_name']
    ext = File.extname image_file_name
    basename = File.basename(image_file_name, ext)
    paperclip_image.instance_write(:file_name, Russian::translit(basename).to_url + ext)
  end
end
