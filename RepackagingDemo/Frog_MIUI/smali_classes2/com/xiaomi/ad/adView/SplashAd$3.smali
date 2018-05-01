.class Lcom/xiaomi/ad/adView/SplashAd$3;
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
    .line 155
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd$3;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 160
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 161
    new-instance v1, Lcom/xiaomi/ad/adView/SplashAd$3$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/adView/SplashAd$3$1;-><init>(Lcom/xiaomi/ad/adView/SplashAd$3;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd$3;->this$0:Lcom/xiaomi/ad/adView/SplashAd;

    invoke-static {v1}, Lcom/xiaomi/ad/adView/SplashAd;->access$1100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
