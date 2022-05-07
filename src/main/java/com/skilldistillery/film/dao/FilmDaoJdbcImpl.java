package com.skilldistillery.film.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Film;
import com.skilldistillery.film.entities.Actor;

@Component
public class FilmDaoJdbcImpl implements FilmDAO {
	private String user = "student";
	private String pw = "student";
	private static String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public FilmDaoJdbcImpl() {

	}

	@Override
	public Film findFilmById(int filmId) {
		Film film = null;
		ResultSet rs;
		String inventoryQuery = "SELECT inventory_item.id, inventory_item.media_condition FROM inventory_item JOIN film ON inventory_item.film_id = film.id WHERE film.id = ?";
		String categoryQuery = "SELECT category.name FROM category JOIN film_category ON category.id = film_category.category_id JOIN film ON film.id = film_category.film_id WHERE film.id = ?";
		String sql = "SELECT film.*, language.name FROM film JOIN language ON language.id = film.language_id WHERE film.id = ?";
		String actorQuery = "SELECT actor.* FROM actor JOIN film_actor ON actor.id = film_actor.actor_id JOIN film ON film.id = film_actor.film_id WHERE film.id = ?";
		try (Connection conn = DriverManager.getConnection(URL, user, pw);
				PreparedStatement catPst = conn.prepareStatement(categoryQuery);
				PreparedStatement pst = conn.prepareStatement(sql);
				PreparedStatement inventoryPst = conn.prepareStatement(inventoryQuery);
				PreparedStatement actorPst = conn.prepareStatement(actorQuery);) {
			pst.setInt(1, filmId);
			rs = pst.executeQuery();
			if (rs.next()) {

				film = new Film(rs.getInt("id"), rs.getString("title"), rs.getString("description"),
						rs.getInt("release_year"), rs.getInt("language_id"), rs.getInt("rental_duration"),
						rs.getDouble("rental_rate"), rs.getInt("length"), rs.getDouble("replacement_cost"),
						rs.getString("rating"), rs.getString("special_features"));
				film.setLanguage(rs.getNString("language.name"));
				List<String> inventory = new ArrayList<>();
				inventoryPst.setInt(1, filmId);
				rs = inventoryPst.executeQuery();
				while (rs.next()) {
					String inventoryItem = "Copy #" + rs.getInt("inventory_item.id") + ", condition - "
							+ rs.getNString("inventory_item.media_condition");
					inventory.add(inventoryItem);
				}
				film.setInventory(inventory);
				List<Actor> filmActors = new ArrayList<>();
				actorPst.setInt(1, filmId);
				rs = actorPst.executeQuery();
				while (rs.next()) {
					filmActors.add(new Actor(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name")));
				}
				film.setActors(filmActors);
				catPst.setInt(1, filmId);
				rs = catPst.executeQuery();
				if (rs.next()) {
					film.setCategory(rs.getNString("category.name"));
				}

			}

			rs.close();
		} catch (SQLException e) {
			System.out.println("Your query could not be completed by the database");
		}

		return film;
	}

	@Override
	public List<Film> findFilmsByQuery(String query) {
		List<Film> films = new ArrayList<>();
		query = "%" + query + "%";
		ResultSet rs;
		String categoryQuery = "SELECT category.name FROM category JOIN film_category ON category.id = film_category.category_id JOIN film ON film.id = film_category.film_id WHERE film.id = ?";
		String actorQuery = "SELECT actor.* FROM actor JOIN film_actor ON actor.id = film_actor.actor_id JOIN film ON film.id = film_actor.film_id WHERE film.id = ?";
		String inventoryQuery = "SELECT inventory_item.id, inventory_item.media_condition FROM inventory_item JOIN film ON inventory_item.film_id = film.id WHERE film.id = ?";
		String sql = "SELECT film.*, language.name FROM film JOIN language ON film.language_id = language.id WHERE film.title LIKE ? OR film.description Like ?";
		try (Connection conn = DriverManager.getConnection(URL, user, pw);
				PreparedStatement pst = conn.prepareStatement(sql);
				PreparedStatement catPst = conn.prepareStatement(categoryQuery);
				PreparedStatement inventoryPst = conn.prepareStatement(inventoryQuery);
				PreparedStatement actorPst = conn.prepareStatement(actorQuery);) {
			pst.setNString(1, query);
			pst.setNString(2, query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Film film = new Film(rs.getInt("id"), rs.getString("title"), rs.getString("description"),
						rs.getInt("release_year"), rs.getInt("language_id"), rs.getInt("rental_duration"),
						rs.getDouble("rental_rate"), rs.getInt("length"), rs.getDouble("replacement_cost"),
						rs.getString("rating"), rs.getString("special_features"));
				film.setLanguage(rs.getNString("language.name"));
				List<Actor> filmActors = new ArrayList<>();
				actorPst.setInt(1, film.getId());
				ResultSet resultPlus = actorPst.executeQuery();
				while (resultPlus.next()) {
					filmActors.add(new Actor(resultPlus.getInt("id"), resultPlus.getString("first_name"),
							resultPlus.getString("last_name")));
				}
				film.setActors(filmActors);

				catPst.setInt(1, film.getId());
				resultPlus = catPst.executeQuery();
				if (resultPlus.next()) {
					film.setCategory(resultPlus.getNString("category.name"));
				}
				List<String> inventory = new ArrayList<>();
				inventoryPst.setInt(1, film.getId());
				resultPlus = inventoryPst.executeQuery();
				while (resultPlus.next()) {
					String inventoryItem = "Copy #" + resultPlus.getInt("inventory_item.id") + ", condition - "
							+ resultPlus.getNString("inventory_item.media_condition");
					inventory.add(inventoryItem);
				}
				film.setInventory(inventory);
				films.add(film);

				resultPlus.close();
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("Your query could not be completed by the database");
		}

		return films;
	}

	@Override
	public Actor findActorById(int actorId) {
		Actor actor = null;
		ResultSet rs;
		String filmQuery = "Select film.* FROM film JOIN film_actor ON film.id = film_actor.film_id JOIN actor ON actor.id = film_actor.actor_id WHERE actor.id = ?";
		String sql = "SELECT * FROM actor WHERE actor.id = ?";
		try (Connection conn = DriverManager.getConnection(URL, user, pw);
				PreparedStatement actorPst = conn.prepareStatement(filmQuery);
				PreparedStatement pst = conn.prepareStatement(sql);) {
			pst.setInt(1, actorId);
			rs = pst.executeQuery();
			if (rs.next()) {
				actor = new Actor(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"));
//				actor.setFilms(findFilmsByActorId(actorId));
				List<Film> actorFilms = new ArrayList<>();
				actorPst.setInt(1, actorId);
				rs = actorPst.executeQuery();
				while (rs.next()) {
					actorFilms.add(new Film(rs.getInt("id"), rs.getString("title"), rs.getString("description"),
							rs.getInt("release_year"), rs.getInt("language_id"), rs.getInt("rental_duration"),
							rs.getDouble("rental_rate"), rs.getInt("length"), rs.getDouble("replacement_cost"),
							rs.getString("rating"), rs.getString("special_features")));
				}
			}

			rs.close();
		} catch (SQLException e) {
			System.out.println("Your query could not be completed by the database");
		}

		return actor;
	}

	public int createFilm(Film film) {
		String insertFilm = "INSERT INTO film (title, description, language_id)" + "VALUES (?, ?, 1)";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pw);
			PreparedStatement insertStatement = conn.prepareStatement(insertFilm, Statement.RETURN_GENERATED_KEYS);
			ResultSet rs;
			conn.setAutoCommit(false);
			insertStatement.setString(1, film.getTitle());
			insertStatement.setString(2, film.getDescription());
			int rowsAdded = insertStatement.executeUpdate();
			if (rowsAdded == 1) {
				rs = insertStatement.getGeneratedKeys();
				if (rs.next()) {
					int newFilmId = rs.getInt(1);
					film.setId(newFilmId);
//					if (film.getActors() != null && film.getActors().size() > 0) {
//						String buildFilmActor = "INSERT INTO film_actor(film_id, actor_id) VALUES ( ?, ?)";
//						insertStatement = conn.prepareStatement(buildFilmActor);
//						insertStatement.setInt(1, film.getId());
//						for (Actor actor : film.getActors()) {
//							insertStatement.setInt(2, actor.getId());
//							insertStatement.executeUpdate();
//						}
//					}
				}
			}
			conn.commit();
			return film.getId();
		} catch (SQLException e) {
			e.printStackTrace();
		    if (conn != null) {
		      try { conn.rollback(); }
		      catch (SQLException sqle2) {
		        System.err.println("Error trying to rollback");
		      }
		    }
		    throw new RuntimeException("Error inserting film " + film.getTitle());
		  }
	}
	public boolean deleteFilm(Film film) {
		Connection conn = null;
		  try {
		    conn = DriverManager.getConnection(URL, user, pw);
		    conn.setAutoCommit(false); // START TRANSACTION
		    String sql = "DELETE FROM film_actor WHERE film_id = ?";
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    stmt.setInt(1, film.getId());
		    int updateCount = stmt.executeUpdate();
		    sql = "DELETE FROM film WHERE id = ?";
		    stmt = conn.prepareStatement(sql);
		    stmt.setInt(1, film.getId());
		    updateCount = stmt.executeUpdate();
		    conn.commit();             // COMMIT TRANSACTION
		  }
		  catch (SQLException sqle) {
		    sqle.printStackTrace();
		    if (conn != null) {
		      try { conn.rollback(); }
		      catch (SQLException sqle2) {
		        System.err.println("Error trying to rollback");
		      }
		    }
		    return false;
		  }
		  return true;
	}

}
