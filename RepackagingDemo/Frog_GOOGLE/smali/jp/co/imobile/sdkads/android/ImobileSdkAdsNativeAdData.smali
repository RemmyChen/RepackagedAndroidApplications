.class public Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljp/co/imobile/sdkads/android/i;

.field private h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

.field private i:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field private j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljp/co/imobile/sdkads/android/i;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;)V
    .locals 2
    .param p1, "valueJsonObject"    # Lorg/json/JSONObject;
    .param p2, "adWebView"    # Ljp/co/imobile/sdkads/android/i;
    .param p3, "nativeAdParams"    # Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->c:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->i:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    const-string v0, "title"

    invoke-static {p1, v0}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a:Ljava/lang/String;

    const-string v0, "description"

    invoke-static {p1, v0}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b:Ljava/lang/String;

    const-string v0, "sponsored"

    invoke-static {p1, v0}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->c:Ljava/lang/String;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e:Ljava/lang/String;

    const-string v0, "advertisementId"

    invoke-static {p1, v0}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f:Ljava/lang/String;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-virtual {p3}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private b()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljp/co/imobile/sdkads/android/af;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/af;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp/co/imobile/sdkads/android/ag;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/ag;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic b(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/i;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    return-object v0
.end method

.method static synthetic c(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->i:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-object v0
.end method

.method static synthetic e(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-object v0
.end method

.method static synthetic g(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-object v0
.end method


# virtual methods
.method final a()Ljp/co/imobile/sdkads/android/i;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g:Ljp/co/imobile/sdkads/android/i;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/i;->b()V

    :cond_0
    return-void
.end method

.method public getAdImage()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "NativeData."

    const-string v1, "Native ad image is null. Please check \'Native ad image load flag\' is \'true\'."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAdImage(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onNativeAdImageReciveCompleted(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljp/co/imobile/sdkads/android/y;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/imobile/sdkads/android/y;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->i:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getAdImage(Landroid/os/Handler;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onNativeAdImageReciveCompleted(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljp/co/imobile/sdkads/android/aa;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/imobile/sdkads/android/aa;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/os/Handler;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->i:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->j:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getClickEvent()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ljp/co/imobile/sdkads/android/ae;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/ae;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setClickEvent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    new-instance v0, Ljp/co/imobile/sdkads/android/ac;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/ac;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClickEvent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    new-instance v0, Ljp/co/imobile/sdkads/android/ad;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/ad;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
