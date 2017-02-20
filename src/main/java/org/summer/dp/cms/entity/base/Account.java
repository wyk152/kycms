package org.summer.dp.cms.entity.base;

// Generated 2015-10-19 15:13:38 by Hibernate Tools 3.4.0.CR1

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
 * Account generated by hbm2java
 */
@Entity
@Table(name = "account",  uniqueConstraints = @UniqueConstraint(columnNames = "LOGIN_NAME"))
public class Account implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1264240706007686716L;
	private Long id;
	private Employee employeeByModifyUserId;
	private Employee employeeByAddUserId;
	private String loginName;
	private String password;
	private Date addDate;
	private Date modifyDate;
	private Integer status;
	private Set<Employee> employees = new HashSet<Employee>(0);

	public Account() {
	}

	public Account(String loginName, String password, Date addDate) {
		this.loginName = loginName;
		this.password = password;
		this.addDate = addDate;
	}

	public Account(Employee employeeByModifyUserId,
			Employee employeeByAddUserId, String loginName, String password,
			Date addDate, Date modifyDate, Integer status,
			Set<Employee> employees) {
		this.employeeByModifyUserId = employeeByModifyUserId;
		this.employeeByAddUserId = employeeByAddUserId;
		this.loginName = loginName;
		this.password = password;
		this.addDate = addDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.employees = employees;
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

	@Column(name = "LOGIN_NAME", unique = true, nullable = false, length = 32)
	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	@Column(name = "PASSWORD", nullable = false, length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ADD_DATE", nullable = false, length = 10)
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

	@Column(name = "STATUS")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "account")
	public Set<Employee> getEmployees() {
		return this.employees;
	}

	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

}
