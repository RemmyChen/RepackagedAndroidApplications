.class public Lcom/unity3d/ads/log/DeviceLog;
.super Ljava/lang/Object;
.source "DeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field private static FORCE_DEBUG_LOG:Z = false

.field public static final LOGLEVEL_DEBUG:I = 0x8

.field private static final LOGLEVEL_ERROR:I = 0x1

.field public static final LOGLEVEL_INFO:I = 0x4

.field private static final LOGLEVEL_WARNING:I = 0x2

.field private static LOG_DEBUG:Z = false

.field private static LOG_ERROR:Z = false

.field private static LOG_INFO:Z = false

.field private static LOG_WARNING:Z = false

.field private static final MAX_DEBUG_MSG_LENGTH:I = 0xc00

.field private static final _deviceLogLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;",
            "Lcom/unity3d/ads/log/DeviceLogLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 11
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 12
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 13
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 14
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    .line 30
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "i"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "d"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "w"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "e"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/UnityAdsForceDebugMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "forceDebugMode":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    .line 41
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    const-string v0, "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead"

    .line 183
    .local v0, "finalMessage":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 180
    .end local v0    # "finalMessage":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .restart local v0    # "finalMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private static createLogEntry(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/log/DeviceLogEntry;
    .locals 8
    .param p0, "level"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 193
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->getLogLevel(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v3

    .line 194
    .local v3, "logLevel":Lcom/unity3d/ads/log/DeviceLogLevel;
    const/4 v2, 0x0

    .line 196
    .local v2, "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    if-eqz v3, :cond_3

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, "markedIndex":Z
    const/4 v0, 0x0

    .local v0, "callerIndex":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 201
    aget-object v1, v5, v0

    .line 202
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/log/DeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    const/4 v4, 0x1

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/log/DeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 210
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v1, 0x0

    .line 212
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 213
    aget-object v1, v5, v0

    .line 216
    :cond_2
    if-eqz v1, :cond_3

    .line 217
    new-instance v2, Lcom/unity3d/ads/log/DeviceLogEntry;

    .end local v2    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    invoke-direct {v2, v3, p1, v1}, Lcom/unity3d/ads/log/DeviceLogEntry;-><init>(Lcom/unity3d/ads/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 221
    .end local v0    # "callerIndex":I
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "markedIndex":Z
    .restart local v2    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    :cond_3
    return-object v2

    .line 200
    .restart local v0    # "callerIndex":I
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    .restart local v4    # "markedIndex":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc00

    .line 88
    sget-boolean v0, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7800

    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static entered()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 140
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 124
    const-string v0, ""

    .line 125
    .local v0, "finalMessage":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private static getLogLevel(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/log/DeviceLogLevel;
    .locals 1
    .param p0, "logLevel"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    .prologue
    .line 187
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/log/DeviceLogLevel;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 84
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "newLevel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    .line 45
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 46
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 47
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 48
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 70
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 50
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 51
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 52
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 53
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 55
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 56
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 57
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 58
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 59
    :cond_2
    if-lt p0, v1, :cond_3

    .line 60
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 61
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 62
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 63
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 65
    :cond_3
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 66
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 67
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 68
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 116
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v1, 0x1

    .line 146
    .local v1, "logThisMessage":Z
    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 163
    :goto_0
    sget-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 167
    :cond_0
    if-eqz v1, :cond_1

    .line 168
    invoke-static {p0, p1}, Lcom/unity3d/ads/log/DeviceLog;->createLogEntry(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/log/DeviceLogEntry;

    move-result-object v0

    .line 169
    .local v0, "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->writeToLog(Lcom/unity3d/ads/log/DeviceLogEntry;)V

    .line 171
    .end local v0    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    :cond_1
    return-void

    .line 148
    :pswitch_0
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 155
    goto :goto_0

    .line 157
    :pswitch_3
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 158
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static writeToLog(Lcom/unity3d/ads/log/DeviceLogEntry;)V
    .locals 7
    .param p0, "logEntry"    # Lcom/unity3d/ads/log/DeviceLogEntry;

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "receivingMethod":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    const-class v2, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/log/DeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    :goto_0
    if-eqz v1, :cond_0

    .line 237
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/log/DeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
