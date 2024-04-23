package database;

import java.sql.*;
import java.util.Scanner;

public class JavaImplementation {

	public static Scanner scanner = new Scanner(System.in);

	public static void main(String[] args) {
		String url = "";
		Connection con;
		Statement stmt;
		try {
			//for privacy and security reasons I have removed the details of my phpmyadmin account so the program will not run.
			//if you wish to run the program with your own account I have left templates for the information to put in.
			String host = "jdbc:mysql://[WEBHOSTING LINK]";
			String port = "[WEBHOSTING PORT]";
			String DB = "[DATABASE NAME]";
			String username "[PHPMYADMIN USERNAME]";
			String password = "[PHPMYADMIN PASSWORD]";
			String urlDB = host + port + DB;
			con = DriverManager.getConnection(urlDB, username, password);
			stmt = con.createStatement();
			String statement = null;

			System.out.println("What would you like to do:\n1. Add Data\n2. Query");
			int choice = scanner.nextInt();
			switch (choice) {
			case 1:
				statement = addDataToTable();
				stmt.execute(statement);
				break;
			case 2:
				statement = query();
				if (statement.contains("FROM employee") && statement.contains("INSERT INTO")) {
					printEmployeeResults(con, statement);
				} else if (statement.contains("FROM job") && statement.contains("INSERT INTO")) {
					printJobResults(con, (statement + ";"));
				} else if (statement.contains("FROM client")) {
					printClientResults(con, statement);
				} else if (statement.contains("1985-12-31")) {
					printViewOne(con, (statement + ";"));
				} else if (statement.contains("COUNT")) {
					printViewTwo(con, (statement + ";"));
				} else if (statement.contains("INNER JOIN client")) {
					printViewThree(con, (statement + ";"));
				} else {
					printViewFour(con, (statement + ";"));
				}
				break;
			}
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
	}

	public static void printEmployeeResults(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("Employee ID: " + rs.getString("id"));
				System.out.println("Forename: " + rs.getString("forename"));
				System.out.println("Surname: " + rs.getString("surname"));
				System.out.println("Birth Date: " + rs.getString("date_of_birth"));
				System.out.println("Address: " + rs.getInt("house_no") + " " + rs.getString("street") + " "
						+ rs.getString("country") + ", " + rs.getString("postcode"));
				System.out.println("Contact Details: " + rs.getString("email") + ", " + rs.getString("phone"));
				if (rs.getString("jobid") == null)
					System.out.println("Job ID: Unemployed");
				else
					System.out.println("Job ID: " + rs.getInt("jobid"));
				System.out.println("Recruiter ID: " + rs.getString("recruiterid"));
				System.out.println("Primary Skill: " + rs.getString("primary_skill"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void printJobResults(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("Job ID: " + rs.getString("id"));
				System.out.println("Title: " + rs.getString("title"));
				System.out.println("Hours: " + rs.getString("hours"));
				System.out.println("Salary: " + rs.getInt("salary"));
				System.out.println("Client ID: " + rs.getInt("clientid"));
				System.out.println("Role ID: " + rs.getInt("roleid"));
				System.out.println("Primary Skill: " + rs.getString("primary_skill"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void printClientResults(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("Client ID: " + rs.getString("id"));
				System.out.println("Name: " + rs.getString("name"));
				System.out.println("Address: " + rs.getInt("building_no") + " " + rs.getString("street") + " "
						+ rs.getString("country") + ", " + rs.getString("postcode"));
				System.out.println("Contact Details: " + rs.getString("email") + ", " + rs.getString("phone"));
				System.out.println("Representative ID: " + rs.getString("representativeid"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void printViewOne(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("ID: " + rs.getString("id"));
				System.out.println("Job ID: " + rs.getString("jobid"));
				System.out.println("Forename: " + rs.getString("forename"));
				System.out.println("Date of Birth: " + rs.getString("date_of_birth"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void printViewTwo(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("Job Level: " + rs.getString("Job Level"));
				System.out.println("Jobs: " + rs.getString("Jobs"));
				System.out.println("Average Salary: " + rs.getString("Average Salary"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void printViewThree(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("Employee: " + rs.getString("Employee"));
				System.out.println("Forename: " + rs.getString("Forename"));
				System.out.println("Surname: " + rs.getString("Surname"));
				System.out.println("Job Title: " + rs.getString("Job Title"));
				System.out.println("Salary: " + rs.getString("Salary"));
				System.out.println("Client: " + rs.getString("Client"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void printViewFour(Connection con, String s) throws SQLException {
		try (Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				System.out.println("ID: " + rs.getString("id"));
				System.out.println("Forename: " + rs.getString("forename"));
				System.out.println("Surname: " + rs.getString("surname"));
				System.out.println("Primary Skill: " + rs.getString("primary skill"));
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static String addDataToTable() {
		System.out.println("What table would you like to add data to?\n1. Employee\n2. Job\n3. Client");
		int choice = scanner.nextInt();
		String data = "INSERT INTO ";
		switch (choice) {
		case 1:
			data += addToEmployee();
			return data;
		case 2:
			data += addToJob();
			return data;
		case 3:
			data += addToClient();
			return data;
		default:
			System.out.println("That is not a valid input, try again");
			return null;
		}
	}

	public static String addToEmployee() {
		String data = "employee(forename,surname,date_of_birth,house_no,street,town,country,postcode,email,phone,medical_conditions,jobid,recruiterid,primary_skill) VALUES(";
		System.out.println("Forename");
		data += getStringValue() + ",";
		System.out.println("Surname");
		data += getStringValue() + ",";
		System.out.println("Birth Date (YYYY-MM-DD)");
		data += getStringValue() + ",";
		System.out.println("House Number");
		data += getStringValue() + ",";
		System.out.println("Street");
		data += getStringValue() + ",";
		System.out.println("Town");
		data += getStringValue() + ",";
		System.out.println("Country");
		data += getStringValue() + ",";
		System.out.println("Postcode");
		data += getStringValue() + ",";
		System.out.println("Email");
		data += getStringValue() + ",";
		System.out.println("Phone");
		data += getStringValue() + ",";
		System.out.println("Job ID");
		data += getStringValue() + ",";
		System.out.println("Recruiter ID");
		data += getStringValue() + ",";
		System.out.println("Primary Skill");
		data += getStringValue() + ");";
		return data;
	}

	public static String addToJob() {
		String data = "job(title,hours,salary,clientid,roleid,primary_skill) VALUES (";
		System.out.println("Title");
		data += getStringValue() + ",";
		System.out.println("Hours");
		data += getStringValue() + ",";
		System.out.println("Salary");
		data += getStringValue() + ",";
		System.out.println("Client ID");
		data += getStringValue() + ",";
		System.out.println("Role ID");
		data += getStringValue() + ",";
		System.out.println("Primary Skills");
		data += getStringValue() + ");";
		return data;
	}

	public static String addToClient() {
		String data = "client(name,building_no,street,town,country,postcode,email,phone,representativeid) VALUES (";
		System.out.println("Name");
		data += getStringValue() + ",";
		System.out.println("Building Number");
		data += getStringValue() + ",";
		System.out.println("Street");
		data += getStringValue() + ",";
		System.out.println("Town");
		data += getStringValue() + ",";
		System.out.println("Country");
		data += getStringValue() + ",";
		System.out.println("Postcode");
		data += getStringValue() + ",";
		System.out.println("Email");
		data += getStringValue() + ",";
		System.out.println("Phone");
		data += getStringValue() + ",";
		System.out.println("Representative ID");
		data += getStringValue() + ");";
		return data;
	}

	public static String query() {
		System.out.println("What table would you like to query?\n1. Employee\n2. Job\n3. Client\n4. Existing Query");
		int choice = scanner.nextInt();
		String data = "SELECT ";
		switch (choice) {
		case 1:
			data += queryEmployee();
			return data;
		case 2:
			data += queryJob();
			return data;
		case 3:
			data += queryClient();
			return data;
		case 4:
			data += viewSelector();
			return data;
		default:
			System.out.println("That is not a valid input, try again");
			return null;
		}

	}

	public static String queryEmployee() {
		String data = "* FROM employee ";
		System.out.println("Conditional Statement?\n1. Yes\n2. No");
		int condition = scanner.nextInt();
		System.out.println();
		if (condition == 1) {
			data += "WHERE ";
			System.out.println("What do you want to query:\n1. ID\n2. Forename\n3. Primary Skill");
			int choice = scanner.nextInt();
			System.out.println();
			switch (choice) {
			case 1:
				data += "id = " + getID();
				return data;
			case 2:
				System.out.println("Enter Forename:");
				data += "forename = " + getStringValue();
				return data;
			case 3:
				data += "primary_skill = " + getID();
				return data;
			default:
				System.out.println("That is not a valid input, returning all values.");
			}
		}
		return data;
	}

	public static String queryJob() {
		String data = "* FROM job ";
		System.out.println("Conditional Statement?\n1. Yes\n2. No");
		int condition = scanner.nextInt();
		System.out.println();
		if (condition == 1) {
			data += "WHERE ";
			System.out.println("What do you want to query:\n1. ID\n2. Title\n3. Primary Skills");
			int choice = scanner.nextInt();
			System.out.println();
			switch (choice) {
			case 1:
				data += "id  = " + getID();
				return data;
			case 2:
				System.out.println("Enter Job Title:");
				data += "title = " + getStringValue();
				return data;
			case 3:
				data += "primary_skills  = " + getID();
				return data;
			default:
				System.out.println("That is not a valid input, returning all values.");
			}
		}
		return data;
	}

	public static String queryClient() {
		String data = "* FROM client ";
		System.out.println("Conditional Statement?\n1. Yes\n2. No");
		int condition = scanner.nextInt();
		System.out.println();
		if (condition == 1) {
			data += "WHERE ";
			System.out.println("What do you want to query:\n1. ID\n2. Client Name\n3. Representative ID");
			int choice = scanner.nextInt();
			System.out.println();
			switch (choice) {
			case 1:
				data += "id  = " + getID();
				return data;
			case 2:
				System.out.println("Enter Client Name:");
				String name = getStringValue();
				data += "name = " + name;
				return data;
			case 3:
				data += "representativeid  = " + getID();
				return data;
			default:
				System.out.println("That is not a valid input, returning all values.");
			}
		}
		return data;
	}
	
	public static String viewSelector() {
		String data;
		System.out.println("What query would you like to view:\n1. available_born_between\n2. avg_manager_salary\n3. job_options\n4. unemployed");
		int choice = scanner.nextInt();
		System.out.println();
		switch (choice) {
		case 1:
			data = "employee.id AS 'id', employee.jobid AS 'jobid', employee.forename AS 'forename', employee.date_of_birth AS date_of_birth FROM employee WHERE employee.date_of_birth > '1985-12-31' AND employee.date_of_birth < '2000-01-01'";
			return data;
		case 2:
			data = "role.title AS 'Job Level', COUNT(job.id) AS 'Jobs', AVG(job.salary) AS 'Average Salary' FROM job INNER JOIN role ON job.roleid = role.id WHERE role.id = 6";
			return data;
		case 3:
			data = "employee.id AS 'Employee', employee.forename AS 'Forename', employee.surname AS 'Surname', job.title AS 'Job Title', job.salary AS 'Salary', client.name AS 'Client' FROM job INNER JOIN employee ON employee.primary_skill = job.primary_skill INNER JOIN client ON job.clientid = client.id WHERE employee.jobid IS NULL ORDER BY employee.forename ASC, job.salary DESC";
			return data;
		case 4:
			data = "employee.id AS 'ID', employee.forename AS 'Forename', employee.surname AS 'Surname', employee.primary_skill AS 'Primary Skill' FROM employee WHERE employee.jobid IS NULL";
			return data;
		default:
			System.out.println("That is not a valid input, returning all values.");
			return null;
		}
	}

	public static int getID() {
		System.out.println("Enter ID:");
		return scanner.nextInt();
	}

	public static String getStringValue() {
		Scanner scanner2 = new Scanner(System.in);
		return "'" + scanner2.nextLine() + "'";
	}
}
