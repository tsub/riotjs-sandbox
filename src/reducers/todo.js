export default function todo(state, action) {
  switch(action.type) {
    case 'ADD_TODO':
      return {
        id: action.id,
        title: action.title,
        done: false
      };
    case 'TOGGLE_DONE':
      if (state.id != action.id) {
        return state;
      }

      return Object.assign(state, {
        done: !state.done
      });
    default:
      return state;
  }
}
