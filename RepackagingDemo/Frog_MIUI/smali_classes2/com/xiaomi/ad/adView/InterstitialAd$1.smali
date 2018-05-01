.class Lcom/xiaomi/ad/adView/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/InterstitialAd;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI error found ! onAdInfoRequestError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$102(Lcom/xiaomi/ad/adView/InterstitialAd;Z)Z

    .line 49
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$200(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/NativeAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/NativeAdView;->removeAllViews()V

    .line 50
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 51
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$400(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/b/a;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$400(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/b/a;->dismiss()V

    .line 54
    :cond_0
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$500(Lcom/xiaomi/ad/adView/InterstitialAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 59
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$1;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 60
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
