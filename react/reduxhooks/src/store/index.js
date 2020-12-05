import { createStore } from "redux";

const INITIAL_state = {
  data: ["REACT NATIVE", "ReactJS", "Node"]
};

function courses(state = INITIAL_state, action) {
  switch (action.type) {
    case "ADD_COURSE":
      return { ...state, data: [...state.data, action.title] };
    default:
      return state;
  }
}

const store = createStore(courses);

export default store;
