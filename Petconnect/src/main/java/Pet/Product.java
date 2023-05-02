package Pet.model;

public class Product {
      
	   private int Id;
       private String Name;
       private String Breed;
       private String Location;
       private int Age;
       private String image;
      
       private String highlight;
       private String description;
       private String vaccinated;
       private String Health;
       private String gender;
       private int cid;
       private int gid;
       //private String gname;
       
       public Product() {
    	   
       }
       public Product(int Id,String Name , String Breed , String Location, int Age , String image,String highlight,String description,String vaccinated,String Health,String gender,int cid,int gid) {
    	   
    	   this.Id = Id;
    	   this.Name = Name;
    	   this.Breed = Breed;
    	   this.Location = Location;
    	   this.Age = Age;
    	   this.image = image;
    	  
    	   this.highlight = highlight;
    	   this.description = description;
    	   this.vaccinated = vaccinated;
    	   this.Health= Health;
    	   this.gender = gender;
    	   this.cid = cid;
    	   this.gid=gid;
    	   //this.gname=gname;
       }
       public int getId() {
   		return Id;
   	}
   	public void setId(int id) {
   		Id = id;
   	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getBreed() {
		return Breed;
	}
	public void setBreed(String breed) {
		Breed = breed;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
   	
   	public String gethighlight() {
		return highlight;
	}
	public void sethighlight(String highlight) {
		this.highlight = highlight;
	}
	
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	
	public String getvaccinated() {
		return vaccinated;
	}
	public void setvaccinated(String vaccinated) {
		this.vaccinated = vaccinated;
	}
	
	public String getHealth() {
		return Health;
	}
	public void setHealth(String Health) {
		this.Health = Health;
	}
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender= gender;
	}
	
	public int getcid() {
   		return cid;
   	}
   	public void setcid(int cid) {
   		this.cid = cid;
   	}
   	
   	public int getgid() {
   		return gid;
   	}
   	public void setgid(int gid) {
   		this.gid = gid;
   	}
	
   
	@Override
	public String toString() {
		return "Product [Id=" +Id +",Name=" +Name + ", Breed=" + Breed + ", Location=" + Location + ", Age=" + Age + ",image=" + image + ",highlight=" + highlight + ",description=" + description + ",vaccinated=" + vaccinated + ",Health=" + Health + ",gender=" + gender +",cid=" + cid + ",gid=" + gid + "]";
	}
	
	
	}
       
