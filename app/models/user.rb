# frozen_string_literal: true

# Account owner records, sign up managed by Devise
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # TODO: Enforce at DB level
  has_one :account
end
