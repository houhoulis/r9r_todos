module TasksHelper

  def incomplete_tasks(tasks)
    incomplete_tasks = tasks.reject(&:completed?).size
    "<strong>#{incomplete_tasks}</strong> #{'item'.pluralize(incomplete_tasks)} left".html_safe
  end
end
