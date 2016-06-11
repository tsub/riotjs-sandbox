export default function todo(state, action) {
  switch(action.type) {
    case 'ADD_TODO':
      return {
        title: action.title,
        done: false
      };
    default:
      return state;
  }
}
