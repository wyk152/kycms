package org.summer.dp.cms.entity.base;

// Generated 2015-10-13 18:23:33 by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * PostFunction generated by hbm2java
 */
@Entity
@Table(name = "post_function")
public class PostFunction implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2002546310575775614L;
	private Long id;
	private Function function;
	private Post post;

	public PostFunction() {
	}

	public PostFunction(Function function, Post post) {
		this.function = function;
		this.post = post;
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
	@JoinColumn(name = "FCUNTION_ID", nullable = false)
	public Function getFunction() {
		return this.function;
	}

	public void setFunction(Function function) {
		this.function = function;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "POST_ID", nullable = false)
	public Post getPost() {
		return this.post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

}
