.class Lcom/xiaomi/ad/adView/SplashAd$4;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/SplashAd;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/SplashAd;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd$4;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$4;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_TIMEOUT:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-virtual {v1}, Lcom/xiaomi/ad/common/pojo/AdError;->value()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/ad/common/pojo/AdError;->valueOf(I)Lcom/xiaomi/ad/common/pojo/AdError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/ad/common/pojo/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/SplashAdListener;->onAdFailed(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$4;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/adView/SplashAd;->access$402(Lcom/xiaomi/ad/adView/SplashAd;Z)Z

    .line 190
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$4;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/ad/adView/SplashAd;->access$300(Lcom/xiaomi/ad/adView/SplashAd;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string/jumbo v1, "SplashAd"

    const-string/jumbo v2, "mTimeoutGuard e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
