# encoding: utf-8
# @note Формат мнемоники

class MnemonicTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MnemonicType'


end
