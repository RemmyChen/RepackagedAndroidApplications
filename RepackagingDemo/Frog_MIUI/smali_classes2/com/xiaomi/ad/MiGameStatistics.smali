.class public Lcom/xiaomi/ad/MiGameStatistics;
.super Ljava/lang/Object;
.source "MiGameStatistics.java"


# static fields
.field private static final DEFAULT_GAME_CHANNEL_URL_BASE:Ljava/lang/String; = "https://data.game.xiaomi.com/1px.gif"

.field private static final TAG:Ljava/lang/String; = "MiGameStatistics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    :try_start_0
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string/jumbo v1, "MiGameStatistics"

    const-string/jumbo v2, "SHA1 e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/xiaomi/ad/MiGameStatistics;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/xiaomi/ad/MiGameStatistics;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/xiaomi/ad/MiGameStatistics;->get_phone_ua()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "MiGameStatistics"

    const-string/jumbo v2, "getAppVersionCode e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    const-string/jumbo v1, ""

    .line 124
    :try_start_0
    invoke-static {}, Lcom/xiaomi/ad/MiGameStatistics;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p0}, Lcom/xiaomi/ad/MiGameStatistics;->getMacAddressNew(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/ad/MiGameStatistics;->getSha1DeviceID(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 135
    const-string/jumbo v2, "MiGameStatistics"

    const-string/jumbo v3, "getDeviceId e : "

    invoke-static {v2, v3, v1}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getMacAddressNew(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSha1DeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/xiaomi/ad/MiGameStatistics;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/MiGameStatistics;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    const-string/jumbo v1, ""

    .line 112
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v2, "MiGameStatistics"

    const-string/jumbo v3, "getSystemProperties e : "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static get_phone_ua()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    const-string/jumbo v1, "ro.product.manufacturer"

    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string/jumbo v1, "ro.build.version.release"

    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string/jumbo v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string/jumbo v1, "ro.build.version.sdk"

    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Lcom/xiaomi/ad/MiGameStatistics;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isPad()Z
    .locals 2

    .prologue
    .line 142
    :try_start_0
    const-string/jumbo v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "IS_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendMiGameDAU(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/xiaomi/ad/MiGameStatistics$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/ad/MiGameStatistics$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/ad/MiGameStatistics$1;->start()V

    .line 79
    return-void
.end method
