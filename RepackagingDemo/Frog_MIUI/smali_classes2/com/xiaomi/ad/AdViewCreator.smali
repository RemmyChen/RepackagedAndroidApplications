.class public Lcom/xiaomi/ad/AdViewCreator;
.super Ljava/lang/Object;
.source "AdViewCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/AdViewCreator$Listener;
    }
.end annotation


# static fields
.field private static final MAX_TIMEOUT:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "AdViewCreator"


# instance fields
.field private mAd:Ljava/lang/String;

.field private mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

.field private mContext:Landroid/content/Context;

.field private mExtra:Lorg/json/JSONObject;

.field private mListener:Lcom/xiaomi/ad/AdViewCreator$Listener;

.field private mUIHandler:Landroid/os/Handler;

.field private mViewHashId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/xiaomi/ad/AdViewCreator;->mAd:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/ad/AdViewCreator;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 32
    iput-object p4, p0, Lcom/xiaomi/ad/AdViewCreator;->mExtra:Lorg/json/JSONObject;

    .line 33
    iput p5, p0, Lcom/xiaomi/ad/AdViewCreator;->mViewHashId:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mUIHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/ad/AdViewCreator;)Lcom/xiaomi/ad/AdViewCreator$Listener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mListener:Lcom/xiaomi/ad/AdViewCreator$Listener;

    return-object v0
.end method

.method private checkAvailability(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/xiaomi/ad/AdViewCreator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/ad/internal/a/d;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const-string/jumbo v0, "AdViewCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    .line 101
    :goto_1
    return v0

    .line 95
    :cond_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "AdViewCreator"

    const-string/jumbo v2, "checkAvailability e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_1
    const-string/jumbo v0, "AdViewCreator"

    const-string/jumbo v1, "time out!"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private postError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/AdViewCreator$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/AdViewCreator$2;-><init>(Lcom/xiaomi/ad/AdViewCreator;Lcom/xiaomi/ad/common/pojo/AdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method private postView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/AdViewCreator$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/AdViewCreator$1;-><init>(Lcom/xiaomi/ad/AdViewCreator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public load()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v1, "AdViewCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/AdViewCreator;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v3}, Lcom/xiaomi/ad/common/pojo/AdType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/AdViewCreator;->mAd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/xiaomi/ad/AdViewCreator;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    iget-object v2, p0, Lcom/xiaomi/ad/AdViewCreator;->mAd:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/ad/AdViewCreator;->mExtra:Lorg/json/JSONObject;

    iget v4, p0, Lcom/xiaomi/ad/AdViewCreator;->mViewHashId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/ad/internal/a/d;->a(Lcom/xiaomi/ad/common/pojo/AdType;Ljava/lang/String;Lorg/json/JSONObject;I)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "AdViewCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/AdViewCreator;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v3}, Lcom/xiaomi/ad/common/pojo/AdType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/AdViewCreator;->checkAvailability(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, v0}, Lcom/xiaomi/ad/AdViewCreator;->postView(Landroid/view/View;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/AdViewCreator;->postError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/AdViewCreator;->postError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    goto :goto_0
.end method

.method public setListener(Lcom/xiaomi/ad/AdViewCreator$Listener;)Lcom/xiaomi/ad/AdViewCreator;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xiaomi/ad/AdViewCreator;->mListener:Lcom/xiaomi/ad/AdViewCreator$Listener;

    .line 106
    return-object p0
.end method
