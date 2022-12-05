package dto;

import java.io.Serializable;

public class place implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String placeno;
	private String placename;
	private String placeaddress;
	private Integer placeprice;
	private String filename;
	public String getPlaceno() {
		return placeno;
	}

	


	public String getPlacename() {
		return placename;
	}

	public void setPlacename(String placename) {
		this.placename = placename;
	}

	public String getPlaceaddress() {
		return placeaddress;
	}

	public void setPlaceaddress(String placeaddress) {
		this.placeaddress = placeaddress;
	}

	public Integer getplaceprice() {
		return placeprice;
	}

	public void setplaceprice(Integer placeprice) {
		this.placeprice = placeprice;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public void setPlaceno(String placeno) {
		this.placeno = placeno;
	}


	public place() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public place(String placeno, String placename, Integer placeprice) {
		this.placeno=placeno;
		this.placename=placename;
		this.placeprice=placeprice;
	}

	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
