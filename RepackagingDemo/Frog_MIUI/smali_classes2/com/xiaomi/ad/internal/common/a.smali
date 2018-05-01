.class public Lcom/xiaomi/ad/internal/common/a;
.super Ljava/lang/Object;
.source "AdSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSettings"

.field private static e:Lcom/xiaomi/ad/internal/common/a; = null

.field private static final f:Ljava/lang/String; = "splashconfig"

.field private static final g:Ljava/lang/String; = "firstrun"


# instance fields
.field mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/a;->mContext:Landroid/content/Context;

    .line 29
    const-string/jumbo v0, "AdSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/a;->mPrefs:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/ad/internal/common/a;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/xiaomi/ad/internal/common/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/a;->e:Lcom/xiaomi/ad/internal/common/a;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/xiaomi/ad/internal/common/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/common/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/a;->e:Lcom/xiaomi/ad/internal/common/a;

    .line 24
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/a;->e:Lcom/xiaomi/ad/internal/common/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "splashconfig"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "splashconfig"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/a;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "firstrun"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "firstrun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method
