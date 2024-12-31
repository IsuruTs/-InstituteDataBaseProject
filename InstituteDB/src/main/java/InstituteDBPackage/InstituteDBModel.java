package InstituteDBPackage;

public class InstituteDBModel {
	private int id;
	private String region;
	private String customername;
	private String lab;
	private String section;
	private String phone;
	private String principal;
	private String model;
	private String serialno;
	
	public InstituteDBModel(int id, String region, String customername, String lab, String section, String phone,
			String principal, String model, String serialno) {
		super();
		this.id = id;
		this.region = region;
		this.customername = customername;
		this.lab = lab;
		this.section = section;
		this.phone = phone;
		this.principal = principal;
		this.model = model;
		this.serialno = serialno;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getLab() {
		return lab;
	}

	public void setLab(String lab) {
		this.lab = lab;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPrincipal() {
		return principal;
	}

	public void setPrincipal(String principal) {
		this.principal = principal;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getSerialno() {
		return serialno;
	}

	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}
	
	

}
