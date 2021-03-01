module ApplicationHelper

    def creation_success(model)
        flash[:message] = "#{model} was successfully created."
    end

    def update_success(model)
        flash[:message] = "#{model} was successfully updated."
    end

    def deletion_success(model)
        flash[:message] = "#{model} was successfully deleted."
    end

end
