.class Lcom/xiaomi/ad/adView/SplashAd$3$1;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/xiaomi/ad/adView/SplashAd$3;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/SplashAd$3;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd$3$1;->this$1:Lcom/xiaomi/ad/adView/SplashAd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$3$1;->this$1:Lcom/xiaomi/ad/adView/SplashAd$3;

    iget-object v0, v0, Lcom/xiaomi/ad/adView/SplashAd$3;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$1100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd$3$1;->this$1:Lcom/xiaomi/ad/adView/SplashAd$3;

    iget-object v0, v0, Lcom/xiaomi/ad/adView/SplashAd$3;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/SplashAd;->access$1100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
