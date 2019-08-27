package com.vip.items.utils;

import lombok.Data;

import java.util.List;

/**
 * @author song
 */
@Data
public class Page <T> {

    private List<T> pageData;
    private Integer currentPage = 1;
    private Integer pageSize = 10;
    private Integer totalCount;

    public int getPageCount() {
        if (this.totalCount % this.pageSize == 0) {
            return this.totalCount / this.pageSize;
        }
        return this.totalCount / this.pageSize + 1;
    }

    public Page(List<T> pageData, Integer totalCount) {
        this.pageData = pageData;
        this.totalCount = totalCount;
    }

    public Page() {
    }

    public boolean isFirst() {
        return (this.currentPage == 1) || (this.totalCount == 0);
    }

    public boolean isLast() {
        return (this.totalCount == 0) || (this.currentPage >= getPageCount());
    }

    public boolean isHasNext() {
        return this.currentPage < getPageCount();
    }

    public boolean isHasPrev() {
        return this.currentPage > 1;
    }

    public Integer getNextPage() {
        if (this.currentPage >= getPageCount()) {
            return getPageCount();
        }
        return this.currentPage + 1;
    }

    public Integer getPrevPage() {
        if (this.currentPage <= 1) {
            return 1;
        }
        return this.currentPage - 1;
    }
}

