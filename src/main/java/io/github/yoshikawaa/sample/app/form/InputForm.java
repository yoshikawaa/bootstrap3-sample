package io.github.yoshikawaa.sample.app.form;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;

@Data
public class InputForm {
    @NotEmpty
    private String input;
    @NotEmpty
    private String password;
    @NotEmpty
    private String select;
    private List<String> checkboxes;
    private String radio;
    @DateTimeFormat(iso = ISO.DATE)
    @NotNull
    private Date date;
}
