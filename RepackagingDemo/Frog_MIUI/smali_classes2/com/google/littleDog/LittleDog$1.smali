.class final Lcom/google/littleDog/LittleDog$1;
.super Landroid/os/Handler;
.source "LittleDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/littleDog/LittleDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 78
    :pswitch_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 79
    .local v1, "what":I
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    packed-switch v1, :pswitch_data_1

    .line 95
    :goto_1
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "be called"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "what":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "what":I
    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "xyz"

    const-string/jumbo v3, "0000000000000000000000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :pswitch_2
    const-string/jumbo v2, "xyz"

    const-string/jumbo v3, "11111111111111111111111"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    :pswitch_3
    const-string/jumbo v2, "xyz"

    const-string/jumbo v3, "2222222222222222222222222"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :pswitch_4
    const-string/jumbo v2, "xyz"

    const-string/jumbo v3, "33333333333333333333333333"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25,\u8bf710\u79d2\u540e\u518d\u8bd5...."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "what":I
    :pswitch_5
    :try_start_2
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "be called"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25,\u8bf710\u79d2\u540e\u518d\u8bd5...."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 122
    :pswitch_6
    invoke-static {}, Lcom/google/littleDog/LittleDog;->setVisibleBanner()V

    goto/16 :goto_0

    .line 128
    :pswitch_7
    invoke-static {v3}, Lcom/google/littleDog/LittleDog;->controlCloseButton(Z)V

    .line 129
    invoke-static {}, Lcom/google/littleDog/LittleDog;->access$100()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/littleDog/LittleDog;->showBanner(Landroid/app/Activity;)V

    .line 130
    const-string/jumbo v2, "xyz"

    const-string/jumbo v3, "SHOW_BANNER : handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    :pswitch_8
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    sget-object v2, Lcom/google/littleDog/LittleDog;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 145
    :pswitch_9
    invoke-static {}, Lcom/google/littleDog/LittleDog;->show_ad()V

    goto/16 :goto_0

    .line 148
    :pswitch_a
    invoke-static {}, Lcom/google/littleDog/LittleDog;->initAndRequestInterAd()V

    goto/16 :goto_0

    .line 151
    :pswitch_b
    invoke-static {}, Lcom/google/littleDog/LittleDog;->hideBanner()V

    goto/16 :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_0
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
