package zbd.test;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.summer.dp.cms.Start;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Start.class)
@WebAppConfiguration
public class CtrlTest {

	@Autowired WebApplicationContext wac; 
//	@Autowired MockHttpSession session;
//	@Autowired MockHttpServletRequest request;
//	@Autowired AccountRepository repository;

	private MockMvc mvc;

	@Before
	public void setUp() throws Exception {
		mvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

	@Test
	public void getIndex() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/account/find").accept(MediaType.APPLICATION_JSON))
		.andExpect(status().isOk());
	}

//	@Test
//	public void findsFirstPageOfCities() {
//
//		Page<Account> accounts = this.repository.findAll(new PageRequest(0, 10));
//		System.out.println(accounts.getTotalElements());
//	}
}