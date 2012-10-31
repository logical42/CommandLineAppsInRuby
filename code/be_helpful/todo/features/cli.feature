Feature: The executable has a good command-line interface
  As someone who wants to make a todo list app
  The app has sufficient options to do that

  Background:
    Given my terminal size is "80x24"

  Scenario: Verify general help output 
    When I run `todo help`
    Then the output should contain:
    """
    usage: todo [global options] command [command options]

    Global Options:
        -f todo_file - Path to the todo file (default: ~/.todo.txt)

    Commands:
        done - Complete a task
        help - Shows list of commands or help for one command
        list - List tasks
        new  - Create a new task in the task list
    """

  Scenario: Verify help output of new command
    When I run `todo help new`
    Then the output should contain:
    """
    new [command options] task_name
        Create a new task in the task list

        A task has a name and a priority. By default, new tasks have the lowest 
        possible priority, though this can be overridden.

    Command Options:
        -f          - put the new task first in the list
        -p priority - set the priority of the new task, 1 being the highest
    """
