require 'digest'

class EncryptionService
  def self.encrypt(data)
    digest = Digest::SHA256.digest(data)
    digest.unpack1('H*')
  end
end