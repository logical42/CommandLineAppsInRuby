Feature: The executable has a good command-line interface
  As someone who wants to make a todo list app
  The app has sufficient options to do that

  Background:
    Given my terminal size is "80x24"

  Scenario: Verifying the scaffolding
    When I run `todo`
    Then the output should contain:
    """
    usage: todo [global options] command [command options]

    Global Options:
        -f arg - 
        -s     - 

    Commands:
        done - 
        help - Shows list of commands or help for one command
        list - 
        new  - 
    """

  Scenario: Verify that we take the options we want
    When I run `todo_integrated.rb`
    Then the output should contain:
    """
    usage: todo_integrated.rb [global options] command [command options]

    Version: 0.0.1

    Global Options:
        -f arg - 

    Commands:
        done - 
        help - Shows list of commands or help for one command
        list - 
        new  - 
    """

  Scenario: Verify that the new task takes the proper options
    When I run `todo_integrated.rb help new`
    Then the output should contain:
    """
    new [command options]
    """
    And the output should contain:
    """
    Command Options:
        -f     - 
        -p arg - 
    """
    When I run `todo_integrated.rb -f ~/todo.txt new -f -p 4 "New Todo"`
    Then the output should contain:
    """
    Global:
    -f - ~/todo.txt
    Command:
    -f - true
    -p - 4
    args - New Todo
    """
    When I run `todo_integrated.rb -f ~/todo.txt new -p 4 "New Todo" "Another New Todo"`
    Then the output should contain:
    """
    Global:
    -f - ~/todo.txt
    Command:
    -f - false
    -p - 4
    args - New Todo,Another New Todo
    """

  Scenario: Verify that the list task takes the proper options
    When I run `todo_integrated.rb help list`
    Then the output should contain:
    """
    list [command options]
    """
    And the output should contain:
    """
    Command Options:
        -s arg - 
    """
    When I run `todo_integrated.rb -f ~/todo.txt list -s name`
    Then the output should contain:
    """
    Global:
    -f - ~/todo.txt
    Command:
    -s - name
    """

  Scenario: Verify that the done task takes the proper options
    When I run `todo_integrated.rb help done`
    Then the output should contain:
    """
    done
    """
    When I run `todo_integrated.rb -f ~/todo.txt done`
    Then the output should contain:
    """
    Global:
    -f - ~/todo.txt
    """
