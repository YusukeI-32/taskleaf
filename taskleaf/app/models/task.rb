class Task < ApplicationRecord
    #taskモデルのname属性に値が入っていなければエラーを出力
    validates :name, presence: true
    #文字数が30文字異常入力した場合エラー
    validates :name, length: { maximum: 30 }

    private 
    #文字列にカンマを含むとエラー
    def validate_name_not_including_comma
        errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
    end
end
