class User < ApplicationRecord
  has_secure_password

  before_validation :check_password
  before_save :downcase_email

  # Перед сохранением приводим email к нижнему регистру
  def downcase_email
    self.email.downcase!
  end

  # Проверяем, есть ли у текущего пользователя пароль
  # Если пароля нет, то генерируем его
  def check_password
    if self.password.nil? && self.password_digest.nil?
      self.password = SecureRandom.base58(20)
    end
  end
end
