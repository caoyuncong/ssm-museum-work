package mw.demo.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * Created by mingfei.net@gmail.com
 * 7/22/17 09:50
 * https://github.com/thu/ssm/
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pagination<T> implements Serializable {
    private List<T> list;
    private String statement;
    private int pageSize;
    private int totalRows;
    private int totalPages;
    private int currentPage;
}
