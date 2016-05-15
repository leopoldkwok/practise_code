/* Module for Address Book application */
var ToDoList = function () {

  /* add members here */
  /* the task */
  var task = {
    name: ko.observable(),
    description: ko.observable()
  };


  /* array of tasks */
  var tasks = ko.observableArray();

  var addTask = function () {
  console.log("Adding new task with name: " + task.name() +" and task description: " + task.description());

  //add the contact to the contacts array
  tasks.push({name: task.name(), description: task.description()});
  clearTask();
  };

  // method to delete task to tasks array
  var deleteTask = function(task) {
    console.log("Deleting task with name: " + task.name);
    // remove the task from the tasks array
    tasks.remove(task);
  }

  /* method to clear the task */
  var clearTask = function() {
    task.name(null);
    task.description(null);
  };

  var init = function () {
  /* add code to initialize this module */
  ko.applyBindings(ToDoList);
};

  /* execute the init function when the DOM is ready */
  $(init);

  return {
  /* add members that will be exposed publicly */
  tasks: tasks,
  task: task,
  addTask: addTask,
  deleteTask: deleteTask
  };
}();