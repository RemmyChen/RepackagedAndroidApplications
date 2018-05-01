.class public Lcom/unity3d/ads/adunit/AdUnitActivity;
.super Landroid/app/Activity;
.source "AdUnitActivity.java"


# static fields
.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final EXTRA_KEEP_SCREEN_ON:Ljava/lang/String; = "keepScreenOn"

.field public static final EXTRA_KEY_EVENT_LIST:Ljava/lang/String; = "keyEvents"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "systemUiVisibility"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "views"


# instance fields
.field private _activityId:I

.field _keepScreenOn:Z

.field private _keyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected _layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

.field private _orientation:I

.field private _systemUiVisibility:I

.field private _videoContainer:Landroid/widget/RelativeLayout;

.field private _views:[Ljava/lang/String;

.field private _webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    return-void
.end method

.method private createVideoPlayer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 444
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 445
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 448
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 449
    new-instance v1, Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/video/VideoPlayerView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    .line 450
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 451
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 452
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 455
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createWebPlayer()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-static {}, Lcom/unity3d/ads/api/WebPlayer;->getWebSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/api/WebPlayer;->getWebPlayerSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    .line 429
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-static {}, Lcom/unity3d/ads/api/WebPlayer;->getWebPlayerEventSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->setEventSettings(Lorg/json/JSONObject;)V

    .line 431
    :cond_0
    return-void
.end method

.method private destroyVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 460
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopPlayback()V

    .line 461
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 464
    :cond_0
    invoke-static {v1}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    .line 466
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 468
    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 470
    :cond_1
    return-void
.end method

.method private destroyWebPlayer()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 438
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    .line 439
    return-void
.end method

.method private handleViewPlacement(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 357
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 361
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, p1, v0}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected createLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 415
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    .line 420
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/unity3d/ads/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getLayout()Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    return-object v0
.end method

.method public getViewFrame(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "view"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "targetView":Landroid/view/View;
    const-string v3, "adunit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v3}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "x"

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v3, "y"

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v3, "width"

    iget-object v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v4}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v3, "height"

    iget-object v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v4}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 272
    :cond_0
    const-string v3, "videoplayer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 279
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 280
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "x"

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "y"

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v3, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v3, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v3, "webview"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v2

    goto :goto_1

    .line 289
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViews()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onCreate"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    .line 64
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createLayout()V

    .line 66
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-static {v1}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    if-nez p1, :cond_5

    .line 72
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "views"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keyEvents"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "systemUiVisibility"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "systemUiVisibility"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activityId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activityId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    .line 84
    :cond_3
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 96
    .local v0, "event":Lcom/unity3d/ads/adunit/AdUnitEvent;
    :goto_1
    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setOrientation(I)V

    .line 97
    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    .line 99
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "videoplayer"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    .line 103
    :cond_4
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    .end local v0    # "event":Lcom/unity3d/ads/adunit/AdUnitEvent;
    :cond_5
    const-string v1, "views"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 87
    const-string v1, "orientation"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 88
    const-string v1, "systemUiVisibility"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 89
    const-string v1, "keyEvents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 90
    const-string v1, "keepScreenOn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 91
    const-string v1, "activityId"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    .line 92
    iget-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    .line 93
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .restart local v0    # "event":Lcom/unity3d/ads/adunit/AdUnitEvent;
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onDestroy"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getCurrentAdUnitActivityId()I

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    if-ne v0, v1, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 217
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onPause"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    .line 174
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onResume"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string v0, "orientation"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v0, "systemUiVisibility"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v0, "keyEvents"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 184
    const-string v0, "keepScreenOn"

    iget-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-string v0, "views"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    const-string v0, "activityId"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 114
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStart"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 129
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStop"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_FOCUS_GAINED:Lcom/unity3d/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 227
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 228
    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_FOCUS_LOST:Lcom/unity3d/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)Z
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 376
    iput-boolean p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 379
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 388
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public setKeyEventList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "keyevents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 410
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 371
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setRequestedOrientation(I)V

    .line 372
    return-void
.end method

.method public setSystemUiVisibility(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 392
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v1, 0x1

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error while setting SystemUIVisibility"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setViewFrame(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "targetView":Landroid/view/View;
    const-string v2, "adunit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 254
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 244
    :cond_2
    const-string v2, "videoplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 247
    :cond_3
    const-string v2, "webview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_4
    const-string v2, "webplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    goto :goto_0
.end method

.method public setViews([Ljava/lang/String;)V
    .locals 8
    .param p1, "views"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 295
    if-nez p1, :cond_2

    .line 296
    new-array v0, v4, [Ljava/lang/String;

    .line 300
    .local v0, "actualViews":[Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    .local v1, "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 303
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 306
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    .local v2, "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, "view":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    goto :goto_1

    .line 298
    .end local v0    # "actualViews":[Ljava/lang/String;
    .end local v1    # "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "view":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .restart local v0    # "actualViews":[Ljava/lang/String;
    goto :goto_0

    .line 310
    .restart local v1    # "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "view":Ljava/lang/String;
    :sswitch_0
    const-string v7, "videoplayer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v4

    goto :goto_2

    :sswitch_1
    const-string v7, "webview"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v7, "webplayer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    .line 315
    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    goto :goto_1

    .line 318
    :pswitch_2
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyWebPlayer()V

    goto :goto_1

    .line 324
    .end local v3    # "view":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 326
    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_9

    aget-object v3, v0, v4

    .line 327
    .restart local v3    # "view":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 326
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 330
    :cond_5
    const-string v6, "videoplayer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 331
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    .line 332
    iget-object v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_4

    .line 334
    :cond_6
    const-string v6, "webview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 335
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 336
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_4

    .line 340
    :cond_7
    const-string v4, "WebApp IS NULL!"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 341
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 344
    :cond_8
    const-string v6, "webplayer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createWebPlayer()V

    .line 346
    iget-object v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_webPlayer:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-direct {p0, v6}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_4

    .line 349
    .end local v3    # "view":Ljava/lang/String;
    :cond_9
    return-void

    .line 310
    :sswitch_data_0
    .sparse-switch
        -0x12f868cb -> :sswitch_2
        0x48fb3bf9 -> :sswitch_1
        0x6f2e271c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
