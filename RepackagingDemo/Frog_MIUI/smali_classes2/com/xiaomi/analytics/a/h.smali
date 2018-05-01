.class Lcom/xiaomi/analytics/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic do:Lcom/xiaomi/analytics/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/a/f;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/f;->d(Lcom/xiaomi/analytics/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 224
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 225
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 226
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 227
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 228
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/g;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/f;->e(Lcom/xiaomi/analytics/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/l;->d([B)Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/a/f;->e(Lcom/xiaomi/analytics/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :cond_0
    if-eqz v0, :cond_1

    .line 238
    const-string/jumbo v1, "Analytics-Updater"

    const-string/jumbo v2, "download apk success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v3}, Lcom/xiaomi/analytics/a/f;->f(Lcom/xiaomi/analytics/a/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 241
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 243
    iget-object v0, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/f;->a(Lcom/xiaomi/analytics/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/a/b/b;->r(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/e;->a([Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string/jumbo v0, "Analytics-Updater"

    const-string/jumbo v2, "verify signature success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/a/f;->f(Lcom/xiaomi/analytics/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 247
    iget-object v0, p0, Lcom/xiaomi/analytics/a/h;->do:Lcom/xiaomi/analytics/a/f;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/f;->g(Lcom/xiaomi/analytics/a/f;)V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    const-string/jumbo v0, "Analytics-Updater"

    const-string/jumbo v1, "verify signature failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
