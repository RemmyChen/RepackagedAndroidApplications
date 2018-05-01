.class Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;
.super Ljava/lang/Object;
.source "CustomNewsFeedAd.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

.field final synthetic val$listener:Lcom/xiaomi/ad/AdListener;

.field final synthetic val$nativeAdView:Lcom/xiaomi/ad/NativeAdView;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/CustomNewsFeedAd;Lcom/xiaomi/ad/NativeAdView;Lcom/xiaomi/ad/AdListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

    iput-object p2, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$nativeAdView:Lcom/xiaomi/ad/NativeAdView;

    iput-object p3, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$listener:Lcom/xiaomi/ad/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd;->TAG:Ljava/lang/String;

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

    .line 93
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$nativeAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0}, Lcom/xiaomi/ad/NativeAdView;->removeAllViews()V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$listener:Lcom/xiaomi/ad/AdListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 95
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/adView/CustomNewsFeedAd;->access$100(Lcom/xiaomi/ad/adView/CustomNewsFeedAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 100
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$listener:Lcom/xiaomi/ad/AdListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 101
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$2;->val$listener:Lcom/xiaomi/ad/AdListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/AdListener;->onViewCreated(Landroid/view/View;)V

    .line 111
    return-void
.end method
