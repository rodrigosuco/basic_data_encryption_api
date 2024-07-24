class Client < ApplicationRecord
  before_save :encrypt_client_params

  def encrypt_client_params
    self.user_document = EncryptionService.encrypt(self.user_document) if self.user_document.present?
    self.credit_card_token = EncryptionService.encrypt(self.credit_card_token) if self.credit_card_token.present?
  end
end
