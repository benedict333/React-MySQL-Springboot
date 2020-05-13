package com.claim.controler;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Product;
import com.claim.entity.User;
import com.claim.service.ProductService;
import com.claim.service.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;



	@RequestMapping(value = "/about", method = RequestMethod.GET)

	public String about()

	{
		return "aboutUs";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)

	private ModelAndView signUp()

	{
		return new ModelAndView("SignUp", "user", new User());
	}

	@RequestMapping(value = "/signUpUser", method = RequestMethod.POST)
	public ModelAndView signUpUser(@ModelAttribute("user") User user) {
		System.out.println(user);
		userService.saveUser(user);
		return new ModelAndView("confirm");
	}

	@RequestMapping(value = "/findAll", method = RequestMethod.GET)

	public ModelAndView findAll(HttpSession session)

	{
		ArrayList<User> users = userService.findAll();
		return new ModelAndView("userList", "users", users);
	}

	@RequestMapping(value = "/productEntry", method = RequestMethod.GET)

	private ModelAndView productEntry()

	{
		return new ModelAndView("productEntry", "product", new Product());
	}

	@RequestMapping(value = "/productEntryProduct", method = RequestMethod.POST)
	public ModelAndView productEntryProduct(@ModelAttribute("product") Product product) {
		System.out.println(product);

		productService.saveProduct(product);
		return new ModelAndView("confirmProduct");
	}

	@RequestMapping(value = "/productList", method = RequestMethod.GET)

	public ModelAndView findAllProducts(HttpSession session)

	{
		ArrayList<Product> products = productService.findAll();
		return new ModelAndView("productList", "products", products);
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)

	private ModelAndView search()

	{
		return new ModelAndView("productSearch", "search", new Product());
	}

	@RequestMapping(value = "/searchProducts", method = RequestMethod.POST)
	public ModelAndView searchProducts(@ModelAttribute("search") Product search) {
		System.out.println(search.getSearch());
		ArrayList<Product> products = productService.searchProduct(search);
		System.out.println(products.size());

		return new ModelAndView("productSearch", "products", products);
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)

	private ModelAndView login()

	{
		return new ModelAndView("login", "user", new User());

	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)

	public ModelAndView loginUser(@ModelAttribute("user") User user) {
		String name = user.getLoginName();
		String pass = user.getLoginPassword();
		System.out.println(name);
		System.out.println(pass);
		User loggedInUser = userService.login(name, pass);

		ModelAndView mv = new ModelAndView();

		if (loggedInUser != null) {
			System.out.println(loggedInUser.getUserName());
			System.out.println(loggedInUser.getPassword());

			mv.addObject("msg", loggedInUser.getUserName());
			mv.setViewName("index");
		}

		else {
			mv.addObject("msg", "Error- you have entered a wrong username or password!");
			mv.setViewName("login");
		}
		return mv;
	}
	
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session){           
        session.invalidate();
		return new ModelAndView("login", "user", new User());
    }
}
