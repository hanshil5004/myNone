package helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;

	public static SessionFactory getFectory() {

		if (factory == null) {

			factory = new Configuration().configure("hibernet.config.xml").buildSessionFactory();
		}

		return factory;
	}

	public void closeFectory() {

		if (factory.isOpen()) {
			factory.close();
		}

	}
}
