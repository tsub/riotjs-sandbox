<todo-list>
  <ul>
    <li each={todo in opts.store.getState().todos}>
      <todo-item title={todo.text}></todo-item>
    </li>
    <li>
      <todo-item title="hoge"></todo-item>
    </li>
  </ul>
</todo-list>
