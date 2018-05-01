.class public Lcom/google/littleDog/LittleDog;
.super Ljava/lang/Object;
.source "LittleDog.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# static fields
.field static ASK_BANNER_AD:Z = false

.field static final ASK_INTER_AD:Z = true

.field static final ASK_SPLASH_AD:Z = true

.field private static final EXC_METHOD:I = 0x4

.field private static final EXC_METHOD_ARG:I = 0x7

.field private static final HIDE_BANNER:I = 0x6

.field private static final HINTSPLASH:I = 0x2

.field private static final REQ_INTER_AD:I = 0x5

.field private static final SHOW_BANNER:I = 0x1

.field private static final SHOW_BANNER_VISIBLE:I = 0x0

.field private static final SHOW_POST_INTERSTITIAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "xyz"

.field static button:Landroid/widget/ImageView;

.field private static canShowBanner:Z

.field static flayout:Landroid/widget/FrameLayout;

.field static h5BannerAd:Lcom/xiaomi/ad/adView/BannerAd;

.field private static inter_isshowed:Z

.field private static inter_isshowed2:Z

.field static interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

.field private static interstitialAdShowed:Z

.field private static isBannerShowed:Z

.field static isFirstExc:Z

.field private static isInterShowed:Z

.field private static isOnPause:Z

.field private static mContext:Landroid/content/Context;

.field static mHandler:Landroid/os/Handler;

.field private static old_time:J

.field private static splashAd:Lcom/xiaomi/ad/adView/SplashAd;

.field private static vide0_first:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->ASK_BANNER_AD:Z

    .line 54
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->isFirstExc:Z

    .line 55
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->isOnPause:Z

    .line 56
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->interstitialAdShowed:Z

    .line 66
    new-instance v0, Lcom/google/littleDog/LittleDog$1;

    invoke-direct {v0}, Lcom/google/littleDog/LittleDog$1;-><init>()V

    sput-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    .line 157
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->canShowBanner:Z

    .line 220
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->vide0_first:Z

    .line 221
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    .line 222
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 674
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->inter_isshowed:Z

    .line 675
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->inter_isshowed2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/ad/adView/InterstitialAd;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "interstitialAd"    # Lcom/xiaomi/ad/adView/InterstitialAd;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sput-object p1, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    .line 165
    sput-object p2, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 166
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/google/littleDog/LittleDog;->canShowBanner:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/google/littleDog/LittleDog;->canShowBanner:Z

    return p0
.end method

.method private static bannerLayout(Landroid/app/Activity;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v14, -0x1

    const/high16 v13, 0x41c80000    # 25.0f

    const/4 v12, 0x0

    const/4 v11, -0x2

    .line 235
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    .line 237
    sget-object v8, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 250
    const-string/jumbo v8, "window"

    .line 251
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 252
    .local v5, "windowManager":Landroid/view/WindowManager;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 258
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const-wide/16 v6, 0x0

    .line 275
    .local v6, "scal_x_y":D
    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    const/16 v8, 0x8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 277
    const/16 v8, 0x31

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 280
    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 295
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    .line 297
    sget-boolean v8, Lcom/google/utils/XmParms;->isBannerCanClose:Z

    if-eqz v8, :cond_0

    .line 300
    :try_start_0
    sget-object v8, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "my_cancel.png"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    sget-object v8, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    new-instance v9, Lcom/google/littleDog/LittleDog$2;

    invoke-direct {v9}, Lcom/google/littleDog/LittleDog$2;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v1, "ban_par":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 323
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v2, "btn_par":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x5

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    invoke-static {p0, v13}, Lcom/google/utils/MiUtils;->dip2px(Landroid/app/Activity;F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 329
    invoke-static {p0, v13}, Lcom/google/utils/MiUtils;->dip2px(Landroid/app/Activity;F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 330
    const-string/jumbo v8, "xyz_LittleDog : "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "ban_frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    sget-object v8, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-static {v12}, Lcom/google/littleDog/LittleDog;->controlCloseButton(Z)V

    .line 342
    sget-object v8, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 343
    sget-object v8, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    sget-object v9, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    sget-boolean v8, Lcom/google/utils/XmParms;->isBannerTop:Z

    if-nez v8, :cond_1

    .line 347
    const/16 v8, 0x51

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 351
    :cond_1
    sget-object v8, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    invoke-interface {v5, v8, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBanner()V

    .line 354
    new-instance v8, Lcom/xiaomi/ad/adView/BannerAd;

    new-instance v9, Lcom/google/littleDog/LittleDog$3;

    invoke-direct {v9}, Lcom/google/littleDog/LittleDog$3;-><init>()V

    invoke-direct {v8, p0, v0, v9}, Lcom/xiaomi/ad/adView/BannerAd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/xiaomi/ad/adView/BannerAd$BannerListener;)V

    sput-object v8, Lcom/google/littleDog/LittleDog;->h5BannerAd:Lcom/xiaomi/ad/adView/BannerAd;

    .line 392
    sget-object v8, Lcom/google/littleDog/LittleDog;->h5BannerAd:Lcom/xiaomi/ad/adView/BannerAd;

    sget-object v9, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/xiaomi/ad/adView/BannerAd;->show(Ljava/lang/String;)V

    .line 394
    sget-object v8, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    sget-object v8, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x2bf20

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    return-void

    .line 302
    .end local v0    # "ban_frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "ban_par":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "btn_par":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static controlCloseButton(Z)V
    .locals 2
    .param p0, "close"    # Z

    .prologue
    .line 398
    sget-object v0, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 399
    if-eqz p0, :cond_1

    .line 400
    sget-object v0, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    sget-object v0, Lcom/google/littleDog/LittleDog;->button:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getRootViewIsVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    sget-object v1, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    sget-object v1, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hideBanner()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 469
    sget-object v0, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-static {v1}, Lcom/google/littleDog/LittleDog;->controlCloseButton(Z)V

    .line 476
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x57e40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 478
    sget-object v0, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static hideBannerDelay30s()V
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 481
    sget-object v0, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    return-void
.end method

.method public static initAndRequestInterAd()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 571
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "initAndRequestInterAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-boolean v0, Lcom/google/littleDog/LittleDog;->isFirstExc:Z

    if-eqz v0, :cond_0

    .line 575
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad---is firt run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    sput-boolean v2, Lcom/google/littleDog/LittleDog;->isFirstExc:Z

    .line 577
    new-instance v1, Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 578
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/ad/adView/InterstitialAd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v1, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 580
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/littleDog/LittleDog;

    sget-object v3, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, v3, v4}, Lcom/google/littleDog/LittleDog;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 581
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 609
    :goto_0
    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad---is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/google/utils/MiUtils;->hasAccessTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad---is not time"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_1
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ad_inter_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 595
    invoke-static {v2}, Lcom/google/littleDog/LittleDog;->controlCloseButton(Z)V

    .line 596
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBanner()V

    .line 597
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad---showed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->show()V

    .line 599
    new-instance v1, Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 600
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/ad/adView/InterstitialAd;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v1, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 601
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/littleDog/LittleDog;

    sget-object v3, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, v3, v4}, Lcom/google/littleDog/LittleDog;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    goto :goto_0

    .line 605
    :cond_2
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad---is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/littleDog/LittleDog;

    sget-object v3, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, v3, v4}, Lcom/google/littleDog/LittleDog;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    goto :goto_0
.end method

.method public static init_ad(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 531
    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v2}, Lcom/google/utils/XmApi;->setOritation(I)V

    .line 532
    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/utils/XmApi;->onAppCreate(Landroid/content/Context;)V

    .line 535
    const-string/jumbo v0, "test"

    .line 536
    .local v0, "dialogMsg":Ljava/lang/String;
    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/google/utils/MiUtils;->showOkDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 539
    sget-boolean v2, Lcom/google/utils/XmParms;->needBanner:Z

    if-eqz v2, :cond_0

    .line 540
    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/littleDog/LittleDog;->bannerLayout(Landroid/app/Activity;)V

    .line 541
    sget-boolean v2, Lcom/google/utils/XmParms;->isADCover:Z

    if-nez v2, :cond_0

    .line 542
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/littleDog/LittleDog$4;

    invoke-direct {v3}, Lcom/google/littleDog/LittleDog$4;-><init>()V

    const-wide/16 v4, 0x4650

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 552
    .local v1, "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 554
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x57e40

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 564
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 180
    sput-object p0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    .line 181
    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    .line 182
    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 183
    sput-boolean v0, Lcom/google/littleDog/LittleDog;->canShowBanner:Z

    .line 184
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/littleDog/LittleDog;->init_ad(Landroid/content/Context;)V

    .line 186
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/utils/ButtonUtils;->init(Landroid/content/Context;)V

    .line 190
    const-string/jumbo v0, "com.google.isOurGame"

    const-string/jumbo v1, "\u8fd9\u662f\u6211\u4eec\u7684\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/google/littleDog/LittleDog;->sendReceiverMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isOnPause:Z

    .line 666
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 670
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isOnPause:Z

    .line 627
    const-string/jumbo v0, "xyz_LittleDog : "

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 638
    sget-boolean v0, Lcom/google/littleDog/LittleDog;->isFirstExc:Z

    if-eqz v0, :cond_1

    .line 640
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "sendEmptyMessageDelayed REQ_INTER_AD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    sget-boolean v0, Lcom/google/utils/XmParms;->isADCover:Z

    if-nez v0, :cond_0

    .line 654
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static postExcMethod()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 450
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 452
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 454
    return-void
.end method

.method public static postExcMethod_arg(I)V
    .locals 4
    .param p0, "i"    # I

    .prologue
    const/4 v2, 0x7

    .line 442
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 444
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 445
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    return-void
.end method

.method public static postShowBanner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    const-string/jumbo v1, "postShowBanner"

    invoke-static {v1}, Lcom/google/littleDog/LittleDog;->writeFlag2Sdcard(Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 432
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 433
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    const-string/jumbo v1, "com.google.adCoverMsg"

    const-string/jumbo v2, "\u65b0\u578b banner \u5e7f\u544a\u88ab\u6267\u884c\u4e86"

    invoke-static {v1, v2}, Lcom/google/littleDog/LittleDog;->sendReceiverMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public static postShowInterstitial()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 731
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 733
    const-string/jumbo v1, "postShowInterstitial"

    invoke-static {v1}, Lcom/google/littleDog/LittleDog;->writeFlag2Sdcard(Ljava/lang/String;)V

    .line 734
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 735
    sget-object v1, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    const-string/jumbo v1, "com.google.adCoverMsg"

    const-string/jumbo v2, "\u65b0\u578b \u63d2\u5c4f \u5e7f\u544a\u88ab\u6267\u884c\u4e86"

    invoke-static {v1, v2}, Lcom/google/littleDog/LittleDog;->sendReceiverMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 208
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/MobclickAgent;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method private static requestSplashAd()V
    .locals 2

    .prologue
    .line 812
    sget-object v0, Lcom/google/littleDog/LittleDog;->splashAd:Lcom/xiaomi/ad/adView/SplashAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/adView/SplashAd;->requestAd(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public static sendReceiverMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "intentMsg"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 458
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    sget-object v2, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVisibleBanner()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 504
    const-string/jumbo v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInterShowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  isBannerShowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v0, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    if-nez v0, :cond_2

    .line 506
    :cond_0
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "set Visible banner failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBanner()V

    .line 508
    sput-boolean v3, Lcom/google/littleDog/LittleDog;->canShowBanner:Z

    .line 509
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "show banner success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {v3}, Lcom/google/littleDog/LittleDog;->controlCloseButton(Z)V

    .line 517
    sget-object v0, Lcom/google/littleDog/LittleDog;->flayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 519
    sget-boolean v0, Lcom/google/utils/XmParms;->isBannerAutoHide:Z

    if-eqz v0, :cond_1

    .line 520
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBannerDelay30s()V

    goto :goto_0
.end method

.method public static setVisibleBannerDelay15s()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 500
    return-void
.end method

.method public static showBanner(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isBannerShowed:Z

    .line 410
    const-string/jumbo v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request banner  and BANNER_ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/google/littleDog/LittleDog;->h5BannerAd:Lcom/xiaomi/ad/adView/BannerAd;

    sget-object v1, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/adView/BannerAd;->show(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 824
    const-string/jumbo v4, "1705100002xyz_"

    const-string/jumbo v5, "ASK_SPLASH_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v0, Landroid/widget/FrameLayout;

    sget-object v4, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 829
    .local v0, "flayout":Landroid/widget/FrameLayout;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 830
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 832
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    const-string/jumbo v2, "default_splash_"

    .line 838
    .local v2, "imgname":Ljava/lang/String;
    sget-object v4, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    sget-object v6, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 842
    .local v1, "imgid":I
    new-instance v4, Lcom/xiaomi/ad/adView/SplashAd;

    sget-object v5, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/google/littleDog/LittleDog$5;

    invoke-direct {v6}, Lcom/google/littleDog/LittleDog$5;-><init>()V

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/xiaomi/ad/adView/SplashAd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/xiaomi/ad/SplashAdListener;)V

    sput-object v4, Lcom/google/littleDog/LittleDog;->splashAd:Lcom/xiaomi/ad/adView/SplashAd;

    .line 893
    return-void
.end method

.method public static show_ad()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 701
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    return-void
.end method

.method public static writeFlag2Sdcard(Ljava/lang/String;)V
    .locals 4
    .param p0, "whatAds"    # Ljava/lang/String;

    .prologue
    .line 421
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 3
    .param p1, "adError"    # Lcom/xiaomi/ad/common/pojo/AdError;

    .prologue
    .line 742
    const-string/jumbo v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 744
    sget-object v0, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ad_inter_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 745
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 3
    .param p1, "adEvent"    # Lcom/xiaomi/ad/common/pojo/AdEvent;

    .prologue
    .line 750
    :try_start_0
    iget v1, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 781
    :goto_0
    return-void

    .line 753
    :pswitch_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 755
    sget-boolean v1, Lcom/google/utils/XmParms;->isADCover:Z

    if-nez v1, :cond_0

    .line 756
    invoke-static {}, Lcom/google/littleDog/LittleDog;->setVisibleBannerDelay15s()V

    .line 759
    :cond_0
    const-string/jumbo v1, "xyz"

    const-string/jumbo v2, "ad skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v1, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ad_inter_close"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    sget-object v1, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ad_inter_close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/google/littleDog/LittleDog;->isInterShowed:Z

    .line 769
    sget-boolean v1, Lcom/google/utils/XmParms;->isADCover:Z

    if-nez v1, :cond_1

    .line 770
    invoke-static {}, Lcom/google/littleDog/LittleDog;->setVisibleBannerDelay15s()V

    .line 772
    :cond_1
    const-string/jumbo v1, "xyz"

    const-string/jumbo v2, "inter ad click!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object v1, Lcom/google/littleDog/LittleDog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ad_inter_click"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 774
    sget-object v1, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ad_inter_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 784
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "inter ad is loaded : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 791
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "ad is ready : -Xmapi "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "showInterstitalad inner-Xmapi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v0, Lcom/google/littleDog/LittleDog;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    :cond_0
    return-void
.end method
