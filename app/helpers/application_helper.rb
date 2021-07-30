module ApplicationHelper

    def full_name(user)
        user.firstName + " " + user.lastName
    end
end
