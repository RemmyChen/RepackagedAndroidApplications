.class public Lcom/xiaomi/ad/internal/common/module/a;
.super Ljava/lang/Object;
.source "ApkLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkLoader"

.field private static final V:Ljava/lang/String; = "apkloader"

.field private static final aj:Ljava/lang/String; = ".apk"

.field private static final ak:Ljava/lang/String; = "_asset.apk"

.field private static final al:Ljava/lang/String; = "/lib/"

.field private static final am:Ljava/lang/String; = "/asset_lib/"


# instance fields
.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    .line 35
    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    .line 36
    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    .line 48
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "apkloader"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 52
    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "copyAssetFile start"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    .line 204
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 205
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    aget-object v0, v1, v0

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/xiaomi/ad/internal/common/b/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "copyAssetFile end"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1
    return-void

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "copyAssetFile end"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "copyAssetFile end"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "copyAssetFile end"

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private B()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->B()Ljava/lang/String;

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

.method private H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->B()Ljava/lang/String;

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

.method private I()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asset_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 251
    :goto_0
    return v0

    .line 250
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private J()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->K()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/a;->d(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_0

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private K()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asset_app_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 267
    :goto_0
    return v0

    .line 266
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private L()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 279
    :goto_0
    return v0

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private M()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_asset_modify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 287
    :goto_0
    return-wide v0

    .line 286
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private N()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "modify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 295
    :goto_0
    return-wide v0

    .line 294
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private O()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asset_launcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private P()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "launcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asset_modify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/common/module/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->A()V

    return-void
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_modify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asset_app_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, ""

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x4080

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 153
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "Launcher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asset_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "local_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asset_launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    return-void
.end method

.method private x()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 161
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->M()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->I()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 165
    :cond_1
    return v0
.end method

.method private y()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 169
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/module/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->N()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->L()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 173
    :cond_1
    return v0
.end method

.method private z()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x10

    .line 177
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x0

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 182
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 188
    :cond_0
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 196
    :cond_1
    :goto_0
    return v0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    :try_start_2
    const-string/jumbo v2, "ApkLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".apk file in assets of app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 185
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 186
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    if-eqz v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 192
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 188
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 185
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized w()Ldalvik/system/DexClassLoader;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ApkLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load apk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->F()Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->z()Z

    move-result v4

    .line 68
    const-string/jumbo v5, "ApkLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "assert app size changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->J()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    :cond_0
    const-string/jumbo v5, "ApkLoader"

    const-string/jumbo v6, "re-copy asset file"

    invoke-static {v5, v6}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->A()V

    .line 82
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const-string/jumbo v5, "ApkLoader"

    const-string/jumbo v6, "check modify."

    invoke-static {v5, v6}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->x()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->J()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    :cond_1
    const-string/jumbo v4, "ApkLoader"

    const-string/jumbo v5, "modified."

    invoke-static {v4, v5}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/xiaomi/ad/internal/common/b/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    .line 88
    iget v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    invoke-direct {p0, v2}, Lcom/xiaomi/ad/internal/common/module/a;->d(I)V

    .line 89
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/ad/internal/common/b/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaomi/ad/internal/common/module/a;->c(I)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/ad/internal/common/module/a;->a(J)V

    move v2, v0

    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/module/a;->C()Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 99
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->y()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/xiaomi/ad/internal/common/b/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    .line 102
    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    invoke-direct {p0, v1}, Lcom/xiaomi/ad/internal/common/module/a;->e(I)V

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/xiaomi/ad/internal/common/module/a;->b(J)V

    .line 108
    :goto_2
    const-string/jumbo v1, "ApkLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "asset version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "ApkLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "local version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    iget v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    if-lt v1, v3, :cond_8

    .line 111
    iget v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    if-le v0, v1, :cond_a

    .line 112
    iget v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    .line 113
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    .line 114
    if-eqz v2, :cond_7

    .line 115
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/common/module/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/common/module/a;->e(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ad/internal/common/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_3
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    const-string/jumbo v1, "ApkLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load apk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "load apk done."

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :goto_4
    monitor-exit p0

    return-object v0

    .line 73
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/xiaomi/ad/internal/common/module/b;

    invoke-direct {v6, p0}, Lcom/xiaomi/ad/internal/common/module/b;-><init>(Lcom/xiaomi/ad/internal/common/module/a;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_3
    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "load apk."

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :try_start_4
    const-string/jumbo v0, "ApkLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load apk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "load apk done."

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :goto_5
    const/4 v0, 0x0

    goto :goto_4

    .line 92
    :cond_3
    :try_start_5
    const-string/jumbo v2, "ApkLoader"

    const-string/jumbo v3, "not modified."

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->I()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ag:I

    :cond_4
    move v2, v1

    goto/16 :goto_1

    .line 105
    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->L()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    :cond_6
    move v0, v1

    goto/16 :goto_2

    .line 119
    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 142
    :catchall_0
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "ApkLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load apk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "load apk done."

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_8
    :try_start_7
    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    iget v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    if-le v1, v2, :cond_a

    .line 126
    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ah:I

    iput v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/module/a;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    .line 128
    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/common/module/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/common/module/a;->f(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ad/internal/common/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_6
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->G()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :try_start_8
    const-string/jumbo v1, "ApkLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load apk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "ApkLoader"

    const-string/jumbo v2, "load apk done."

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    .line 133
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/a;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/a;->ai:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 142
    :cond_a
    :try_start_a
    const-string/jumbo v0, "ApkLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load apk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/ad/internal/common/module/a;->af:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "ApkLoader"

    const-string/jumbo v1, "load apk done."

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5
.end method
