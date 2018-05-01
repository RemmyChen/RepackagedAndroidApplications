.class Lcom/google/littleDog/SplashActivity$2;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/littleDog/SplashActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/littleDog/SplashActivity;


# direct methods
.method constructor <init>(Lcom/google/littleDog/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/littleDog/SplashActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-static {v2}, Lcom/google/utils/MiUtils;->copy_data(Landroid/content/Context;)V

    .line 298
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v2, v2, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/littleDog/SplashActivity;->access$202(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 300
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 301
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v2, v2, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-static {v2, v4}, Lcom/google/littleDog/SplashActivity;->access$202(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 305
    iget-object v2, p0, Lcom/google/littleDog/SplashActivity$2;->this$0:Lcom/google/littleDog/SplashActivity;

    iget-object v2, v2, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
