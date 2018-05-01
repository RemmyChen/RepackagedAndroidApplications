.class public Lcom/xiaomi/ad/internal/common/c;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientInfo"

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static final k:Ljava/lang/String; = "wlan_mac"

.field private static final l:I = 0x17

.field private static m:I

.field private static n:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lcom/xiaomi/ad/internal/common/c;->h:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/xiaomi/ad/internal/common/c;->i:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "_m_rec"

    sput-object v0, Lcom/xiaomi/ad/internal/common/c;->j:Ljava/lang/String;

    .line 36
    sput v1, Lcom/xiaomi/ad/internal/common/c;->m:I

    .line 37
    sput v1, Lcom/xiaomi/ad/internal/common/c;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "A"

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string/jumbo v0, "S"

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const-string/jumbo v0, "D"

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private l()I
    .locals 2

    .prologue
    .line 128
    sget v0, Lcom/xiaomi/ad/internal/common/c;->m:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/xiaomi/ad/internal/common/c;->m:I

    .line 132
    :cond_0
    sget v0, Lcom/xiaomi/ad/internal/common/c;->m:I

    return v0
.end method

.method private m()I
    .locals 2

    .prologue
    .line 136
    sget v0, Lcom/xiaomi/ad/internal/common/c;->n:I

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/xiaomi/ad/internal/common/c;->n:I

    .line 140
    :cond_0
    sget v0, Lcom/xiaomi/ad/internal/common/c;->n:I

    return v0
.end method

.method private static o()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 170
    if-nez v3, :cond_0

    .line 201
    :goto_0
    return-object v1

    .line 173
    :cond_0
    const-string/jumbo v4, "wlan0"

    .line 174
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 177
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 183
    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    array-length v4, v5

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v2, v5, v0

    .line 189
    const-string/jumbo v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 192
    if-lez v0, :cond_3

    .line 193
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 195
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v2, "ClientInfo"

    const-string/jumbo v3, "Get the mac address on android M failed."

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :try_start_0
    const-string/jumbo v0, "screenWidth"

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/c;->l()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v0, "screenHeight"

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/c;->m()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v0, "screenDensity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v0, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v0, "androidVersion"

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/internal/common/b/k;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v0, "miuiVersion"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/k;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v0, "bc"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v0, "make"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v0, "isInter"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->V()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v0, "os"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    const-string/jumbo v0, "imei"

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v0, "mac"

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v0, "language"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/k;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v0, "country"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/k;->af()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v0, "customization"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/k;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v0, "connectionType"

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v0, "ip"

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/i;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v0, "androidId"

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/internal/common/b/k;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 96
    long-to-double v0, v0

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_0
    const-string/jumbo v1, "deviceInfo"

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/c;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v1, "userInfo"

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/c;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/i;->B(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/NetState;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v0, v1, :cond_0

    .line 115
    const-string/jumbo v0, "wifi"

    .line 124
    :goto_0
    return-object v0

    .line 116
    :cond_0
    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->J:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v0, v1, :cond_1

    .line 117
    const-string/jumbo v0, "2g"

    goto :goto_0

    .line 118
    :cond_1
    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->K:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v0, v1, :cond_2

    .line 119
    const-string/jumbo v0, "3g"

    goto :goto_0

    .line 120
    :cond_2
    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->L:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v0, v1, :cond_3

    .line 121
    const-string/jumbo v0, "4g"

    goto :goto_0

    .line 124
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/xiaomi/ad/internal/common/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 147
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/internal/common/c;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "865182020044514"

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/internal/common/c;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Lcom/xiaomi/ad/internal/common/f;

    sget-object v0, Lcom/xiaomi/ad/internal/common/c;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/xiaomi/ad/internal/common/f;-><init>(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v0, "wlan_mac"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/ad/internal/common/f;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-object v0

    .line 213
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/c;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 215
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string/jumbo v2, "wlan_mac"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/f;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string/jumbo v1, "ClientInfo"

    const-string/jumbo v2, "getHashedMac e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 217
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/ad/internal/common/c;->o()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
