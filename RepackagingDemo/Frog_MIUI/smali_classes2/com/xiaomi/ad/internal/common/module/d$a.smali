.class Lcom/xiaomi/ad/internal/common/module/d$a;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/internal/common/module/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private aA:Z

.field private aB:Z

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mDownloadUrl:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->ay:Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->aB:Z

    .line 317
    iput-object p2, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mDownloadUrl:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->ay:Ljava/lang/String;

    .line 319
    iput-object p4, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->az:Ljava/lang/String;

    .line 320
    iput-boolean p5, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->aA:Z

    .line 321
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mContext:Landroid/content/Context;

    .line 322
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/common/module/d$a;)Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->aB:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/i;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 332
    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 334
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 335
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 336
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 337
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->ay:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/o;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->ay:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 345
    :goto_1
    if-eqz v2, :cond_2

    .line 346
    const-string/jumbo v0, "ModuleManager"

    const-string/jumbo v3, "download apk success."

    invoke-static {v0, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->az:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->aB:Z

    .line 352
    iget-boolean v1, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->aA:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/a;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 357
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method
