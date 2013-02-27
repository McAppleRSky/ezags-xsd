# encoding: utf-8

class ServiceIdentityMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ServiceIdentity'

  # Идентификатор услуги в ЕЗАГС
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :service_id

end
