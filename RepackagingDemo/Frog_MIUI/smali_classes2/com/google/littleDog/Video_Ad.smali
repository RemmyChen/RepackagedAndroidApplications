.class public Lcom/google/littleDog/Video_Ad;
.super Ljava/lang/Object;
.source "Video_Ad.java"

# interfaces
.implements Lcom/uniplay/adsdk/VideoAdListener;


# static fields
.field private static final LOAD_VIDEO:I = 0x1

.field private static final SHOW_VIDEO:I

.field public static isVideoReady:Z

.field private static mContext:Landroid/content/Context;

.field public static mHandler:Landroid/os/Handler;

.field private static videoAd:Lcom/uniplay/adsdk/VideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/littleDog/Video_Ad;->isVideoReady:Z

    .line 28
    new-instance v0, Lcom/google/littleDog/Video_Ad$1;

    invoke-direct {v0}, Lcom/google/littleDog/Video_Ad$1;-><init>()V

    sput-object v0, Lcom/google/littleDog/Video_Ad;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sput-object p0, Lcom/google/littleDog/Video_Ad;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/uniplay/adsdk/AdView;

    sget-object v1, Lcom/google/littleDog/Video_Ad;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/utils/XmParms;->VIDEO_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/uniplay/adsdk/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .local v0, "adView":Lcom/uniplay/adsdk/AdView;
    invoke-static {}, Lcom/uniplay/adsdk/VideoAd;->getInstance()Lcom/uniplay/adsdk/VideoAd;

    move-result-object v1

    sget-object v2, Lcom/google/littleDog/Video_Ad;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/utils/XmParms;->VIDEO_ID:Ljava/lang/String;

    new-instance v4, Lcom/google/littleDog/Video_Ad;

    invoke-direct {v4}, Lcom/google/littleDog/Video_Ad;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/uniplay/adsdk/VideoAd;->init(Landroid/content/Context;Ljava/lang/String;Lcom/uniplay/adsdk/VideoAdListener;)Lcom/uniplay/adsdk/VideoAd;

    move-result-object v1

    sput-object v1, Lcom/google/littleDog/Video_Ad;->videoAd:Lcom/uniplay/adsdk/VideoAd;

    .line 49
    invoke-static {}, Lcom/google/littleDog/Video_Ad;->loadAd()V

    .line 50
    return-void
.end method

.method public static loadAd()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "loadAd video() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/google/littleDog/Video_Ad;->videoAd:Lcom/uniplay/adsdk/VideoAd;

    invoke-virtual {v0}, Lcom/uniplay/adsdk/VideoAd;->loadVideoAd()V

    .line 82
    return-void
.end method

.method public static postLoadAdDelay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "postLoadAdDelay() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    return-void
.end method

.method public static postShwoVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "postShwoVideo() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public static show_video()V
    .locals 3

    .prologue
    .line 53
    sget-boolean v0, Lcom/google/littleDog/Video_Ad;->isVideoReady:Z

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "playVideoAd() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/google/littleDog/Video_Ad;->videoAd:Lcom/uniplay/adsdk/VideoAd;

    invoke-virtual {v0}, Lcom/uniplay/adsdk/VideoAd;->playVideoAd()V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "video ad is not ready !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/google/littleDog/Video_Ad;->loadAd()V

    .line 60
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u5e7f\u544a\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e\u518d\u8bd5...."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onVideoAdClose()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVideoAdClose"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onVideoAdComplete()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVideoAdComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/google/littleDog/Video_Ad;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ad_video_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onVideoAdFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Lcom/google/littleDog/Video_Ad;->postLoadAdDelay()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoAdFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public onVideoAdProgress(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVideoAdProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onVideoAdReady()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/littleDog/Video_Ad;->isVideoReady:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVideoAdReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onVideoAdStart()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xyz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onVideoAdStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method
