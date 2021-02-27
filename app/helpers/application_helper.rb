module ApplicationHelper

    def display_editor(instance)
        if instance.editor != instance.creator
            "Last Edited by: #{instance.editor.name} on #{instance.date_readable(instance.updated_at)}"
        else
            "Has not yet been edited"
        end
    end

end
