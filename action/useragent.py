# !/usr/bin/python3.4
# -*-coding:utf-8-*-
# Created by Smartdo Co.,Ltd. on 2016/10/11.
# 功能:
#   读取Useragent

# 日志
import tool.log
import logging

tool.log.setup_logging()
smartlogger = logging.getLogger("smart")

# 全局变量保证读取ua文件只有一次
UAPOOL = []
UAPOOLSUCCESS = False


# star 读取Ua
def useragent(filepath="config/UA.txt"):
    global UAPOOL
    global UAPOOLSUCCESS
    if UAPOOLSUCCESS:
        smartlogger.info("Ua已经加载过了")
        return UAPOOL
    with open(tool.log.BASE_DIR + "/" + filepath, "rt") as f:
        uas = f.readlines()
        for ua in uas:
            UAPOOL.append(ua.strip())
        UAPOOLSUCCESS = True
        return UAPOOL


if __name__ == "__main__":
    smartlogger.warning(useragent())
    smartlogger.warning(useragent())