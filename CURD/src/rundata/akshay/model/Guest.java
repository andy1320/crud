package rundata.akshay.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="guest" , schema ="guru")
public class Guest {
	@Id
	@GeneratedValue
	private String Guestname;
	@NotNull
	private String age;
	@NotNull
	private String Mobile;
	
}
