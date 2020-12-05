import React from "react";
import { useSelector, useDispatch } from "react-redux";

export default function CourseList() {
  const courses = useSelector(state => state.data);
  const dispath = useDispatch();

  function addCourseAction(title) {
    return {type: 'ADD_COURSE', title}
  }
  function addCourse() {
    dispath(addCourseAction('GraphQL'))
  }
  return (
    <>
      <ul>
        {courses.map(course => (
          <li key={course}>{course}</li>
        ))}
      </ul>
      <button type="button" onClick={addCourse}>
        Adicionar curso
      </button>
    </>
  );
}
