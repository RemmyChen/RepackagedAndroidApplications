.class public Lcom/xiaomi/ad/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Lcom/xiaomi/ad/common/EventCallback;


# static fields
.field private static final KEY_AD_INFO:Ljava/lang/String; = "adInfo"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "AdActivity"


# instance fields
.field private mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "adInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->valueOf(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/AdActivity;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/AdActivity;->mType:I

    .line 50
    invoke-static {p0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    const-class v1, Lcom/xiaomi/ad/common/pojo/AdEvent;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 51
    invoke-static {p0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/AdActivity;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    iget v2, p0, Lcom/xiaomi/ad/AdActivity;->mType:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/ad/internal/a/d;->a(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;ILorg/json/JSONObject;I)Landroid/view/View;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/ad/AdActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/AdActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initTheme()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/AdActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-direct {p0}, Lcom/xiaomi/ad/AdActivity;->setSwitchAnimation()V

    .line 45
    return-void
.end method

.method private setSwitchAnimation()V
    .locals 2

    .prologue
    .line 39
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/ad/AdActivity;->overridePendingTransition(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 81
    invoke-direct {p0}, Lcom/xiaomi/ad/AdActivity;->setSwitchAnimation()V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/AdActivity;->setRequestedOrientation(I)V

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/ad/AdActivity;->initTheme()V

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/ad/AdActivity;->initData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "AdActivity"

    const-string/jumbo v2, "onCreate e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    invoke-static {p0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onError(I)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdEvent;->valueOf(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdEvent;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "AdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postAdEvent  event is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdEvent;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v0, v0, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/ad/AdActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "AdActivity"

    const-string/jumbo v2, "onEvent"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
