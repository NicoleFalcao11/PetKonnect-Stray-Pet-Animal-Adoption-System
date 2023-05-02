package Pet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Pet.model.Category;

public class CategoryDao {
	private Connection con;
	private String query;

	private PreparedStatement pst;
	private ResultSet rs;
	
	public CategoryDao(Connection con) {
		this.con = con;
	}
	
	
	public Category getCatById(int cid) {
	    Category cat = null;
	    String q = "select * from Category where cid=?";
	    try {
	        PreparedStatement p = this.con.prepareStatement(q);
	        p.setInt(1, cid);

	        ResultSet set = p.executeQuery();

	        if (set.next()) {
	           // pro = new Product();
	            int Cid = set.getInt("cid");
	            String cname = set.getString("Name");
	            //String Breed = set.getString("Breed");
	            //String Location = set.getString("Location");
	            //int Age = set.getInt("Age");
	           // String image = set.getString("image");
	           
	            //String highlight = set.getString("highlight");
	            //String description = set.getString("description");
	            //String vaccinated = set.getString("vaccinated");
	            //String Health= set.getString("Health");
	            //String gender = set.getString("gender");
	            //int Cid = set.getInt("cid");
	            //int gid = set.getInt("gid");
	           // String gname = set.getString("gname");
	            //Timestamp date = set.getTimestamp("pDate");
	            //int cid=set.getInt("catId");
	            //int uid = set.getInt("userId");
	            cat = new Category(Cid,cname);

	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return cat;
	}
}

