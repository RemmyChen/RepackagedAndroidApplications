.class Lcom/xiaomi/ad/internal/a/c;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bA:Lcom/xiaomi/ad/internal/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/internal/a/b;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "onAdTask"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/b;->a(Lcom/xiaomi/ad/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    iget-object v2, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    invoke-static {v2}, Lcom/xiaomi/ad/internal/a/b;->b(Lcom/xiaomi/ad/internal/a/b;)Lcom/xiaomi/ad/common/api/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/a/d;->a(Lcom/xiaomi/ad/common/api/AdRequest;)Lcom/xiaomi/ad/common/api/AdResponse;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/a/b;->a(Lcom/xiaomi/ad/internal/a/b;Lcom/xiaomi/ad/common/api/AdResponse;)V

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/a/b;->a(Lcom/xiaomi/ad/internal/a/b;Lcom/xiaomi/ad/common/pojo/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "AdTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/c;->bA:Lcom/xiaomi/ad/internal/a/b;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/a/b;->a(Lcom/xiaomi/ad/internal/a/b;Lcom/xiaomi/ad/common/pojo/AdError;)V

    goto :goto_0
.end method
