package com.wu.service;

import com.wu.pojo.Provider;

import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 11:37
 */
public interface ProviderService {
    List<Provider> getProviderList(String proName, String proCode);

    Provider getProviderById(int id);

    int modifyProviderById(Provider provider);

    int deleteProviderById(int id);

    int addProvider(Provider provider);
}
