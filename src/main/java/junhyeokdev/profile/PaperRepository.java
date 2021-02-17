package junhyeokdev.profile;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PaperRepository extends CrudRepository<Paper, String> {
    List<Paper> findByTitleContainingIgnoreCase(String keyword);
    List<Paper> findByAuthorContainingIgnoreCase(String keyword);
    List<Paper> findByAbsContainingIgnoreCase(String keyword);
}
