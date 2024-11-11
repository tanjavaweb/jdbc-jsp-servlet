package main;

import com.ltwmyproject.dao.impl.CategoryDAO;

public class test {
	public static void main(String[] args) {
		CategoryDAO dm = new CategoryDAO();
		System.out.println(dm.getListCategoryChild(4).size());
	}

}
