.class Lcom/google/littleDog/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/littleDog/SplashActivity;
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
    .line 57
    iput-object p1, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-static {v0, v2}, Lcom/google/littleDog/SplashActivity;->access$002(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 64
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    invoke-static {v0, v2}, Lcom/google/littleDog/SplashActivity;->access$002(Lcom/google/littleDog/SplashActivity;Z)Z

    .line 107
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    .line 112
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "onSplashAdFailed"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "onSplashAdDismiss"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "isAdSkip ads"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "copyData"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "Copy Error"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_7
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$1;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "AD CLICK"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
