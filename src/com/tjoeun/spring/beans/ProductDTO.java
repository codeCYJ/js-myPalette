package com.tjoeun.spring.beans;

public class ProductDTO {
	private int product_id;
	private String product_name;
	private String product_en_name;
	private String product_color;
	private int product_price;
	private String product_origin;
	private String product_img;
	private String product_purchase_img;
	private String product_info;

	private String sh;
	private String main_img;

	public String getProduct_purchase_img() {
		return product_purchase_img;
	}

	public void setProduct_purchase_img(String product_purchase_img) {
		this.product_purchase_img = product_purchase_img;
	}

	public String getMain_img() {
		return main_img;
	}

	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}

	public String getSh() {
		return sh;
	}

	public void setSh(String sh) {
		this.sh = sh;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	public String getProduct_en_name() {
		return product_en_name;
	}

	public void setProduct_en_name(String product_en_name) {
		this.product_en_name = product_en_name;
	}

	public String getProduct_color() {
		return product_color;
	}

	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}

	public String getProduct_origin() {
		return product_origin;
	}

	public void setProduct_origin(String product_origin) {
		this.product_origin = product_origin;
	}

	public String getProduct_info() {
		return product_info;
	}

	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}

	@Override
	public String toString() {
		return "ProductDTO [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_url=" + product_img + "]";
	}

}
