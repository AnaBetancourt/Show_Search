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

    def capitalize_name(name)
        cap_name = []
        name.split(" ").each do |i|
            cap_name << i.capitalize
        end
        cap_name.join(" ")
    end 

end
