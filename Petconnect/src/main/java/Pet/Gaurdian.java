package Pet.model;

public class Gaurdian {
    private int gid;
    private String gname;
    private String gpassword;
    private String gmail;
    private String gmobile;
    //private int Id;
    
   

    public Gaurdian(int gid, String gname ,String gpassword,String gmail , String gmobile) {
        this.gid = gid;
        this.gname = gname;
        this.gpassword=gpassword;
        this.gmail=gmail;
        this.gmobile = gmobile;
        
    }

    public Gaurdian() {
    }

    public Gaurdian(String gname) {
        this.gname = gname;
       
    }

    public int getgid() {
        return gid;
    }

    public void setgid(int gid) {
        this.gid = gid;
    }

    public String getgname() {
        return gname;
    }

    public void setgname(String gname) {
        this.gname = gname;
    }
    public String getgpassword() {
        return gpassword;
    }

    public void setgpassword(String gpassword) {
        this.gpassword = gpassword;
    }
    public String getgmail() {
        return gmail;
    }

    public void setgmail(String gmail) {
        this.gmail = gmail;
    }
    
    public String getgmobile() {
        return gmobile;
    }

    public void setgmobile(String gmobile) {
        this.gmobile = gmobile;
    }
}

  