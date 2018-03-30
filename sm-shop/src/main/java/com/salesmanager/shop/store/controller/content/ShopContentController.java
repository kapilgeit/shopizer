package com.salesmanager.shop.store.controller.content;

import com.salesmanager.core.business.services.content.ContentService;
import com.salesmanager.core.model.content.Content;
import com.salesmanager.core.model.content.ContentDescription;
import com.salesmanager.core.model.merchant.MerchantStore;
import com.salesmanager.core.model.reference.language.Language;
import com.salesmanager.shop.constants.Constants;
import com.salesmanager.shop.model.shop.PageInformation;
import com.salesmanager.shop.store.controller.ControllerConstants;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

@Controller
public class ShopContentController {
	
	
	@Inject
	private ContentService contentService;

	
	@RequestMapping("/shop/pages/{friendlyUrl}.html")
	public String displayContent(@PathVariable final String friendlyUrl, Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) throws Exception {
		System.out.println("----------------->"+1);
		MerchantStore store = (MerchantStore)request.getAttribute(Constants.MERCHANT_STORE);
		System.out.println("----------------->"+2);
		ContentDescription contentDescription = contentService.getBySeUrl(store, friendlyUrl);
		System.out.println("----------------->"+3);
		Content content = null;
		System.out.println("----------------->"+4);
		if(contentDescription!=null) {
			System.out.println("----------------->"+5);
			content = contentDescription.getContent();
			System.out.println("----------------->"+6);
			if(!content.isVisible()) {
				return "redirect:/shop";
			}
			System.out.println("----------------->"+7);
			//meta information
			PageInformation pageInformation = new PageInformation();
			pageInformation.setPageDescription(contentDescription.getMetatagDescription());
			pageInformation.setPageKeywords(contentDescription.getMetatagKeywords());
			pageInformation.setPageTitle(contentDescription.getTitle());
			pageInformation.setPageUrl(contentDescription.getName());
			System.out.println("----------------->"+8);
			request.setAttribute(Constants.REQUEST_PAGE_INFORMATION, pageInformation);
			System.out.println("----------------->"+9);
			
			
			
		}
		
		//TODO breadcrumbs
		request.setAttribute(Constants.LINK_CODE, contentDescription.getSeUrl());
		System.out.println("----------------->"+10);
		model.addAttribute("content",contentDescription);
		System.out.println("----------------->"+11);

		if(!StringUtils.isBlank(content.getProductGroup())) {
			System.out.println("----------------->"+12);
			model.addAttribute("productGroup",content.getProductGroup());
		}
		System.out.println("----------------->"+13);
		/** template **/
		StringBuilder template = new StringBuilder().append(ControllerConstants.Tiles.Content.content).append(".").append(store.getStoreTemplate());
		System.out.println("----------------->"+14);
		return template.toString();
		
		
	}
	
}