FactoryBot.define do
    factory :user do
        name { "Maria" }
        email { "user@email.com" }
        phone { "21999999999" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
        password { "123456" }
    end
end
