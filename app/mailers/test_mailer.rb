class TestMailer < ApplicationMailer
    default from: "murata.naoya.infratop@gmail.com"
    def bacth_user
        mail(
            from: "murata.naoya.infratop@gmail.com",
            subject: "テスト：バッチ処理",
            bcc: User.pluck(:email),
        )
    end
end
