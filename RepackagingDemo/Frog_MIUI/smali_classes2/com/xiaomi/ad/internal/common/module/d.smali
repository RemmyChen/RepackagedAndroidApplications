.class public Lcom/xiaomi/ad/internal/common/module/d;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/internal/common/module/d$b;,
        Lcom/xiaomi/ad/internal/common/module/d$a;,
        Lcom/xiaomi/ad/internal/common/module/d$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleManager"

.field private static final V:Ljava/lang/String; = "moduleupdater"

.field private static final ar:J = 0x5265c00L

.field private static final as:J = 0x36ee80L

.field private static at:Lcom/xiaomi/ad/internal/common/module/d;


# instance fields
.field private au:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/ad/internal/common/module/c;",
            ">;"
        }
    .end annotation
.end field

.field private av:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Z

.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/ad/internal/common/module/d;->at:Lcom/xiaomi/ad/internal/common/module/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->av:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    iput-boolean v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->aw:Z

    .line 51
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "moduleupdater"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mPrefs:Landroid/content/SharedPreferences;

    .line 53
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/o;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    .line 55
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/h;->setDebugOn()V

    .line 56
    const-string/jumbo v0, "ModuleManager"

    const-string/jumbo v1, "set debug on"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/common/module/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/xiaomi/ad/internal/common/module/a;Ldalvik/system/DexClassLoader;)Lcom/xiaomi/ad/internal/common/module/c;
    .locals 6

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Lcom/xiaomi/ad/internal/common/module/c;

    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/a;->u()I

    move-result v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ad/internal/common/module/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/xiaomi/ad/internal/common/module/d$b;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 153
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    iget-wide v2, p2, Lcom/xiaomi/ad/internal/common/module/d$b;->aC:J

    const-wide/32 v4, 0x36ee80

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 158
    const-string/jumbo v4, "ModuleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "last update check time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    .line 160
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    rem-long v4, v6, v4

    .line 161
    add-long/2addr v4, v2

    rem-long/2addr v4, v2

    sub-long/2addr v4, v2

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 166
    invoke-static {p2}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/ad/internal/common/module/d;->b(Ljava/lang/String;J)V

    .line 167
    sget-object v0, Lcom/xiaomi/ad/internal/common/b/m;->bj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/ad/internal/common/module/d$c;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/xiaomi/ad/internal/common/module/d$c;-><init>(Lcom/xiaomi/ad/internal/common/module/d;Lcom/xiaomi/ad/internal/common/module/d$b;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Lcom/xiaomi/ad/internal/common/module/d$b;)V
    .locals 3

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->d(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v0, "AdServer"

    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/xiaomi/ad/internal/common/module/g;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/internal/common/module/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/xiaomi/ad/internal/common/module/d$b;->a(Lcom/xiaomi/ad/internal/common/module/d$b;Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;

    .line 129
    :cond_0
    return-void
.end method

.method public static declared-synchronized l(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/module/d;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/xiaomi/ad/internal/common/module/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/module/d;->at:Lcom/xiaomi/ad/internal/common/module/d;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/xiaomi/ad/internal/common/module/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/common/module/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/module/d;->at:Lcom/xiaomi/ad/internal/common/module/d;

    .line 64
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/module/d;->at:Lcom/xiaomi/ad/internal/common/module/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Q()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/b/m;->bj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/ad/internal/common/module/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/internal/common/module/e;-><init>(Lcom/xiaomi/ad/internal/common/module/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public R()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/module/c;

    .line 253
    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/internal/common/module/d;->c(Lcom/xiaomi/ad/internal/common/module/c;)V

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/c;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/g;->Z()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 83
    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string/jumbo v2, "ModuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadModule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->b(Lcom/xiaomi/ad/internal/common/module/d$b;)V

    .line 90
    new-instance v4, Lcom/xiaomi/ad/internal/common/module/a;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2, v3}, Lcom/xiaomi/ad/internal/common/module/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/module/c;

    .line 112
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->aw:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v4}, Lcom/xiaomi/ad/internal/common/module/a;->C()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getVersion()I

    move-result v1

    :cond_3
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/xiaomi/ad/internal/common/module/d;->a(Ljava/lang/String;Lcom/xiaomi/ad/internal/common/module/d$b;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lcom/xiaomi/ad/internal/common/module/a;->w()Ldalvik/system/DexClassLoader;

    move-result-object v2

    .line 95
    if-nez v2, :cond_5

    iget-boolean v5, p0, Lcom/xiaomi/ad/internal/common/module/d;->aw:Z

    if-eqz v5, :cond_5

    .line 96
    const-string/jumbo v5, "ModuleManager"

    const-string/jumbo v6, "do update."

    invoke-static {v5, v6}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v5, Lcom/xiaomi/ad/internal/common/module/d$c;

    invoke-virtual {v4}, Lcom/xiaomi/ad/internal/common/module/a;->C()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, p1, v6, v7}, Lcom/xiaomi/ad/internal/common/module/d$c;-><init>(Lcom/xiaomi/ad/internal/common/module/d;Lcom/xiaomi/ad/internal/common/module/d$b;Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v5}, Lcom/xiaomi/ad/internal/common/module/d$c;->run()V

    .line 99
    invoke-virtual {v5}, Lcom/xiaomi/ad/internal/common/module/d$c;->S()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    invoke-virtual {v4}, Lcom/xiaomi/ad/internal/common/module/a;->w()Ldalvik/system/DexClassLoader;

    move-result-object v2

    .line 103
    :cond_5
    if-eqz v2, :cond_2

    .line 104
    invoke-direct {p0, v4, v2}, Lcom/xiaomi/ad/internal/common/module/d;->a(Lcom/xiaomi/ad/internal/common/module/a;Ldalvik/system/DexClassLoader;)Lcom/xiaomi/ad/internal/common/module/c;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/internal/common/module/d;->a(Lcom/xiaomi/ad/internal/common/module/c;)V

    .line 107
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/common/module/c;->k(Landroid/content/Context;)V

    .line 108
    const-string/jumbo v2, "ModuleManager"

    const-string/jumbo v5, "module load success."

    invoke-static {v2, v5}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/c;->getVersion()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/xiaomi/ad/internal/common/i;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(ILcom/xiaomi/ad/internal/common/module/c;)V
    .locals 5

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSpeedLimit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v1, "ModuleManager"

    const-string/jumbo v2, "setSpeedLimit"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/ad/internal/common/module/c;)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->b(Lcom/xiaomi/ad/internal/common/module/c;)V

    .line 195
    sget v0, Lcom/xiaomi/ad/common/SdkConfig;->SPEED_LIMIT:I

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->a(ILcom/xiaomi/ad/internal/common/module/c;)V

    .line 196
    sget-boolean v0, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->c(Lcom/xiaomi/ad/internal/common/module/c;)V

    .line 199
    :cond_0
    return-void
.end method

.method public b(Lcom/xiaomi/ad/internal/common/module/c;)V
    .locals 5

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/GlobalHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setApplicationContext"

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

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/xiaomi/ad/common/SdkConfig;->sAppId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setLogLevel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/ad/internal/common/b/h;->aa()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {}, Lcom/xiaomi/ad/internal/common/g;->r()Lcom/xiaomi/ad/internal/common/g;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ModuleManager"

    const-string/jumbo v4, "setLogLevel"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaomi/ad/internal/common/g;->trackException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->av:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/xiaomi/ad/internal/common/module/d;->aw:Z

    .line 259
    return-void
.end method

.method public c(Lcom/xiaomi/ad/internal/common/module/c;)V
    .locals 3

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "USE_STAGING"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaomi/ad/common/SdkConfig;->USE_STAGING:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/SdkConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "MOCK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaomi/ad/common/SdkConfig;->MOCK:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v1, "ModuleManager"

    const-string/jumbo v2, "setDebug"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/ad/internal/common/module/c;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/module/c;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/internal/common/module/d;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 141
    const-wide/32 v2, 0x36ee80

    .line 142
    const-string/jumbo v4, "ModuleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "last update check time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    .line 144
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    rem-long v4, v6, v4

    .line 145
    add-long/2addr v4, v2

    rem-long/2addr v4, v2

    sub-long/2addr v4, v2

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    :cond_0
    :goto_0
    return-wide v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->av:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->av:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 179
    :goto_1
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public setSpeedLimit(I)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d;->au:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/module/c;

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/ad/internal/common/module/d;->a(ILcom/xiaomi/ad/internal/common/module/c;)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method
