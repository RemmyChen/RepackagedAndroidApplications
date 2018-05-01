.class public Lcom/google/unity/ads/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mHidden:Z

.field private mHorizontalOffset:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPositionCode:I

.field private mUnityListener:Lcom/google/unity/ads/UnityAdListener;

.field private mUnityPlayerActivity:Landroid/app/Activity;

.field private mVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityAdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/google/unity/ads/UnityAdListener;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 103
    iput-object p2, p0, Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/unity/ads/Banner;->createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->createPopupWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/unity/ads/Banner;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/unity/ads/Banner;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/unity/ads/Banner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/unity/ads/Banner;->mHidden:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/unity/ads/Banner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/unity/ads/Banner;->mHidden:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/unity/ads/Banner;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->showPopUpWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->updatePosition()V

    return-void
.end method

.method private createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 153
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 154
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 156
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/unity/ads/Banner$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 196
    new-instance v0, Lcom/google/unity/ads/Banner$4;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Banner$4;-><init>(Lcom/google/unity/ads/Banner;)V

    iput-object v0, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 205
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 207
    return-void
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    .line 212
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, -0x1

    .line 215
    .local v1, "popUpWindowWidth":I
    :goto_0
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 216
    .local v0, "popUpWindowHeight":I
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {v3, v4, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 219
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 220
    .local v2, "visibilityFlags":I
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/google/unity/ads/PluginUtils;->setPopUpWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 226
    return-void

    .line 212
    .end local v0    # "popUpWindowHeight":I
    .end local v1    # "popUpWindowWidth":I
    .end local v2    # "visibilityFlags":I
    :cond_0
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method private getPositionInPixels(Landroid/view/View;)Landroid/graphics/Point;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 422
    iget v4, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 423
    iget v4, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v4

    float-to-int v2, v4

    .line 424
    .local v2, "x":I
    iget v4, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 425
    .local v3, "y":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 434
    :goto_0
    return-object v4

    .line 427
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    iget-object v5, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 428
    .local v1, "adViewWidth":I
    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    iget-object v5, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 430
    .local v0, "adViewHeight":I
    iget v4, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 430
    invoke-static {v4, v1, v5}, Lcom/google/unity/ads/PluginUtils;->getHorizontalOffsetForPositionCode(III)I

    move-result v2

    .line 432
    .restart local v2    # "x":I
    iget v4, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 432
    invoke-static {v4, v0, v5}, Lcom/google/unity/ads/PluginUtils;->getVerticalOffsetForPositionCode(III)I

    move-result v3

    .line 434
    .restart local v3    # "y":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private showPopUpWindow()V
    .locals 5

    .prologue
    .line 229
    iget-object v2, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "anchorView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/unity/ads/Banner;->getPositionInPixels(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 234
    .local v1, "location":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 235
    return-void
.end method

.method private updatePosition()V
    .locals 7

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 403
    .local v1, "anchorView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/google/unity/ads/Banner;->getPositionInPixels(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v6

    .line 404
    .local v6, "location":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 407
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 408
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    .line 404
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 410
    .end local v1    # "anchorView":Landroid/view/View;
    .end local v6    # "location":Landroid/graphics/Point;
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionCode"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/Banner$1;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V
    .locals 7
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    .line 137
    iget-object v6, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/Banner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/unity/ads/Banner$2;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$8;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$8;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 308
    return-void
.end method

.method public getHeightInPixels()F
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 316
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/Banner$9;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/Banner$9;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 322
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    const/high16 v1, -0x40800000    # -1.0f

    .line 326
    .local v1, "result":F
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    int-to-float v1, v3

    .line 334
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "AdsUnity"

    const-string v4, "Failed to get ad view height: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 329
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "AdsUnity"

    const-string v4, "Failed to get ad view height: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidthInPixels()F
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 343
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/Banner$10;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/Banner$10;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 349
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    const/high16 v1, -0x40800000    # -1.0f

    .line 353
    .local v1, "result":F
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    int-to-float v1, v3

    .line 361
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "AdsUnity"

    const-string v4, "Failed to get ad view width: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 356
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "AdsUnity"

    const-string v4, "Failed to get ad view width: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 359
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$7;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$7;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/ads/AdRequest;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$5;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$5;-><init>(Lcom/google/unity/ads/Banner;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "positionCode"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$11;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$11;-><init>(Lcom/google/unity/ads/Banner;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/Banner$12;-><init>(Lcom/google/unity/ads/Banner;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$6;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$6;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method
