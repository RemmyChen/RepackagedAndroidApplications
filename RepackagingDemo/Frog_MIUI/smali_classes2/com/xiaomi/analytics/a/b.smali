.class public Lcom/xiaomi/analytics/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/a/b$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Analytics-sdk"

.field private static final cB:Ljava/lang/String; = "analytics"

.field private static final cC:Ljava/lang/String; = "analytics.apk"

.field private static final cD:Ljava/lang/String; = "/lib/"

.field private static final cE:Ljava/lang/String; = "/asset_lib/"

.field private static final cF:Ljava/lang/String; = "analytics_asset.apk"

.field private static cK:Ljava/lang/Object;

.field private static cw:Lcom/xiaomi/analytics/a/b;


# instance fields
.field private cA:Lcom/xiaomi/analytics/a/b$a;

.field cG:Ljava/util/concurrent/ExecutorService;

.field private cH:J

.field private cI:Z

.field private cJ:Z

.field private cL:Ljava/lang/Runnable;

.field private cM:Ljava/lang/Runnable;

.field private cN:Lcom/xiaomi/analytics/a/f$c;

.field private cx:Lcom/xiaomi/analytics/a/c/a;

.field private cy:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private cz:Lcom/xiaomi/analytics/a/c/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cG:Ljava/util/concurrent/ExecutorService;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/analytics/a/b;->cH:J

    .line 47
    iput-boolean v2, p0, Lcom/xiaomi/analytics/a/b;->cI:Z

    .line 49
    iput-boolean v2, p0, Lcom/xiaomi/analytics/a/b;->cJ:Z

    .line 132
    new-instance v0, Lcom/xiaomi/analytics/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/a/c;-><init>(Lcom/xiaomi/analytics/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cL:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/xiaomi/analytics/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/a/d;-><init>(Lcom/xiaomi/analytics/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cM:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lcom/xiaomi/analytics/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/a/e;-><init>(Lcom/xiaomi/analytics/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cN:Lcom/xiaomi/analytics/a/f$c;

    .line 53
    invoke-static {p1}, Lcom/xiaomi/analytics/a/b/b;->Q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    sput-object v0, Lcom/xiaomi/analytics/a/b;->cK:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/xiaomi/analytics/a/c/c;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/a/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/b;->cz:Lcom/xiaomi/analytics/a/c/c;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/f;->ae(Landroid/content/Context;)Lcom/xiaomi/analytics/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cN:Lcom/xiaomi/analytics/a/f$c;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/a/f;->a(Lcom/xiaomi/analytics/a/f$c;)V

    .line 60
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cG:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cM:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public static declared-synchronized P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/xiaomi/analytics/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/a/b;->cw:Lcom/xiaomi/analytics/a/b;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/xiaomi/analytics/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/a/b;->cw:Lcom/xiaomi/analytics/a/b;

    .line 67
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/a/b;->cw:Lcom/xiaomi/analytics/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)Lcom/xiaomi/analytics/a/c/a;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/b;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/xiaomi/analytics/a/b;->cI:Z

    return p1
.end method

.method private aA()Lcom/xiaomi/analytics/a/c/a;
    .locals 6

    .prologue
    .line 222
    :try_start_0
    const-string/jumbo v1, "analytics_core"

    .line 223
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_1

    .line 225
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 226
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    aget-object v4, v2, v0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->at()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/analytics/a/b/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->at()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->av()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/analytics/a/b/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/xiaomi/analytics/a/c/b;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->at()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->av()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/analytics/a/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    return-object v0

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private aB()Lcom/xiaomi/analytics/a/c/a;
    .locals 4

    .prologue
    .line 243
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "analytics.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->au()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/analytics/a/b/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/xiaomi/analytics/a/c/b;

    iget-object v2, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->au()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/analytics/a/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/xiaomi/analytics/a/b;->cK:Ljava/lang/Object;

    return-object v0
.end method

.method private ar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aw()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->au()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 110
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->av()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 116
    :goto_1
    return-void

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/f;->b(Ljava/io/File;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/f;->b(Ljava/io/File;)V

    goto :goto_1
.end method

.method private declared-synchronized ay()V
    .locals 6

    .prologue
    .line 125
    monitor-enter p0

    const-wide/32 v0, 0x36ee80

    .line 126
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/analytics/a/b;->cH:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/a/b;->cH:J

    .line 128
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cG:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cL:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private az()Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cz:Lcom/xiaomi/analytics/a/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/c/c;->aT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cz:Lcom/xiaomi/analytics/a/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/c/c;->aU()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cz:Lcom/xiaomi/analytics/a/c/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/analytics/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/a/b;->c(Lcom/xiaomi/analytics/a/c/a;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/analytics/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/xiaomi/analytics/a/c/a;)V
    .locals 3

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    .line 201
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cA:Lcom/xiaomi/analytics/a/b$a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    sget-boolean v1, Lcom/xiaomi/analytics/a/b/a;->cP:Z

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/a/c/a;->setDebugOn(Z)V

    .line 204
    const-string/jumbo v0, "Analytics-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAnalytics loaded, version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    invoke-interface {v2}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cA:Lcom/xiaomi/analytics/a/b$a;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/a/b$a;->onSdkCorePrepared(Lcom/xiaomi/analytics/a/c/a;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/a/c/a;)V

    .line 211
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/xiaomi/analytics/a/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->aw()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/analytics/a/b;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/b;->cJ:Z

    return v0
.end method

.method static synthetic f(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->az()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->aA()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->aB()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/analytics/a/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ay()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/analytics/a/b$a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xiaomi/analytics/a/b;->cA:Lcom/xiaomi/analytics/a/b$a;

    .line 72
    return-void
.end method

.method public aC()Lcom/xiaomi/analytics/a/j;
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/analytics/a/j;

    const-string/jumbo v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/a/j;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aq()Lcom/xiaomi/analytics/a/c/a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "analytics.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "analytics_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/asset_lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ax()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/b;->cI:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/b;->ay()V

    .line 122
    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/xiaomi/analytics/a/b;->cJ:Z

    .line 76
    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    .line 257
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaomi/analytics/a/b;->cy:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/b;->cx:Lcom/xiaomi/analytics/a/c/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/a/c/a;)V

    .line 260
    :cond_0
    return-void
.end method
