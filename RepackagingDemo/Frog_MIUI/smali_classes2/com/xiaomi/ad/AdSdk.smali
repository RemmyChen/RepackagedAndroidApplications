.class public Lcom/xiaomi/ad/AdSdk;
.super Ljava/lang/Object;
.source "AdSdk.java"


# static fields
.field public static final API_VERSION:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xiaomi/ad/AdSdk;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static adjustFeature(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/module/d;->l(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/module/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/internal/common/module/d;->b(Z)V

    .line 72
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/ad/internal/common/i;->a(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method private static doActive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/xiaomi/ad/AdSdk$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/AdSdk$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/ad/AdSdk$1;->start()V

    .line 89
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "appId can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/a;->a(Ljava/lang/Thread;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "initialize method must run in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    sget-object v1, Lcom/xiaomi/ad/AdSdk;->sContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/ad/AdSdk;->sContext:Landroid/content/Context;

    .line 34
    sget-object v1, Lcom/xiaomi/ad/AdSdk;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/ad/common/GlobalHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 35
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/xiaomi/ad/common/SdkConfig;->initialize(ZLjava/lang/String;)V

    .line 36
    sget-object v1, Lcom/xiaomi/ad/AdSdk;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/ad/AdSdk;->adjustFeature(Landroid/content/Context;)V

    .line 37
    new-instance v1, Lcom/xiaomi/ad/internal/common/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/ad/internal/common/b/a/b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 39
    invoke-static {p1}, Lcom/xiaomi/ad/AdSdk;->doActive(Ljava/lang/String;)V

    .line 41
    :cond_3
    return-void
.end method

.method public static setDebugOn()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/h;->setDebugOn()V

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    .line 52
    return-void
.end method

.method public static setLogLevel(Lcom/xiaomi/ad/internal/common/LogLevel;)V
    .locals 1

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/LogLevel;->value()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/h;->setLogLevel(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public static setSpeedLimit(I)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/xiaomi/ad/common/SdkConfig;->setSpeedLimit(I)V

    .line 64
    return-void
.end method

.method public static setStagingOn()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->USE_STAGING:Z

    .line 60
    return-void
.end method
