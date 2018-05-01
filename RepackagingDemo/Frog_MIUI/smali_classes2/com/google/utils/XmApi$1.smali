.class final Lcom/google/utils/XmApi$1;
.super Ljava/lang/Object;
.source "XmApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/utils/XmApi;->first_show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->show()V

    .line 270
    :cond_0
    return-void
.end method
