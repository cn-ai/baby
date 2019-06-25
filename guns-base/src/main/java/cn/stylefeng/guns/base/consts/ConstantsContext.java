package cn.stylefeng.guns.base.consts;

import cn.stylefeng.guns.base.enums.CommonStatus;
import cn.stylefeng.guns.base.sms.AliyunSmsProperties;
import cn.stylefeng.roses.core.util.ToolUtil;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static cn.stylefeng.guns.base.consts.ConfigConstant.SYSTEM_CONSTANT_PREFIX;

/**
 * 系统常量的容器
 *
 * @author fengshuonan
 * @Date 2019-06-20 13:37
 */
public class ConstantsContext {

    /**
     * 所有的常量，可以增删改查
     */
    private static Map<String, Object> CONSTNTS_HOLDER = new ConcurrentHashMap<>();

    /**
     * 添加系统常量
     */
    public static void putConstant(String key, Object value) {
        if (ToolUtil.isOneEmpty(key, value)) {
            return;
        }
        CONSTNTS_HOLDER.put(key, value);
    }

    /**
     * 删除常量
     */
    public static void deleteConstant(String key) {
        if (ToolUtil.isOneEmpty(key)) {
            return;
        }

        //如果是系统常量
        if (!key.startsWith(SYSTEM_CONSTANT_PREFIX)) {
            CONSTNTS_HOLDER.remove(key);
        }
    }

    /**
     * 获取系统常量
     */
    public static Map<String, Object> getConstntsMap() {
        return CONSTNTS_HOLDER;
    }

    /**
     * 获取验证码开关
     */
    public static Boolean getKaptchaOpen() {
        String gunsKaptchaOpen = (String) CONSTNTS_HOLDER.get("GUNS_KAPTCHA_OPEN");
        if (CommonStatus.ENABLE.getCode().equalsIgnoreCase(gunsKaptchaOpen)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 获取短信的配置
     */
    public static AliyunSmsProperties getAliyunSmsProperties() {
        String gunsSmsAccesskeyId = (String) CONSTNTS_HOLDER.get("GUNS_SMS_ACCESSKEY_ID");
        String gunsSmsAccesskeySecret = (String) CONSTNTS_HOLDER.get("GUNS_SMS_ACCESSKEY_SECRET");
        String gunsSmsSignName = (String) CONSTNTS_HOLDER.get("GUNS_SMS_SIGN_NAME");
        String gunsSmsLoginTemplateCode = (String) CONSTNTS_HOLDER.get("GUNS_SMS_LOGIN_TEMPLATE_CODE");
        String gunsSmsInvalidateMinutes = (String) CONSTNTS_HOLDER.get("GUNS_SMS_INVALIDATE_MINUTES");

        AliyunSmsProperties aliyunSmsProperties = new AliyunSmsProperties();
        aliyunSmsProperties.setAccessKeyId(gunsSmsAccesskeyId);
        aliyunSmsProperties.setAccessKeySecret(gunsSmsAccesskeySecret);
        aliyunSmsProperties.setSignName(gunsSmsSignName);
        aliyunSmsProperties.setLoginTemplateCode(gunsSmsLoginTemplateCode);
        aliyunSmsProperties.setInvalidateMinutes(Integer.valueOf(gunsSmsInvalidateMinutes));
        return aliyunSmsProperties;
    }
}
