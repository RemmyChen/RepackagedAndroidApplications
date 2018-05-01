.class Lcom/xiaomi/ad/adView/SplashAd$1;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/SplashAd;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/SplashAd;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 4

    .prologue
    .line 81
    const-string/jumbo v0, "SplashAd"

    const-string/jumbo v1, "onAdInfoRequestError"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v1}, Lcom/xiaomi/ad/adView/SplashAd;->access$000(Lcom/xiaomi/ad/adView/SplashAd;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/SplashAdListener;->onAdFailed(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/ad/adView/SplashAd;->access$300(Lcom/xiaomi/ad/adView/SplashAd;J)V

    .line 85
    return-void
.end method

.method public onAdInfoRequestFinish(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v0, "SplashAd"

    const-string/jumbo v1, "onAdInfoRequestFinish"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$400(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-static {v1, v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$502(Lcom/xiaomi/ad/adView/SplashAd;Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    .line 92
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$1;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$600(Lcom/xiaomi/ad/adView/SplashAd;)V

    .line 94
    :cond_0
    return-void
.end method
