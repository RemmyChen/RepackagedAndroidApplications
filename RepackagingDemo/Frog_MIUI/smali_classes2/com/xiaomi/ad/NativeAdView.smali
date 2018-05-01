.class public Lcom/xiaomi/ad/NativeAdView;
.super Landroid/widget/FrameLayout;
.source "NativeAdView.java"

# interfaces
.implements Lcom/xiaomi/ad/common/EventCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdListener:Lcom/xiaomi/ad/AdListener;

.field private mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

.field private mIsAttached:Z

.field private mIsUnRegister:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/NativeAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mUIHandler:Landroid/os/Handler;

    .line 29
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/ad/NativeAdView;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/ad/NativeAdView;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/xiaomi/ad/NativeAdView;->mIsUnRegister:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/NativeAdView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/ad/NativeAdView;->generateLayoutParas()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/ad/NativeAdView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/NativeAdView;->postAdView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/ad/NativeAdView;)Lcom/xiaomi/ad/AdListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mAdListener:Lcom/xiaomi/ad/AdListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/ad/NativeAdView;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsAttached:Z

    return v0
.end method

.method private generateLayoutParas()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private postAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/NativeAdView$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/NativeAdView$2;-><init>(Lcom/xiaomi/ad/NativeAdView;Lcom/xiaomi/ad/common/pojo/AdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method private postAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/NativeAdView$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/NativeAdView$3;-><init>(Lcom/xiaomi/ad/NativeAdView;Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method private postAdView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/NativeAdView$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/NativeAdView$4;-><init>(Lcom/xiaomi/ad/NativeAdView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method


# virtual methods
.method public getAdType(Lcom/xiaomi/ad/common/pojo/AdType;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAdView;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 42
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsAttached:Z

    .line 148
    iget-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsUnRegister:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/pojo/AdEvent;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsUnRegister:Z

    .line 153
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsAttached:Z

    .line 159
    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsUnRegister:Z

    .line 161
    return-void
.end method

.method public onError(I)V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/NativeAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postAdError is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->valueOf(I)Lcom/xiaomi/ad/common/pojo/AdError;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/xiaomi/ad/NativeAdView;->postAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lcom/xiaomi/ad/NativeAdView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onError e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/xiaomi/ad/NativeAdView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/NativeAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postAdEvent  event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdEvent;->valueOf(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdEvent;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/xiaomi/ad/NativeAdView;->postAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Lcom/xiaomi/ad/NativeAdView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEvent"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/ad/NativeAdView;->render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method

.method public render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->removeAllViews()V

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 51
    new-instance v0, Lcom/xiaomi/ad/AdViewCreator;

    invoke-virtual {p0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/NativeAdView;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    if-nez p1, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ad/AdViewCreator;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;Ljava/lang/String;Lorg/json/JSONObject;I)V

    new-instance v1, Lcom/xiaomi/ad/NativeAdView$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/ad/NativeAdView$1;-><init>(Lcom/xiaomi/ad/NativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/AdViewCreator;->setListener(Lcom/xiaomi/ad/AdViewCreator$Listener;)Lcom/xiaomi/ad/AdViewCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/AdViewCreator;->load()V

    .line 71
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->serialize()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setAdListener(Lcom/xiaomi/ad/AdListener;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAdView;->mAdListener:Lcom/xiaomi/ad/AdListener;

    .line 38
    return-void
.end method
