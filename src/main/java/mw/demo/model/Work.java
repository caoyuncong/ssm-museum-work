package mw.demo.model;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Work extends BaseModel { // 多端
    private Integer id;
    private String title;
    private String picture;
    private String artist;
    private int year;
    private int museumId;

    private Museum museum; // 一端
}