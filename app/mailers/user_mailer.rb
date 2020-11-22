class UserMailer < ApplicationMailer
    default from: "murata.naoya.infratop@gmail.com"
    def create_user(user)
        @user = user
        mail(
            from: "murata.naoya.infratop@gmail.com",
            subject: "会員登録が完了しました",
            to: @user.email,
        ) do |format|
            format.text
        end
    end
end
