.class final Lcom/google/utils/MiUtils$1;
.super Landroid/os/Handler;
.source "MiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/utils/MiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 60
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 61
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "\u89e3\u538b\u6570\u636e\u4e2d...."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 63
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 64
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 74
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "\u89e3\u538b\u6570\u636e\u4e2d...."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 77
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 78
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    sget-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
