/*
 * Copyright (c) 2016 Haulmont
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.company.demo.portal.controllers;

import com.company.demo.entity.Food;
import com.haulmont.chile.core.model.MetaClass;
import com.haulmont.cuba.core.app.DataService;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.core.global.View;
import com.haulmont.cuba.restapi.ConversionFactory;
import com.haulmont.cuba.restapi.Convertor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = "/menu", method = RequestMethod.GET)
    @ResponseBody
    public String menu() {
        LoadContext<Food> foodLoadContext = new LoadContext<>(Food.class)
            .setQuery(LoadContext.createQuery("select u from demo$Food u"))
            .setView(View.LOCAL);

        List<Food> entities = dataService.loadList(foodLoadContext);
        MetaClass metaClass = metadata.getClassNN(Food.class);

        Convertor convertor = conversionFactory.getConvertor("json");

        try {
            return convertor.process((List) entities, metaClass, foodLoadContext.getView());
        } catch (Exception e) {
            log.error("Error converting json", e);
            return "";
        }
    }
}