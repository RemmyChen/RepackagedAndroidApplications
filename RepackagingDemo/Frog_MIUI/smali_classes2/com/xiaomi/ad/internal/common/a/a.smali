.class public Lcom/xiaomi/ad/internal/common/a/a;
.super Ljava/lang/Object;
.source "ConcurrentAccessFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/internal/common/a/a$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConcurrentAccessFile"


# instance fields
.field private Z:Ljava/lang/String;

.field private aa:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/a/a;->Z:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/a/a;->Z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    .line 20
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 55
    new-instance v1, Lcom/xiaomi/ad/internal/common/a/a$a;

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->Z:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/xiaomi/ad/internal/common/a/a$a;-><init>(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 67
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public s()[B
    .locals 3

    .prologue
    .line 23
    new-instance v1, Lcom/xiaomi/ad/internal/common/a/a$a;

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->Z:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/xiaomi/ad/internal/common/a/a$a;-><init>(Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 34
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    throw v0
.end method

.method public write([B)V
    .locals 5

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    new-instance v2, Lcom/xiaomi/ad/internal/common/a/a$a;

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a;->Z:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/xiaomi/ad/internal/common/a/a$a;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaomi/ad/internal/common/a/a$a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/xiaomi/ad/internal/common/a/a;->aa:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :goto_0
    invoke-virtual {v2}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 50
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 52
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    invoke-virtual {v2}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 50
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    :goto_3
    invoke-virtual {v2}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 50
    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 49
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 46
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
