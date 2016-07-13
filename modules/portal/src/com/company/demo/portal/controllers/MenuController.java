package com.company.demo.portal.controllers;

import com.company.demo.entity.MenuItem;
import com.haulmont.chile.core.model.MetaClass;
import com.haulmont.cuba.core.app.DataService;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.core.global.View;
import com.haulmont.cuba.restapi.ConversionFactory;
import com.haulmont.cuba.restapi.Converter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.util.List;

@Controller
public class MenuController {

    protected Logger log = LoggerFactory.getLogger(getClass());

    @Inject
    protected ConversionFactory conversionFactory;

    @Inject
    protected DataService dataService;

    @Inject
    protected Metadata metadata;

    @CrossOrigin(origins = "*")
    @RequestMapping(value = "/menu", method = RequestMethod.GET)
    @ResponseBody
    public String menu() {
        LoadContext<MenuItem> foodLoadContext = new LoadContext<>(MenuItem.class)
            .setQuery(LoadContext.createQuery("select u from demo$MenuItem u"))
            .setView(View.LOCAL);

        List<MenuItem> entities = dataService.loadList(foodLoadContext);
        MetaClass metaClass = metadata.getClassNN(MenuItem.class);

        Converter converter = conversionFactory.getConverter("json");

        try {
            return converter.process((List) entities, metaClass, foodLoadContext.getView());
        } catch (Exception e) {
            log.error("Error converting json", e);
            return "";
        }
    }
}