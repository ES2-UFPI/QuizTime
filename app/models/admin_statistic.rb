class AdminStatistic < ApplicationRecord
    EVENTS = {
        total_users: "TOTAL_USERS",
        total_questions: "TOTAL_QUESTIONS"
    }

    scope :total_users, -> {
        find_by_event(EVENTS[:total_users]).value
    }
    scope :total_questions, -> {
        find_by_event(EVENTS[:total_questions]).value
    }
end
