package junhyeokdev.profile;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PaperRepository extends CrudRepository<Paper, String> {
    List<Paper> findByTitleContaining(String keyword);
    List<Paper> findByAuthorContaining(String keyword);
    List<Paper> findByAbsContaining(String keyword);
}
