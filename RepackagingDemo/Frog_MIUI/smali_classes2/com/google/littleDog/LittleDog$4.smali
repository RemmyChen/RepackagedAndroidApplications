.class final Lcom/google/littleDog/LittleDog$4;
.super Ljava/lang/Object;
.source "LittleDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/littleDog/LittleDog;->init_ad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 545
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/littleDog/LittleDog;->showBanner(Landroid/app/Activity;)V

    .line 546
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    sget-object v0, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    invoke-static {}, Lcom/google/littleDog/LittleDog;->setVisibleBanner()V

    .line 549
    return-void
.end method
