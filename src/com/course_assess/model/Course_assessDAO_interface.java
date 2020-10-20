package com.course_assess.model;

import java.util.List;

public interface Course_assessDAO_interface {
	public void insert(Course_assessVO course_assessVO);
	public void update(Course_assessVO course_assessVO);
	public void delete(String asesno);
	public Course_assessVO findByPrimaryKey(String asesno);
	public List<Course_assessVO> getAll();
	
	

}
