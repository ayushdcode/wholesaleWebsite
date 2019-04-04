package edu.com;

public class Sale {
	private String party_name;
	private String gstin;
	public Sale(String party_name, String gstin) {
		super();
		this.party_name = party_name;
		this.gstin = gstin;
	}
	public String getParty_name() {
		return party_name;
	}
	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}
	public String getGstin() {
		return gstin;
	}
	public void setGstin(String gstin) {
		this.gstin = gstin;
	}

}
