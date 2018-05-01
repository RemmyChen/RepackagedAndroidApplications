.class Lcom/google/littleDog/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/xiaomi/ad/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/littleDog/SplashActivity;->showSplash(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/littleDog/SplashActivity;

.field final synthetic val$flayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/littleDog/SplashActivity;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/littleDog/SplashActivity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    iput-object p2, p0, Lcom/google/littleDog/SplashActivity$3;->val$flayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->val$flayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 370
    const-string/jumbo v0, "SplashActivity_xyz"

    const-string/jumbo v1, "onAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/littleDog/SplashActivity;->access$302(Z)Z

    .line 372
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "ad_splash_click"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_splash_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v0, v0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/littleDog/SplashActivity$3$1;

    invoke-direct {v1, p0}, Lcom/google/littleDog/SplashActivity$3$1;-><init>(Lcom/google/littleDog/SplashActivity$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    return-void
.end method

.method public onAdDismissed()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "ad_splash_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_splash_close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v0, "SplashActivity_xyz"

    const-string/jumbo v1, "onAdDismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/google/littleDog/SplashActivity;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v0, v0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v0, v0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 399
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-static {v0, v3}, Lcom/google/littleDog/SplashActivity;->access$002(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 400
    const-string/jumbo v0, "SplashActivity_xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdFailed, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "ad_splash_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_splash_error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v0, v0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    return-void
.end method

.method public onAdPresent()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$002(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 357
    const-string/jumbo v0, "SplashActivity_xyz"

    const-string/jumbo v1, "onAdPresent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "ad_splash_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_splash_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    return-void
.end method
