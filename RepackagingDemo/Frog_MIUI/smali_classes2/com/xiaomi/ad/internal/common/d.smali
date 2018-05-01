.class public Lcom/xiaomi/ad/internal/common/d;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Debugger"

.field public static final o:Ljava/lang/String; = "com.xiaomi.ad.intent.DEBUG_ON"

.field public static final p:Ljava/lang/String; = "com.xiaomi.ad.intent.DEBUG_OFF"

.field public static final q:Ljava/lang/String; = "com.xiaomi.ad.intent.STAGING_ON"

.field public static final r:Ljava/lang/String; = "com.xiaomi.ad.intent.STAGING_OFF"

.field public static final s:Ljava/lang/String; = "com.xiaomi.ad.intent.AD_CONFIG"

.field public static final t:Ljava/lang/String; = "com.xiaomi.ad.intent.MOCK_ON"

.field public static final u:Ljava/lang/String; = "com.xiaomi.ad.intent.MOCK_OFF"

.field public static final v:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_ON"

.field public static final w:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_OFF"

.field private static x:Lcom/xiaomi/ad/internal/common/d;


# instance fields
.field private mContext:Landroid/content/Context;

.field private y:Z

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/d;->y:Z

    .line 69
    new-instance v0, Lcom/xiaomi/ad/internal/common/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/common/e;-><init>(Lcom/xiaomi/ad/internal/common/d;)V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/d;->z:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/d;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/common/d;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/internal/common/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 96
    sput-boolean p1, Lcom/xiaomi/ad/common/SdkConfig;->USE_STAGING:Z

    .line 97
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/d;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/xiaomi/ad/internal/common/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/d;->x:Lcom/xiaomi/ad/internal/common/d;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/xiaomi/ad/internal/common/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/common/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/d;->x:Lcom/xiaomi/ad/internal/common/d;

    .line 42
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/d;->x:Lcom/xiaomi/ad/internal/common/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public q()V
    .locals 3

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/xiaomi/ad/internal/common/d;->y:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string/jumbo v1, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "com.xiaomi.ad.intent.AD_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "com.xiaomi.ad.intent.MOCK_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "com.xiaomi.ad.intent.MOCK_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/d;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/d;->y:Z

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/xiaomi/ad/internal/common/d;->y:Z

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/d;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/d;->y:Z

    goto :goto_0
.end method
