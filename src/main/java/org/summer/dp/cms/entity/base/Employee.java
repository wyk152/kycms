package org.summer.dp.cms.entity.base;

// Generated 2015-10-29 11:09:22 by Hibernate Tools 4.0.0

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Employee generated by hbm2java
 */
@Entity
@Table(name = "employee" , uniqueConstraints = @UniqueConstraint(columnNames = "ACCOUNT_ID"))
public class Employee implements java.io.Serializable {
	private static final long serialVersionUID = 2663464651034487322L;
	private Long id;
	private Employee employeeByModifyUserId;
	private Employee employeeByAddUserId;
	private Account account;
	private String name;
	private Long defaultPostId;
	private Date addDate;
	private Date modifyDate;
	private String educationBackground;
	private Integer maritalStatus;
	private Integer state;
	private Date dateOfBirth;
	private String idCard;
	private String email;

	private Set<EmployeePosts> employeePostses = new HashSet<EmployeePosts>(0);

	public Employee() {
	}

	public Employee(String name) {
		this.name = name;
	}

	public Employee(Employee employeeByModifyUserId,
			Employee employeeByAddUserId, Account account, String name,
			Long defaultPostId, Date addDate, Date modifyDate,
			String educationBackground, Integer maritalStatus, Integer state,
			Date dateOfBirth, String idCard, String email,
			Set<Employee> employeesForModifyUserId,
			Set<Account> accountsForModifyUserId,
			Set<Account> accountsForAddUserId,
			Set<Employee> employeesForAddUserId,
			Set<EmployeePosts> employeePostses) {
		this.employeeByModifyUserId = employeeByModifyUserId;
		this.employeeByAddUserId = employeeByAddUserId;
		this.account = account;
		this.name = name;
		this.defaultPostId = defaultPostId;
		this.addDate = addDate;
		this.modifyDate = modifyDate;
		this.educationBackground = educationBackground;
		this.maritalStatus = maritalStatus;
		this.state = state;
		this.dateOfBirth = dateOfBirth;
		this.idCard = idCard;
		this.email = email;
		this.employeePostses = employeePostses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MODIFY_USER_ID")
	public Employee getEmployeeByModifyUserId() {
		return this.employeeByModifyUserId;
	}

	public void setEmployeeByModifyUserId(Employee employeeByModifyUserId) {
		this.employeeByModifyUserId = employeeByModifyUserId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ADD_USER_ID")
	public Employee getEmployeeByAddUserId() {
		return this.employeeByAddUserId;
	}

	public void setEmployeeByAddUserId(Employee employeeByAddUserId) {
		this.employeeByAddUserId = employeeByAddUserId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ACCOUNT_ID", unique = true)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Column(name = "NAME", nullable = false, length = 16)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "DEFAULT_POST_ID")
	public Long getDefaultPostId() {
		return this.defaultPostId;
	}

	public void setDefaultPostId(Long defaultPostId) {
		this.defaultPostId = defaultPostId;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ADD_DATE", length = 10)
	public Date getAddDate() {
		return this.addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "MODIFY_DATE", length = 10)
	public Date getModifyDate() {
		return this.modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Column(name = "EDUCATION_BACKGROUND", length = 32)
	public String getEducationBackground() {
		return this.educationBackground;
	}

	public void setEducationBackground(String educationBackground) {
		this.educationBackground = educationBackground;
	}

	@Column(name = "MARITAL_STATUS")
	public Integer getMaritalStatus() {
		return this.maritalStatus;
	}

	public void setMaritalStatus(Integer maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	@Column(name = "STATE")
	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_OF_BIRTH", length = 10)
	public Date getDateOfBirth() {
		return this.dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	@Column(name = "ID_CARD", length = 32)
	public String getIdCard() {
		return this.idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	@Column(name = "EMAIL", length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee")
	public Set<EmployeePosts> getEmployeePostses() {
		return this.employeePostses;
	}

	public void setEmployeePostses(Set<EmployeePosts> employeePostses) {
		this.employeePostses = employeePostses;
	}

}
