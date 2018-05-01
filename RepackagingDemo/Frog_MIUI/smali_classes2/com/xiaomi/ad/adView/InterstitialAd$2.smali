.class Lcom/xiaomi/ad/adView/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/InterstitialAd;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd$2;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$2;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$102(Lcom/xiaomi/ad/adView/InterstitialAd;Z)Z

    .line 104
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$2;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 105
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
    .line 110
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$2;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$102(Lcom/xiaomi/ad/adView/InterstitialAd;Z)Z

    .line 111
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$2;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/ad/AdListener;->onAdLoaded()V

    .line 112
    return-void
.end method
