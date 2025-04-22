# Share main database connection
ActiveRecord::Base.configurations[:queue] = ActiveRecord::Base.configurations[:production]