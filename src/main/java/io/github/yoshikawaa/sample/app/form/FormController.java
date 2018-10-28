package io.github.yoshikawaa.sample.app.form;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.common.collect.ImmutableMap;

@Controller
@RequestMapping("form")
public class FormController {

    @ModelAttribute("selectList")
    public Map<String, String> selectList() {
        return ImmutableMap.of("1", "[1]", "2", "[2]", "3", "[3]");
    }
    
    @GetMapping
    public String index() {
        return "form/index";
    }
    
    @GetMapping("basic")
    public String basic(InputForm form) {
        return "form/basic";
    }
    
    @PostMapping("basic")
    public String basicPost(@Validated InputForm form, BindingResult bindingResult) {
        return basic(form);
    }

    @GetMapping("inline")
    public String inline(InputForm form) {
        return "form/inline";
    }
    
    @PostMapping("inline")
    public String inlinePost(@Validated InputForm form, BindingResult bindingResult) {
        return inline(form);
    }

    @GetMapping("horizontal")
    public String horizontal(InputForm form) {
        return "form/horizontal";
    }
    
    @PostMapping("horizontal")
    public String horizontalPost(@Validated InputForm form, BindingResult bindingResult) {
        return horizontal(form);
    }

    @GetMapping("horizontal-inline")
    public String horizontalInline(InputForm form) {
        return "form/horizontal-inline";
    }
    
    @PostMapping("horizontal-inline")
    public String horizontalInlinePost(@Validated InputForm form, BindingResult bindingResult) {
        return horizontalInline(form);
    }

    @GetMapping("horizontal-flex")
    public String horizontalFlex(InputForm form) {
        return "form/horizontal-flex";
    }
    
    @PostMapping("horizontal-flex")
    public String horizontalFlexPost(@Validated InputForm form, BindingResult bindingResult) {
        return horizontalFlex(form);
    }

    @GetMapping("horizontal-tooltip")
    public String horizontalTooltip(InputForm form) {
        return "form/horizontal-tooltip";
    }
    
    @PostMapping("horizontal-tooltip")
    public String horizontalTooltipPost(@Validated InputForm form, BindingResult bindingResult) {
        return horizontalTooltip(form);
    }
}
