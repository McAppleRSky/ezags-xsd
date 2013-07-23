# encoding: utf-8
# @note Сведения об адресе с точностью до населённого пункта

class ShortAddressMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ShortAddress'

  # код страны по ОКСМ
  # @return [OKSMCode]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :country_code
  # адрес в первоначальном виде (как записан в документе). Только для визуальной верификации сотрудником ЗАГС!
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :raw_address_string
  # Код адреса по классификатору КЛАДР до уровня улицы включительно
  # @return [KLADRCode]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :kladr_code
  # Код адреса по классификатору ФИАС КЛАДЭ
  # @return [KLADEFiasCode]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :klade_fias_code
  # Страна, строковое представление
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :country
  # Субъект РФ, строковое представление
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :region
  # Район, строковое представление
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :district
  # Город, строковое представление
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :city
  # Населенный пункт, строковое представленеи 
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :settlement

end
