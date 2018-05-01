.class Lcom/xiaomi/ad/adView/BannerAd$1;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/BannerAd;

.field final synthetic val$listener:Lcom/xiaomi/ad/adView/BannerAd$BannerListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/BannerAd;Lcom/xiaomi/ad/adView/BannerAd$BannerListener;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xiaomi/ad/adView/BannerAd$1;->this$0:Lcom/xiaomi/ad/adView/BannerAd;

    iput-object p2, p0, Lcom/xiaomi/ad/adView/BannerAd$1;->val$listener:Lcom/xiaomi/ad/adView/BannerAd$BannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/ad/adView/BannerAd$1;->val$listener:Lcom/xiaomi/ad/adView/BannerAd$BannerListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/adView/BannerAd$BannerListener;->onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 51
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
