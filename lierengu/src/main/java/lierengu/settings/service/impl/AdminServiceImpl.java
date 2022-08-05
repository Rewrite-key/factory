package lierengu.settings.service.impl;

import lierengu.settings.domain.Admin;
import lierengu.settings.mapper.AdminMapper;
import lierengu.settings.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin queryAdminByAdminNameAndPassword(Map<String, Object> map) {
        return adminMapper.selectAdminByAdminNameAndPassword(map);
    }
}
