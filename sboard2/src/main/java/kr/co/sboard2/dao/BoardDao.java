package kr.co.sboard2.dao;

import org.springframework.stereotype.Repository;


@Repository
public interface BoardDao {
	public void insertArticle();
	public void selectArticle();
	public void selectArticles();
	public void updateArticle();
	public void deleteArticle();
}
