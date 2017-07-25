package ${package}.model;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class ${model} extends BaseModel {
    private ${PK} id;
    <#list properties?keys as key>
    private ${properties[key]} ${key};
    </#list>
}