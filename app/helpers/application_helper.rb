module ApplicationHelper
    def round(x)
        number_with_precision(x, precision: 1)
    end

    def is_admin?
        current_user.admin
    end
end
