.class final Lcom/google/littleDog/LittleDog$3;
.super Ljava/lang/Object;
.source "LittleDog.java"

# interfaces
.implements Lcom/xiaomi/ad/adView/BannerAd$BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/littleDog/LittleDog;->bannerLayout(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 4
    .param p1, "adEvent"    # Lcom/xiaomi/ad/common/pojo/AdEvent;

    .prologue
    const/4 v3, 0x1

    .line 359
    const-string/jumbo v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "banner onAdEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-ne v0, v3, :cond_1

    .line 361
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "ad has been clicked!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBanner()V

    .line 363
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ad_banner_click"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 365
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "x button has been clicked!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_2
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    .line 367
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "banner has load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_3
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    if-nez v0, :cond_4

    .line 369
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "ad has been showed!,\u8fd9\u4e2a\u662f\u8f6e\u64ad\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v3}, Lcom/google/littleDog/LittleDog;->access$202(Z)Z

    .line 372
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ad_banner_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/littleDog/LittleDog;->access$302(Z)Z

    .line 375
    invoke-static {}, Lcom/google/littleDog/LittleDog;->setVisibleBanner()V

    goto :goto_0

    .line 378
    :cond_4
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 379
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "AdEvent.TYPE_INTERRUPT : 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_5
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 381
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "AdEvent.TYPE_LOAD_FAIL : 12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_6
    iget v0, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    .line 383
    const-string/jumbo v0, "xyz"

    const-string/jumbo v1, "AdEvent.TYPE_APP_LAUNCH_FAIL : 17"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_7
    const-string/jumbo v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
