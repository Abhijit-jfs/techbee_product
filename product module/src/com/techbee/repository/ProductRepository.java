package com.techbee.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.techbee.model.Product;

public class ProductRepository {

	public static List<Product> getProducts() {
		List<Product> result = new ArrayList<>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");  
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from TProduct");
			while(resultSet.next()) {
				Product product = new Product();
				product.setProductId(resultSet.getString("PRODUCT_ID"));
				product.setProductName(resultSet.getString("PRODUCT_NAME"));
				product.setProductDescription(resultSet.getString("PRODUCT_DESCRIPTION"));
				product.setProductPrice(resultSet.getDouble("PRODUCT_PRICE"));
				product.setProductRating(resultSet.getDouble("PRODUCT_RATING"));
				result.add(product);
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return result;
	}
}
