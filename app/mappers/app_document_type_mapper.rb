# encoding: utf-8

class AppDocumentTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'AppDocumentType'

  # Код заявления
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :request_code
  # Контент вложения
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :binary_data
  # Ссылка на вложение
  # @return [ReferenceTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference
  # Хеш-код вложения
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :digest_value

end
