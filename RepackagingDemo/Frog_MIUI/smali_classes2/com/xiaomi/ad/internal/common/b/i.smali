.class public Lcom/xiaomi/ad/internal/common/b/i;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final bc:I = 0x1388

.field public static final bd:I = 0x4e20

.field public static final be:I = 0x8000

.field public static final bf:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%"

.field public static final bg:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "NetworkUtils"

    sput-object v0, Lcom/xiaomi/ad/internal/common/b/i;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 124
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/i;->B(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/NetState;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    invoke-virtual {v1, v0}, Lcom/xiaomi/ad/internal/common/NetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static B(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/NetState;
    .locals 4

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    .line 161
    :goto_0
    return-object v0

    .line 146
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 147
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 152
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0

    .line 155
    :cond_3
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 156
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 157
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/i;->g(I)Lcom/xiaomi/ad/internal/common/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/xiaomi/ad/internal/common/b/i;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getNetState"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 166
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ab()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 46
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 48
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v1, Lcom/xiaomi/ad/internal/common/b/i;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLocalIpAddress ex."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, ""

    .line 84
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 88
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "Http Post"

    const-string/jumbo v2, "Http Post Success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string/jumbo v1, "Http Post"

    const-string/jumbo v2, "Http Post Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    :try_start_2
    const-string/jumbo v2, "Http Post"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Http Post Fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    const-string/jumbo v2, "Http Post"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Http Post Fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/i;->B(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/NetState;

    move-result-object v1

    .line 201
    sget-object v2, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v1, v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    sget-object v2, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v1, v2, :cond_2

    .line 204
    invoke-static {p1}, Lcom/xiaomi/ad/common/pojo/AdNetType;->isWifiAllowed(I)Z

    move-result v0

    goto :goto_0

    .line 205
    :cond_2
    sget-object v2, Lcom/xiaomi/ad/internal/common/NetState;->J:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v1, v2, :cond_3

    .line 206
    invoke-static {p1}, Lcom/xiaomi/ad/common/pojo/AdNetType;->is2GAllowed(I)Z

    move-result v0

    goto :goto_0

    .line 207
    :cond_3
    sget-object v2, Lcom/xiaomi/ad/internal/common/NetState;->K:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v1, v2, :cond_4

    .line 208
    invoke-static {p1}, Lcom/xiaomi/ad/common/pojo/AdNetType;->is3GAllowed(I)Z

    move-result v0

    goto :goto_0

    .line 209
    :cond_4
    sget-object v2, Lcom/xiaomi/ad/internal/common/NetState;->L:Lcom/xiaomi/ad/internal/common/NetState;

    if-ne v1, v2, :cond_0

    .line 210
    invoke-static {p1}, Lcom/xiaomi/ad/common/pojo/AdNetType;->is4GAllowed(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static g(I)Lcom/xiaomi/ad/internal/common/NetState;
    .locals 1

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 195
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->J:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0

    .line 191
    :pswitch_1
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->K:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0

    .line 193
    :pswitch_2
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->L:Lcom/xiaomi/ad/internal/common/NetState;

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, ""

    .line 64
    :try_start_0
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/i;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/o;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/i;->B(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/NetState;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    invoke-virtual {v1, v0}, Lcom/xiaomi/ad/internal/common/NetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
