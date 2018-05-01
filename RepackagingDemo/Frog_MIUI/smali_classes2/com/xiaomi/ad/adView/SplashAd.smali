.class public Lcom/xiaomi/ad/adView/SplashAd;
.super Ljava/lang/Object;
.source "SplashAd.java"


# static fields
.field private static final DEFAULT_SPLASH_REQUEST_TIME_OUT:I

.field private static final TAG:Ljava/lang/String; = "SplashAd"


# instance fields
.field private mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

.field private mAdView:Lcom/xiaomi/ad/NativeAdView;

.field private mAdViewListener:Lcom/xiaomi/ad/AdListener;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDefaultId:I

.field private mHandler:Landroid/os/Handler;

.field private mIsClicked:Z

.field private mIsDismissed:Z

.field private mIsShowed:Z

.field private mIsTimeout:Z

.field private mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

.field private mSplashAdListener:Lcom/xiaomi/ad/SplashAdListener;

.field private mTimeoutGuard:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/xiaomi/ad/internal/common/b/n;->bp:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/xiaomi/ad/adView/SplashAd;->DEFAULT_SPLASH_REQUEST_TIME_OUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/xiaomi/ad/SplashAdListener;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/xiaomi/ad/adView/SplashAd$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/adView/SplashAd$2;-><init>(Lcom/xiaomi/ad/adView/SplashAd;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdViewListener:Lcom/xiaomi/ad/AdListener;

    .line 184
    new-instance v0, Lcom/xiaomi/ad/adView/SplashAd$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/adView/SplashAd$4;-><init>(Lcom/xiaomi/ad/adView/SplashAd;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mTimeoutGuard:Ljava/lang/Runnable;

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : container is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    if-nez p3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : default splash id is 0?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    if-nez p4, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContainer:Landroid/view/ViewGroup;

    .line 63
    iput-object p4, p0, Lcom/xiaomi/ad/adView/SplashAd;->mSplashAdListener:Lcom/xiaomi/ad/SplashAdListener;

    .line 64
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/ServerProxy;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/adView/ServerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mHandler:Landroid/os/Handler;

    .line 66
    iput p3, p0, Lcom/xiaomi/ad/adView/SplashAd;->mDefaultId:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/ad/adView/SplashAd;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mTimeoutGuard:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/ad/adView/SplashAd;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xiaomi/ad/adView/SplashAd;->showSplash()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/ad/adView/SplashAd;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/ad/adView/SplashAd;)Lcom/xiaomi/ad/SplashAdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mSplashAdListener:Lcom/xiaomi/ad/SplashAdListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/ad/adView/SplashAd;J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ad/adView/SplashAd;->dismissSplash(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/ad/adView/SplashAd;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsTimeout:Z

    return v0
.end method

.method static synthetic access$402(Lcom/xiaomi/ad/adView/SplashAd;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsTimeout:Z

    return p1
.end method

.method static synthetic access$502(Lcom/xiaomi/ad/adView/SplashAd;Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/ad/adView/SplashAd;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xiaomi/ad/adView/SplashAd;->buildView()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/ad/adView/SplashAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/adView/SplashAd;->handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/ad/adView/SplashAd;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsShowed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/xiaomi/ad/adView/SplashAd;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsClicked:Z

    return v0
.end method

.method private buildView()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/NativeAdView;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V

    iput-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    .line 199
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdViewListener:Lcom/xiaomi/ad/AdListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->setAdListener(Lcom/xiaomi/ad/AdListener;)V

    .line 200
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)V

    .line 201
    return-void
.end method

.method private dismissSplash(J)V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v0, "SplashAd"

    const-string/jumbo v1, "dismissSplash"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/adView/SplashAd$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/adView/SplashAd$3;-><init>(Lcom/xiaomi/ad/adView/SplashAd;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method

.method private handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 205
    :try_start_0
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsDismissed:Z

    if-nez v0, :cond_1

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsShowed:Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsShowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsDismissed:Z

    if-nez v0, :cond_2

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsClicked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string/jumbo v1, "SplashAd"

    const-string/jumbo v2, "handleEvent e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    :cond_2
    :try_start_1
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 214
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mIsDismissed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private showSplash()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 146
    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 147
    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 149
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mAdView:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/ad/NativeAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method


# virtual methods
.method public requestAd(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : positionId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/a;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/ad/adView/SplashAd;->mDefaultId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

    sget v5, Lcom/xiaomi/ad/adView/SplashAd;->DEFAULT_SPLASH_REQUEST_TIME_OUT:I

    new-instance v6, Lcom/xiaomi/ad/adView/SplashAd$1;

    invoke-direct {v6, p0}, Lcom/xiaomi/ad/adView/SplashAd$1;-><init>(Lcom/xiaomi/ad/adView/SplashAd;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdRealTime(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V

    .line 96
    iget-object v0, p0, Lcom/xiaomi/ad/adView/SplashAd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/SplashAd;->mTimeoutGuard:Ljava/lang/Runnable;

    sget v2, Lcom/xiaomi/ad/adView/SplashAd;->DEFAULT_SPLASH_REQUEST_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void

    :cond_1
    move v4, v3

    .line 73
    goto :goto_0
.end method
