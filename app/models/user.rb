class User < ApplicationRecord
  has_secure_password

  before_validation :checkPassword
  before_save :downcaseEmail

  # Перед сохранением приводим email к нижнему регистру
  def downcaseEmail
    self.email.downcase!
  end

  # Проверяем, есть ли у текущего пользователя пароль
  # Если пароля нет, то генерируем его
  def checkPassword
    if self.password.nil? && self.password_digest.nil?
      self.password = SecureRandom.base58(20)
    end
  end
end
