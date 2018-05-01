.class public Lcom/xiaomi/ad/adView/BannerAd;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/adView/BannerAd$BannerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerAd"


# instance fields
.field private mAdView:Lcom/xiaomi/ad/NativeAdView;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/xiaomi/ad/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/xiaomi/ad/adView/BannerAd$BannerListener;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : container is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    iput-object p1, p0, Lcom/xiaomi/ad/adView/BannerAd;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/xiaomi/ad/adView/BannerAd;->mContainer:Landroid/view/ViewGroup;

    .line 43
    new-instance v0, Lcom/xiaomi/ad/adView/BannerAd$1;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/ad/adView/BannerAd$1;-><init>(Lcom/xiaomi/ad/adView/BannerAd;Lcom/xiaomi/ad/adView/BannerAd$BannerListener;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/BannerAd;->mListener:Lcom/xiaomi/ad/AdListener;

    .line 61
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0}, Lcom/xiaomi/ad/NativeAdView;->removeAllViews()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    .line 89
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : positionId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/ad/adView/BannerAd;->recycle()V

    .line 69
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 72
    new-instance v1, Lcom/xiaomi/ad/NativeAdView;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/BannerAd;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/ad/common/pojo/AdType;->AD_BANNER:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/ad/NativeAdView;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V

    iput-object v1, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    .line 73
    iget-object v1, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/BannerAd;->mListener:Lcom/xiaomi/ad/AdListener;

    invoke-virtual {v1, v2}, Lcom/xiaomi/ad/NativeAdView;->setAdListener(Lcom/xiaomi/ad/AdListener;)V

    .line 74
    iget-object v1, p0, Lcom/xiaomi/ad/adView/BannerAd;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string/jumbo v2, "positionId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v2, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/ad/NativeAdView;->render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;Lorg/json/JSONObject;)V

    .line 78
    iget-object v1, p0, Lcom/xiaomi/ad/adView/BannerAd;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/BannerAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string/jumbo v1, "BannerAd"

    const-string/jumbo v2, "show e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
