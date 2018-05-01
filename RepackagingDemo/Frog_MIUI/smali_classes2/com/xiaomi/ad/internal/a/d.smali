.class public Lcom/xiaomi/ad/internal/a/d;
.super Ljava/lang/Object;
.source "LocalAdServer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bB:Ljava/lang/String; = "com.xiaomi.ad.server.AdServer"

.field private static final bC:Ljava/lang/String; = "com.xiaomi.ad.ui.AdViewFactory"

.field private static final bD:Ljava/lang/String; = "com.xiaomi.ad.event.EventBus"

.field private static volatile bE:Lcom/xiaomi/ad/internal/a/d;


# instance fields
.field private bF:Ljava/lang/Object;

.field private bG:Lcom/xiaomi/ad/internal/common/module/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/xiaomi/ad/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/k;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->ak()V

    .line 39
    return-void
.end method

.method public static declared-synchronized M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/xiaomi/ad/internal/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->bE:Lcom/xiaomi/ad/internal/a/d;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/ad/internal/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/internal/a/d;->bE:Lcom/xiaomi/ad/internal/a/d;

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->bE:Lcom/xiaomi/ad/internal/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ak()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bF:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->init()V

    .line 151
    :cond_1
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d;->l(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/module/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/ad/internal/common/module/d$b;

    const-string/jumbo v2, "AdServer"

    invoke-direct {v1, v2}, Lcom/xiaomi/ad/internal/common/module/d$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/internal/common/module/d;->a(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    .line 157
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.ad.server.AdServer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/ad/internal/a/d;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bF:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/ad/common/pojo/AdType;Ljava/lang/String;Lorg/json/JSONObject;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.ad.ui.AdViewFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "createAdView"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/ad/internal/a/d;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdType;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createAdView"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;ILorg/json/JSONObject;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.ad.ui.AdViewFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "createActivityView"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/ad/internal/a/d;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getJsonValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createAdView"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/ad/common/api/AdRequest;)Lcom/xiaomi/ad/common/api/AdResponse;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAd "

    invoke-static {v0, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->ak()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no ad server."

    invoke-static {v0, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 58
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.xiaomi.ad.server.AdServer"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getAd"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/ad/internal/a/d;->bF:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/api/AdRequest;->toJsonString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    sget-object v2, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/xiaomi/ad/common/api/AdResponse;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/xiaomi/ad/common/api/AdResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v2, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getAd"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 58
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 92
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterEvent"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->ak()V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no ad server."

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.ad.event.EventBus"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.ad.event.EventBus"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "unregister"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterEvent"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEvent"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->ak()V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no ad server."

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.ad.event.EventBus"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.ad.event.EventBus"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "register"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerEvent"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.xiaomi.ad.ui.AdViewFactory"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getViewAvailability"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v2, Lcom/xiaomi/ad/internal/a/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getViewAvailability e : "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/a/d;->ak()V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/d;->bG:Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getVersion()I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
