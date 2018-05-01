.class public Lcom/xiaomi/ad/internal/common/b/d;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 14
    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 19
    :try_start_1
    invoke-static {v5}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 20
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-static {v3}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/xiaomi/ad/internal/common/b/o;->b([B)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/o;->b([B)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-static {v5}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v3}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v2}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    :goto_0
    return v0

    :cond_0
    move-object v4, v3

    .line 30
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 31
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 32
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 33
    const/4 v0, 0x1

    .line 38
    invoke-static {v5}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v4}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v3}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    .line 35
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 38
    invoke-static {v4}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v3}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v2}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    :goto_3
    invoke-static {v5}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v3}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v2}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 38
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v5, v4

    goto :goto_3

    .line 34
    :catch_1
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_1
    move-object v4, v2

    goto :goto_1
.end method
