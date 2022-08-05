package lierengu.settings.service;

import lierengu.settings.domain.Admin;

import java.util.Map;

public interface AdminService {
    Admin queryAdminByAdminNameAndPassword(Map<String,Object> map);
}
