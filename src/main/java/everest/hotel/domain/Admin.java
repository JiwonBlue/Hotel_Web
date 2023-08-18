package everest.hotel.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "admin_table")
public class Admin {
    @Id
    private String admin_id;
    private String admin_name;
    private String admin_pwd;

}
