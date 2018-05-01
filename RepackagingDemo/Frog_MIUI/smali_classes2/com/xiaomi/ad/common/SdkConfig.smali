.class public Lcom/xiaomi/ad/common/SdkConfig;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field public static DEBUG:Z = false

.field public static IS_SDK:Z = false

.field public static MOCK:Z = false

.field public static final SALT:Ljava/lang/String; = "8007236f-a2d6-4847-ac83-c49395ad6d65"

.field public static SPEED_LIMIT:I

.field public static USE_STAGING:Z

.field public static sAppId:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->USE_STAGING:Z

    .line 15
    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    .line 17
    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->MOCK:Z

    .line 19
    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->IS_SDK:Z

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/ad/common/SdkConfig;->SPEED_LIMIT:I

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getUpdateServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->USE_STAGING:Z

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "http://test.ad.xiaomi.com/brand/sdkupgradenew"

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://api.ad.xiaomi.com/brand/sdkupgradenew"

    goto :goto_0
.end method

.method public static initialize(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/xiaomi/ad/common/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    .line 29
    sput-boolean p0, Lcom/xiaomi/ad/common/SdkConfig;->IS_SDK:Z

    .line 30
    sput-object p1, Lcom/xiaomi/ad/common/SdkConfig;->sAppId:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/d;->h(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/d;->q()V

    .line 32
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->setLogLevel(I)V

    .line 36
    return-void
.end method

.method public static setSpeedLimit(I)V
    .locals 2

    .prologue
    .line 39
    sput p0, Lcom/xiaomi/ad/common/SdkConfig;->SPEED_LIMIT:I

    .line 40
    sget-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/xiaomi/ad/common/SdkConfig;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d;->l(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/module/d;

    move-result-object v0

    sget v1, Lcom/xiaomi/ad/common/SdkConfig;->SPEED_LIMIT:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/internal/common/module/d;->setSpeedLimit(I)V

    .line 43
    :cond_0
    return-void
.end method
