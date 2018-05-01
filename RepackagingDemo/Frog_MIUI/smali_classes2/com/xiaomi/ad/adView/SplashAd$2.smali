.class Lcom/xiaomi/ad/adView/SplashAd$2;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/SplashAd;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/SplashAd;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v0, "SplashAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ui error found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/SplashAdListener;->onAdFailed(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/ad/adView/SplashAd;->access$300(Lcom/xiaomi/ad/adView/SplashAd;J)V

    .line 105
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/adView/SplashAd;->access$700(Lcom/xiaomi/ad/adView/SplashAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    .line 111
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$800(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$900(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$800(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/ad/SplashAdListener;->onAdPresent()V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/ad/SplashAdListener;->onAdClick()V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/ad/SplashAdListener;->onAdDismissed()V

    .line 122
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/ad/adView/SplashAd;->access$300(Lcom/xiaomi/ad/adView/SplashAd;J)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 134
    const-string/jumbo v0, "SplashAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewCreated timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v2}, Lcom/xiaomi/ad/adView/SplashAd;->access$400(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$400(Lcom/xiaomi/ad/adView/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v1}, Lcom/xiaomi/ad/adView/SplashAd;->access$000(Lcom/xiaomi/ad/adView/SplashAd;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$2;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$1000(Lcom/xiaomi/ad/adView/SplashAd;)V

    .line 139
    :cond_0
    return-void
.end method
