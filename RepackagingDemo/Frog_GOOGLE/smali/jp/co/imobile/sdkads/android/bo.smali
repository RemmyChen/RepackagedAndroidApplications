.class final Ljp/co/imobile/sdkads/android/bo;
.super Ljp/co/imobile/sdkads/android/ay;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ay;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;ZZZ)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1}, Ljp/co/imobile/sdkads/android/al;->b(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    iget v3, p0, Ljp/co/imobile/sdkads/android/bo;->i:I

    iget v4, p0, Ljp/co/imobile/sdkads/android/bo;->j:I

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    iget v1, p0, Ljp/co/imobile/sdkads/android/bo;->l:I

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/bo;->n()Ljp/co/imobile/sdkads/android/j;

    move-result-object v2

    if-eqz v2, :cond_6

    iput-object p2, v2, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_5

    :try_start_0
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ImobileIconParams;)V

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;)V

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Ljp/co/imobile/sdkads/android/j;->l:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v5, p1}, Ljp/co/imobile/sdkads/android/j;->a(Landroid/app/Activity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v1, Ljp/co/imobile/sdkads/android/bq;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Ljp/co/imobile/sdkads/android/bq;-><init>(Ljp/co/imobile/sdkads/android/bo;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Ljp/co/imobile/sdkads/android/j;Landroid/app/Activity;)V

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/bo;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v7, p0, Ljp/co/imobile/sdkads/android/bo;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-object v6, p0

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v5 .. v10}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Rect;ZZ)V
    :try_end_0
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/bo;->o()V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v2, Ljp/co/imobile/sdkads/android/a;

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v1, v4, v5}, Ljp/co/imobile/sdkads/android/a;-><init>(Ljp/co/imobile/sdkads/android/ay;Landroid/content/Context;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Z)V
    :try_end_1
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object p2, v2, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    invoke-virtual {v2, p0}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;)V
    :try_end_2
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v2

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_3
    iget-object v3, p0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/bo;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    move-object v5, v2

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/bo;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AD_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bo;->a:Landroid/os/Handler;

    new-instance v2, Ljp/co/imobile/sdkads/android/bp;

    invoke-direct {v2, p0, p2}, Ljp/co/imobile/sdkads/android/bp;-><init>(Ljp/co/imobile/sdkads/android/bo;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v5, v2

    goto :goto_1
.end method

.method final p()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljp/co/imobile/sdkads/android/bo;->l:I

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/bo;->n()Ljp/co/imobile/sdkads/android/j;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/bo;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v2

    sget-object v3, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final q()V
    .locals 2

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/bo;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v0

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/bo;->a(Ljp/co/imobile/sdkads/android/bn;)V

    :cond_0
    return-void
.end method

.method final r()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bo;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bo;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    :cond_0
    return-void
.end method
