<todo-form>
  <form onsubmit={add}>
    <input name="input" type="text" placeholder="New Todo" autofocus="true">
    <input type="submit" value="Add Todo">
  </form>
  <button onclick="{clear}">Clear Completed</button>
  <script>
    this.add = (e) => {
      if (this.input.value) {
        opts.store.dispatch({
          type: 'ADD_TODO',
          text: this.input.value,
          id: this.nextTodoId++
        });
        this.input.value = '';
      }
    };

    this.clear = () => {
      this.input.value = '';
    };
  </script>
</todo-form>
