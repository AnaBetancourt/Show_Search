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

    def creator_of_resource(resource)
        !!resource.creator == current_user
    end

    def capitalize_name(name)
        cap_name = []
        name.split(" ").each do |i|
            cap_name << i.capitalize
        end
        cap_name.join(" ")
    end 

    def if_creator(resource)
        if resource.creator == current_user
            #display edit tag
        else
            redirect_to resource_path(resource)
        end
    end

end
