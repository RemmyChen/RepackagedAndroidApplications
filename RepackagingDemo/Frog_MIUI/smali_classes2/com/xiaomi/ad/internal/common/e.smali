.class Lcom/xiaomi/ad/internal/common/e;
.super Landroid/content/BroadcastReceiver;
.source "Debugger.java"


# instance fields
.field final synthetic A:Lcom/xiaomi/ad/internal/common/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/internal/common/d;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/e;->A:Lcom/xiaomi/ad/internal/common/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "Debugger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    sput-boolean v5, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    .line 80
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/h;->setDebugOn()V

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v1, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    sput-boolean v4, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo v1, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/e;->A:Lcom/xiaomi/ad/internal/common/d;

    invoke-static {v0, v5}, Lcom/xiaomi/ad/internal/common/d;->a(Lcom/xiaomi/ad/internal/common/d;Z)V

    goto :goto_0

    .line 85
    :cond_4
    const-string/jumbo v1, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/e;->A:Lcom/xiaomi/ad/internal/common/d;

    invoke-static {v0, v4}, Lcom/xiaomi/ad/internal/common/d;->a(Lcom/xiaomi/ad/internal/common/d;Z)V

    goto :goto_0

    .line 87
    :cond_5
    const-string/jumbo v1, "com.xiaomi.ad.intent.MOCK_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    sput-boolean v5, Lcom/xiaomi/ad/common/SdkConfig;->MOCK:Z

    goto :goto_0

    .line 89
    :cond_6
    const-string/jumbo v1, "com.xiaomi.ad.intent.MOCK_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sput-boolean v4, Lcom/xiaomi/ad/common/SdkConfig;->MOCK:Z

    goto :goto_0
.end method
