.class public Lcom/xiaomi/analytics/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 19
    :try_start_1
    invoke-static {v4}, Lcom/xiaomi/analytics/a/b/g;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 20
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-static {v2}, Lcom/xiaomi/analytics/a/b/g;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/xiaomi/analytics/a/b/l;->d([B)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/l;->d([B)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {v4}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v2}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 40
    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    .line 30
    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 31
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 36
    invoke-static {v4}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v3}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v2}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 34
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 36
    invoke-static {v3}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v2}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    :goto_3
    invoke-static {v4}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v2}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v1}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/io/Closeable;)V

    throw v0

    .line 36
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 33
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_1
    move-object v3, v1

    goto :goto_1
.end method
