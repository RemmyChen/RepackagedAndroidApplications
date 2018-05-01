.class Lcom/xiaomi/ad/internal/common/a/a$a;
.super Ljava/lang/Object;
.source "ConcurrentAccessFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/internal/common/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private Z:Ljava/lang/String;

.field ab:Ljava/io/FileOutputStream;

.field ac:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    .line 75
    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    .line 79
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->Z:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/f;->a(Ljava/io/Closeable;)V

    .line 105
    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    .line 107
    :cond_1
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    throw v0
.end method

.method public t()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/common/a/a$a;->release()V

    .line 85
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->Z:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    .line 86
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ab:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;

    .line 87
    iget-object v2, p0, Lcom/xiaomi/ad/internal/common/a/a$a;->ac:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 91
    goto :goto_0
.end method
