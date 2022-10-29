package com.mystudy.house.model.vo;

public class myscrapVO {

	private int scrapNum, postIdx;
	private String id;
	private String postType;
	
	public int getScrapNum() {
		return scrapNum;
	}
	public void setScrapNum(int scrapNum) {
		this.scrapNum = scrapNum;
	}
	public int getPostIdx() {
		return postIdx;
	}
	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPostType() {
		return postType;
	}
	public void setPostType(String postType) {
		this.postType = postType;
	}
	@Override
	public String toString() {
		return "myscrapVO [scrapNum=" + scrapNum + ", postIdx=" + postIdx + ", id=" + id + ", postType=" + postType
				+ "]";
	}
	
	
}
