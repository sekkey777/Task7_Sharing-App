class Reservation < ApplicationRecord

  # バリデーション
  validates :start, presence: true
  validates :end, presence: true
  validates :number_of_people, presence: true
  validates :room_id, presence: true

  validate :start_finish_check
  validate :strat_check

  # カスタムバリデーションの定義
  def start_finish_check
    errors.add(:end, "は開始時刻より遅い時間を選択してください") if self.start > self.end
  end

  def strat_check
    errors.add(:start, "現在の時刻より遅い時間を選択してください") if self.start < Time.now
  end

  # リレーション
  belongs_to :user
  belongs_to :room
  
end
