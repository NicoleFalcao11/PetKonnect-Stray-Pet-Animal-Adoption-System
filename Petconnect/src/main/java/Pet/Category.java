package Pet.model;

public class Category {
    private int cid;
    private String cname;
   

    public Category(int cid, String cname) {
        this.cid = cid;
        this.cname = cname;
        
    }

    public Category() {
    }

    public Category(String cname) {
        this.cname = cname;
       
    }

    public int getcid() {
        return cid;
    }

    public void setcid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return cname;
    }

    public void setName(String cname) {
        this.cname = cname;
    }

   

    
    
    
    
}