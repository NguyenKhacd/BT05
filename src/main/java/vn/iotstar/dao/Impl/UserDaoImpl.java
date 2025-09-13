package vn.iotstar.dao.Impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import vn.iotstar.dao.UserDao;
import vn.iotstar.entity.User;

public class UserDaoImpl implements UserDao {

    private EntityManager em;

    public UserDaoImpl() {
        em = Persistence.createEntityManagerFactory("dataSource").createEntityManager();
    }

    @Override
    public User login(String username, String password) {
        try {
            return em.createQuery(
                    "SELECT u FROM User u WHERE u.username = :un AND u.password = :pw", User.class)
                    .setParameter("un", username)
                    .setParameter("pw", password)
                    .getSingleResult();
        } catch (Exception e) {
            return null; // Không tìm thấy hoặc sai username/password
        }
    }

    @Override
    public User findById(int id) {
        return em.find(User.class, id);
    }

    @Override
    public void update(User user) {
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.merge(user); // merge sẽ update nếu entity tồn tại
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction.isActive()) {
                transaction.rollback();
            }
        }
    }
}
