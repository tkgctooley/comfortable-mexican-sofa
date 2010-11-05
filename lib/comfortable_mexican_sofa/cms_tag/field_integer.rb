class CmsTag::FieldInteger < CmsBlock
  
  include CmsTag
  
  def self.regex_tag_signature(label = nil)
    label ||= /\w+/
    /\{\{\s*cms:field:(#{label}):integer\s*\}\}/
  end
  
  def regex_tag_signature
    self.class.regex_tag_signature(label)
  end
  
  def content=(value)
    write_attribute(:content_integer, value)
  end
  
  def content
    read_attribute(:content_integer)
  end
  
  def render
    ''
  end
  
end