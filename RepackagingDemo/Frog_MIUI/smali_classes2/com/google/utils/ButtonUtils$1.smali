.class final Lcom/google/utils/ButtonUtils$1;
.super Landroid/os/Handler;
.source "ButtonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/utils/ButtonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/utils/ButtonUtils;->countDown(IZ)I

    goto :goto_0

    .line 54
    :pswitch_1
    const-string/jumbo v0, "\u8981\u6267\u884c\u7684\u65b9\u6cd5"

    .line 55
    .local v0, "aa":Ljava/lang/String;
    invoke-static {}, Lcom/google/littleDog/LittleDog;->postShowInterstitial()V

    .line 56
    invoke-static {}, Lcom/google/littleDog/LittleDog;->postExcMethod()V

    .line 57
    const-string/jumbo v1, "myInject"

    const-string/jumbo v2, "recoverHealth"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/utils/MiUtils;->sendMsg2Unity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "recoverHealth"

    invoke-static {v1}, Lcom/google/utils/ButtonUtils;->showLog(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "aa":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/google/utils/ButtonUtils;->selDialog()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
