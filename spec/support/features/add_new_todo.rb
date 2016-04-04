module Features
  def add_new_todo(title)
    click_on "Add new todo"
    fill_in "todo_title", with: title
    click_on "Create Todo"
  end

  def display_todo(todo_title)
    have_css ".todos li", text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css ".todos li.completed", text: todo_title
  end
end
