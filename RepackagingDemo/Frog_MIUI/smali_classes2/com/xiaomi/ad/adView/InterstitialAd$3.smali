.class Lcom/xiaomi/ad/adView/InterstitialAd$3;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/xiaomi/ad/internal/b/a$a;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

.field final synthetic val$adInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/InterstitialAd;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd$3;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    iput-object p2, p0, Lcom/xiaomi/ad/adView/InterstitialAd$3;->val$adInfo:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/xiaomi/ad/internal/b/a;)V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$3;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$600(Lcom/xiaomi/ad/adView/InterstitialAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$3;->this$0:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/ad/common/pojo/AdEvent;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd$3;->val$adInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/Ad;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/ad/common/pojo/AdEvent;-><init>(ILcom/xiaomi/ad/common/pojo/Ad;)V

    invoke-interface {v1, v2}, Lcom/xiaomi/ad/AdListener;->onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onShow(Lcom/xiaomi/ad/internal/b/a;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
