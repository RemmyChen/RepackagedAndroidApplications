.class public final Lcom/google/ads/mediation/imobile/IMobileAdapter;
.super Ljava/lang/Object;
.source "IMobileAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# static fields
.field private static final IMOBILE_SUPPORT_SIZES:[Lcom/google/android/gms/ads/AdSize;

.field private static final isDevelop:Z


# instance fields
.field private bannerView:Landroid/view/ViewGroup;

.field private interstitialActivity:Landroid/app/Activity;

.field private interstitialSpotId:Ljava/lang/String;

.field private mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 75
    invoke-static {}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->values()[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    move-result-object v2

    .line 76
    .local v2, "iMobileAdSizes":[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
    array-length v3, v2

    new-array v3, v3, [Lcom/google/android/gms/ads/AdSize;

    sput-object v3, Lcom/google/ads/mediation/imobile/IMobileAdapter;->IMOBILE_SUPPORT_SIZES:[Lcom/google/android/gms/ads/AdSize;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 78
    aget-object v1, v2, v0

    .line 79
    .local v1, "iMobileAdSize":Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
    sget-object v3, Lcom/google/ads/mediation/imobile/IMobileAdapter;->IMOBILE_SUPPORT_SIZES:[Lcom/google/android/gms/ads/AdSize;

    new-instance v4, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v4, v3, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "iMobileAdSize":Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/mediation/imobile/IMobileAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/imobile/IMobileAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/imobile/IMobileAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private developLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 247
    const-string v0, "getBannerView()"

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->bannerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 435
    iput-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->bannerView:Landroid/view/ViewGroup;

    .line 436
    iput-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 437
    iput-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    .line 438
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p6, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "isSupportSize":Z
    sget-object v9, Lcom/google/ads/mediation/imobile/IMobileAdapter;->IMOBILE_SUPPORT_SIZES:[Lcom/google/android/gms/ads/AdSize;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v2, v9, v8

    .line 97
    .local v2, "iMobileSize":Lcom/google/android/gms/ads/AdSize;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 98
    const/4 v3, 0x1

    .line 102
    .end local v2    # "iMobileSize":Lcom/google/android/gms/ads/AdSize;
    :cond_0
    if-nez v3, :cond_2

    .line 103
    sget-object v8, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v9, "Banner : Ad size is not found. (%d x %d)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    .line 104
    const/4 v8, 0x1

    invoke-interface {p2, p0, v8}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 240
    :goto_1
    return-void

    .line 95
    .restart local v2    # "iMobileSize":Lcom/google/android/gms/ads/AdSize;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "iMobileSize":Lcom/google/android/gms/ads/AdSize;
    :cond_2
    instance-of v8, p1, Landroid/app/Activity;

    if-nez v8, :cond_3

    .line 111
    const-string v8, "Banner : Context is not Activity."

    invoke-direct {p0, v8}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x1

    invoke-interface {p2, p0, v8}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 115
    check-cast v1, Landroid/app/Activity;

    .line 118
    .local v1, "activity":Landroid/app/Activity;
    const-string v8, "publisherId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "publisherId":Ljava/lang/String;
    const-string v8, "mid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "mediaId":Ljava/lang/String;
    const-string v8, "asid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "spotId":Ljava/lang/String;
    iput-object p2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 127
    invoke-static {v1, v5, v4, v6}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->registerSpotInline(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v6}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->start(Ljava/lang/String;)V

    .line 140
    new-instance v8, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;

    invoke-direct {v8, p0}, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;-><init>(Lcom/google/ads/mediation/imobile/IMobileAdapter;)V

    invoke-static {v6, v8}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->setImobileSdkAdListener(Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    .line 234
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v7, "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->bannerView:Landroid/view/ViewGroup;

    .line 236
    iget-object v8, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->bannerView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v8, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->bannerView:Landroid/view/ViewGroup;

    invoke-static {v1, v6, v8}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->showAdForAdMobMediation(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    .line 277
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 278
    const-string v2, "Interstitial : Context is not Activity."

    invoke-direct {p0, v2}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x1

    invoke-interface {p2, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 411
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 282
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    .line 285
    const-string v2, "publisherId"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "publisherId":Ljava/lang/String;
    const-string v2, "mid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "mediaId":Ljava/lang/String;
    const-string v2, "asid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 294
    iget-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->registerSpotFullScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    new-instance v3, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;

    invoke-direct {v3, p0}, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;-><init>(Lcom/google/ads/mediation/imobile/IMobileAdapter;)V

    invoke-static {v2, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->setImobileSdkAdListener(Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    .line 404
    iget-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->isShowAd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v2, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter;->interstitialSpotId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->showAdforce(Landroid/app/Activity;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string v0, "[ERROR] Interstitial : Activity has already closed."

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->developLog(Ljava/lang/String;)V

    goto :goto_0
.end method
