.class public Lcom/xiaomi/ad/adView/InterstitialAd;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

.field private volatile mIsRunning:Z

.field private mListener:Lcom/xiaomi/ad/AdListener;

.field private mPositionId:Ljava/lang/String;

.field private mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

.field private mSkipped:Z

.field private mViewContainer:Lcom/xiaomi/ad/internal/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ad/adView/InterstitialAd;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaomi/ad/adView/InterstitialAd;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/NativeAdView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/AdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mListener:Lcom/xiaomi/ad/AdListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/ad/adView/InterstitialAd;)Lcom/xiaomi/ad/internal/b/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/ad/adView/InterstitialAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/adView/InterstitialAd;->handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/ad/adView/InterstitialAd;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mSkipped:Z

    return v0
.end method

.method private buildViewAsync(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildViewAsync in "

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/xiaomi/ad/adView/InterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/adView/InterstitialAd$1;-><init>(Lcom/xiaomi/ad/adView/InterstitialAd;)V

    .line 71
    iget-object v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/ad/NativeAdView;->setAdListener(Lcom/xiaomi/ad/AdListener;)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/ad/NativeAdView;->render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildViewAsync e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 188
    :try_start_0
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mSkipped:Z

    .line 189
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/b/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/b/a;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleEvent e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    if-nez p2, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : anchor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mAnchor:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/ServerProxy;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/adView/ServerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    .line 144
    return-void
.end method

.method private reset(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V
    .locals 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mPositionId:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mIsRunning:Z

    .line 130
    new-instance v0, Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/NativeAdView;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

    .line 131
    iput-object p2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mListener:Lcom/xiaomi/ad/AdListener;

    .line 132
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-boolean v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mIsRunning:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/ad/adView/ServerProxy;->containAdFromServerCache(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 84
    sget-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "request ad in "

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There is already a interstitial task running, please wait."

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : positionId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    if-nez p2, :cond_2

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mPositionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/ad/adView/ServerProxy;->containAdFromServerCache(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ad/adView/InterstitialAd;->reset(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 98
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

    const/4 v4, 0x0

    sget v5, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    new-instance v6, Lcom/xiaomi/ad/adView/InterstitialAd$2;

    invoke-direct {v6, p0}, Lcom/xiaomi/ad/adView/InterstitialAd$2;-><init>(Lcom/xiaomi/ad/adView/InterstitialAd;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdUsingCache(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cache is available"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mAnchor:Landroid/view/View;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "InterstitialAd don\'t have an anchor!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "ad is not ready!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mPositionId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/ServerProxy;->getAdsFromServerCache(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Can\'t find usable ad in cache, you may need to request again"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/xiaomi/ad/adView/InterstitialAd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "show e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    return-void

    .line 158
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/ad/internal/common/g;->r()Lcom/xiaomi/ad/internal/common/g;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/xiaomi/ad/common/pojo/AdEvent;

    const/16 v5, 0x13

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/Ad;

    invoke-direct {v4, v5, v0}, Lcom/xiaomi/ad/common/pojo/AdEvent;-><init>(ILcom/xiaomi/ad/common/pojo/Ad;)V

    invoke-virtual {v4}, Lcom/xiaomi/ad/common/pojo/AdEvent;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/g;->trackEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->buildViewAsync(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)V

    .line 160
    new-instance v0, Lcom/xiaomi/ad/internal/b/a;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/xiaomi/ad/internal/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    .line 161
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/b/a;->setHeight(I)V

    .line 162
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/b/a;->setWidth(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/b/a;->c(Z)V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mInterstitialAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/b/a;->b(Landroid/view/View;)Lcom/xiaomi/ad/internal/b/a;

    .line 165
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mAnchor:Landroid/view/View;

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xiaomi/ad/internal/b/a;->showAtLocation(Landroid/view/View;III)V

    .line 166
    iget-object v0, p0, Lcom/xiaomi/ad/adView/InterstitialAd;->mViewContainer:Lcom/xiaomi/ad/internal/b/a;

    new-instance v2, Lcom/xiaomi/ad/adView/InterstitialAd$3;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/ad/adView/InterstitialAd$3;-><init>(Lcom/xiaomi/ad/adView/InterstitialAd;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/internal/b/a;->a(Lcom/xiaomi/ad/internal/b/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
