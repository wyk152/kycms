package org.summer.dp.cms.entity.base;

// Generated 2015-10-13 18:23:33 by Hibernate Tools 3.4.0.CR1

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

/**
 * Department generated by hbm2java
 */
@Entity
@Table(name = "department")
public class Department implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2485946314351634883L;
	private Long id;
	private Enterprise enterprise;
	private Date addDate;
	private Long addUserId;
	private Date modifyDate;
	private Long modifyUserId;
	private String name;
	private Set<Post> posts = new HashSet<Post>(0);

	public Department() {
	}

	public Department(Enterprise enterprise, Date addDate, Long addUserId,
			Date modifyDate, Long modifyUserId, String name, Set<Post> posts) {
		this.enterprise = enterprise;
		this.addDate = addDate;
		this.addUserId = addUserId;
		this.modifyDate = modifyDate;
		this.modifyUserId = modifyUserId;
		this.name = name;
		this.posts = posts;
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
	@JoinColumn(name = "ENTERPRISE_ID")
	public Enterprise getEnterprise() {
		return this.enterprise;
	}

	public void setEnterprise(Enterprise enterprise) {
		this.enterprise = enterprise;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ADD_DATE", length = 10)
	public Date getAddDate() {
		return this.addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	@Column(name = "ADD_USER_ID")
	public Long getAddUserId() {
		return this.addUserId;
	}

	public void setAddUserId(Long addUserId) {
		this.addUserId = addUserId;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "MODIFY_DATE", length = 10)
	public Date getModifyDate() {
		return this.modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Column(name = "MODIFY_USER_ID")
	public Long getModifyUserId() {
		return this.modifyUserId;
	}

	public void setModifyUserId(Long modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	@Column(name = "NAME", length = 32)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "department")
	public Set<Post> getPosts() {
		return this.posts;
	}

	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}

}
