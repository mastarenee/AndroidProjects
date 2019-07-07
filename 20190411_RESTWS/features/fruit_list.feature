Feature: Task list
  In order to get good grades for the semester
  I need a task list.
  
  Scenario: List Task
    Given the system knows about the following tasks 'hgfbkg':
      | name       | priority  |
      | Take out the dog     | high |
      | Go to the supermarket | medium    |
    When the client requests GET /tasks
    Then the response should be JSON:
      """
      [
        {"name": "Take out the dog", "priority": "high"},
        {"name": "Go to the supermarket", "priority": "medium"}
      ]
      """
