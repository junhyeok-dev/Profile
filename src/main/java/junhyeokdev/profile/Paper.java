package junhyeokdev.profile;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class Paper {
    @Id
    private String title;
    private String author;
    private String publication;
    private String abs;
    private boolean sci;
    private String url;
}
