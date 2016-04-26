/*
 * Copyright (c) 2016 platform-sample-portal
 */

package com.company.demo.portal.controllers;

import com.company.demo.entity.Food;
import com.haulmont.chile.core.model.MetaClass;
import com.haulmont.cuba.core.app.DataService;
import com.haulmont.cuba.core.entity.Entity;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.restapi.ConversionFactory;
import com.haulmont.cuba.restapi.Convertor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.util.List;

@Controller
public class MenuController {

    @Inject
    protected ConversionFactory conversionFactory;

    @Inject
    protected DataService dataService;

    @Inject
    protected Metadata metadata;

    @RequestMapping(value = "/menu", method = RequestMethod.GET)
    public @ResponseBody String menu(Model model) {
        LoadContext l = new LoadContext<>(Food.class);
        l.setQueryString("select u from demo$Food u");

        Convertor convertor = conversionFactory.getConvertor("json");
        List<Entity> entities = dataService.loadList(l);
        MetaClass metaClass = metadata.getClass(Food.class);
        LoadContext loadCtx = new LoadContext(metaClass);
        String result = "";

        try {
            result = convertor.process(entities, metaClass, loadCtx.getView());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}