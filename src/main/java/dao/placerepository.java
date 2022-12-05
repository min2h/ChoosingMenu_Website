package dao;

import java.util.ArrayList;

import dto.place;

public class placerepository {
	private ArrayList<place> listOfplaces = new ArrayList<place>();
    private static placerepository instance = new placerepository();
    public static placerepository getInstance() {
		return instance;
	}
	public void addplace(place place) {
		listOfplaces.add(place);
	}
    
	private placerepository() {
    	place cafe=new place("P1234","봉구스밥버거 협성대점",3000);
    	cafe.setPlaceaddress("ddd");    	
    	
    	listOfplaces.add(cafe);
		// TODO Auto-generated constructor stub
    	
	}	
	
    public ArrayList<place> getAllplaces() {
    		return listOfplaces;
    }
    public place getplaceById(String placeId) {
    	place placeById=null;
    	
    	for(int i =0 ;i<listOfplaces.size() ; i++) {
    		place place=listOfplaces.get(i);
    		if(place != null &&
    			place.getPlaceno()!=null && 
    			place.getPlaceno().equals(placeId)) {
    			placeById=place;
    			break;
    		}
    	}
    	return placeById;
    }
}
