package com.ntu.auto.magazine.filter;

public class SearchFilter {

	private String make;
	private String makeYear;
	private String registeredYear;
	private String model;
	private String category;
	private String engineCapacity;
	private String gear;
	private String mileage; 
	private String price;
	private String status;
	private String approved;
	private String postDate;
	
	public SearchFilter() {
		super();
		this.make = "";
		this.makeYear = "";
		this.registeredYear = "";
		this.model = "";
		this.category = "";
		this.engineCapacity = "";
		this.gear = "";
		this.mileage = "";
		this.price = "";
		this.status = "";
		this.approved = "";
		this.postDate = "";
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getMakeYear() {
		return makeYear;
	}
	public void setMakeYear(String makeYear) {
		this.makeYear = makeYear;
	}
	public String getRegisteredYear() {
		return registeredYear;
	}
	public void setRegisteredYear(String registeredYear) {
		this.registeredYear = registeredYear;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEngineCapacity() {
		return engineCapacity;
	}
	public void setEngineCapacity(String engineCapacity) {
		this.engineCapacity = engineCapacity;
	}
	public String getGear() {
		return gear;
	}
	public void setGear(String gear) {
		this.gear = gear;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String available) {
		this.status = available;
	}
	public String getApproved() {
		return approved;
	}
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public String getPostDate() {
		return postDate;
	}
	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SearchFilter [make=");
		builder.append(make);
		builder.append(", makeYear=");
		builder.append(makeYear);
		builder.append(", registeredYear=");
		builder.append(registeredYear);
		builder.append(", model=");
		builder.append(model);
		builder.append(", category=");
		builder.append(category);
		builder.append(", engineCapacity=");
		builder.append(engineCapacity);
		builder.append(", gear=");
		builder.append(gear);
		builder.append(", mileage=");
		builder.append(mileage);
		builder.append(", price=");
		builder.append(price);
		builder.append(", status=");
		builder.append(status);
		builder.append(", approved=");
		builder.append(approved);
		builder.append(", postDate=");
		builder.append(postDate);
		builder.append("]");
		return builder.toString();
	}
}
