package com.skilldistillery.film.entities;

import java.util.List;
import java.util.Objects;

import com.skilldistillery.film.entities.Actor;

public class Film {
	
	private int id;
	private String title;
	private String description;
	private int releaseYear;
	private int languageId;
	private int rentalDuration;
	private double rentalRate;
	private int length;
	private double replacementCost;
	private String rating;
	private String specialFeatures;
	private List<Actor> actor;
	private String language;
	private String category;
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Film() {}
	
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
	

	public Film(int id, String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.releaseYear = releaseYear;
		this.languageId = languageId;
		this.rentalDuration = rentalDuration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
		}
	
	public String showDetails() {
		StringBuilder sb =  new StringBuilder();
		
		sb.append(this.title + ": ");
		sb.append(this.description + "\n");
		sb.append(" Category: " + this.category + "\n");
		sb.append(" Release Year: " + this.releaseYear +", Rating: " + this.rating + ", Language: " +this.language + "\n");
		sb.append(" Film Length: " + this.length + " mins"+ "\n");
		sb.append(" Special Features: " + this.specialFeatures+ "\n");
		sb.append(" Rental rate: " + this.rentalRate + ", Replacement Cost: " + this.replacementCost + ", Rental Duration: " + this.rentalDuration+ "\n" );
//		sb.append("The following copies are in inventory: ");
//		for (String inventoryItem : inventory) {
//			sb.append(inventoryItem + "\n");
//		}
		return sb.toString();
	}
	public String showActors() {
		StringBuilder sb =  new StringBuilder();
		sb.append("cast: ");
		for (Actor actor : actor ) {
			sb.append(actor + ",\n");
		}
		return sb.toString();
	}

	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(String releaseYear) {
		this.releaseYear = Integer.parseInt(releaseYear);
	}
	public int getLanguageId() {
		return languageId;
	}

	public int getRentalDuration() {
		return rentalDuration;
	}
	public void setRentalDuration(double rentalDuration) {
		this.rentalDuration = (int) Math.round(rentalDuration);
	}
	public double getRentalRate() {
		return rentalRate;
	}
	public void setRentalRate(double rentalRate) {
		this.rentalRate = rentalRate;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int lenth) {
		this.length = lenth;
	}
	public double getReplacementCost() {
		return replacementCost;
	}
	public void setReplacementCost(double replacementCost) {
		this.replacementCost = replacementCost;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getSpecialFeatures() {
		return specialFeatures;
	}
	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}
	

	@Override
	public int hashCode() {
		return Objects.hash(description, id, languageId, length, rating, releaseYear, rentalDuration, rentalRate,
				replacementCost, specialFeatures, title);
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Film other = (Film) obj;
		return Objects.equals(description, other.description) && id == other.id && languageId == other.languageId
				&& length == other.length && Objects.equals(rating, other.rating) && releaseYear == other.releaseYear
				&& rentalDuration == other.rentalDuration
				&& Double.doubleToLongBits(rentalRate) == Double.doubleToLongBits(other.rentalRate)
				&& Double.doubleToLongBits(replacementCost) == Double.doubleToLongBits(other.replacementCost)
				&& Objects.equals(specialFeatures, other.specialFeatures) && Objects.equals(title, other.title);
	}
	

	@Override
	public String toString() {
		return "Film Title: " + title + " Year Released: " + releaseYear + " Rating: " + 
				rating +" Description: " + description + " Language: " + language;
			
	}
	
	
	
	
	public List<Actor> getActor() {
		return actor;
	}
//	@Override
//	public String toString() {
//		return "Film [title=" + title + ", description=" + description + ", releaseYear=" + releaseYear + ", actor="
//				+ actor + ", language=" + language + "]";
	

	public void setActor(List<Actor> actor) {
		this.actor = actor;
	}
	
	
	
}
