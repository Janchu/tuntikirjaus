package fi.softala.tunti2_tuntikirjaus.luokat;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "tunnit")
public class TunnitImpl implements Tunnit {

	// Muuttujat

	private int id;

	@Range(min = 1, max = 1000)
	private int kayttajaId;

	@DecimalMin("0.25")
	@DecimalMax("100.00")
	private double tuntien_maara;

	private String paivamaara;

	@Pattern(regexp = "[a-zA-Z������0-9/./,/:/@/?/!/+/=/(/)/#/%/&/*//\"\'\t\n\r -]*")
	@Size(min = 1, max = 1000)
	private String kuvaus;

	// Tyhj� constructor

	public TunnitImpl() {
		this.id = 0;
		this.kayttajaId = 0;
		this.tuntien_maara = 0.00;
		this.paivamaara = "";
		this.kuvaus = "";

	}

	// Constructor joka vaatii kaikki muuttujat

	public TunnitImpl(int id, int kayttajaId, double tuntien_maara,
			String paivamaara, String kuvaus) {
		this.id = id;
		this.kayttajaId = kayttajaId;
		this.tuntien_maara = tuntien_maara;
		this.paivamaara = paivamaara;
		this.kuvaus = kuvaus;
	}

	// Constructor joka vaatii kaiken paitsi id:n

	public TunnitImpl(int kayttajaId, int tuntien_maara, String paivamaara,
			String kuvaus) {
		this.id = -1;
		this.kayttajaId = 0;
		this.tuntien_maara = tuntien_maara;
		this.paivamaara = paivamaara;
		this.kuvaus = kuvaus;

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getKayttajaId() {
		return kayttajaId;
	}

	public void setKayttajaId(int kayttajaId) {
		this.kayttajaId = kayttajaId;
	}

	public double getTuntien_maara() {
		return tuntien_maara;
	}

	public void setTuntien_maara(double tuntien_maara) {
		this.tuntien_maara = tuntien_maara;
	}

	public String getPaivamaara() {
		return paivamaara;
	}

	public void setPaivamaara(String paivamaara) {
		this.paivamaara = paivamaara;
	}

	public String getKuvaus() {
		return kuvaus;
	}

	public void setKuvaus(String kuvaus) {
		this.kuvaus = kuvaus;
	}

	// Getterit ja setterit

}
