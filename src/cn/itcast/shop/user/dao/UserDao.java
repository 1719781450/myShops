package cn.itcast.shop.user.dao;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.user.vo.User;
import cn.itcast.shop.utils.PageHibernateCallback;

/**
 * 用户模块持久层代码:
 * 
 * 
 */
public class UserDao extends HibernateDaoSupport {

	// 按名次查询是否有该用户:
	public User findByUsername(String username) {
		String hql = "from User where username = ?";
		String name;
		try {
			name = URLDecoder.decode(username,"utf-8");
			List<User> list = this.getHibernateTemplate().find(hql, name);
			if (list != null && list.size() > 0) {
				return list.get(0);
			}
		} catch (UnsupportedEncodingException e) {
		  System.out.println("传递参数编码有误");
			e.printStackTrace();
		}
		return null;
		
	}

	// 注册用户存入数据库代码实现
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	// 根据激活码查询用户
	public User findByCode(String code) {
		String hql = "from User where code = ?";
		List<User> list = this.getHibernateTemplate().find(hql, code);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// 修改用户状态的方法
	public void update(User existUser) {
		this.getHibernateTemplate().update(existUser);
	}

	// 用户登录的方法
	public User login(User user) {
		String hql = "from User where username = ? and password = ? and state = ?";
		List<User> list = this.getHibernateTemplate().find(hql,
				user.getUsername(), user.getPassword(), 1);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public int findCount() {
		String hql = "select count(*) from User";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<User> findByPage(int begin, int limit) {
		String hql = "from User";
		List<User> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<User>(hql, null, begin, limit));
		return list;
	}

	public User findByUid(Integer uid) {
		return this.getHibernateTemplate().get(User.class, uid);
	}

	public void delete(User existUser) {
		this.getHibernateTemplate().delete(existUser);
	}
}
