.class final Ljp/co/imobile/sdkads/android/br;
.super Ljp/co/imobile/sdkads/android/ay;


# instance fields
.field private B:Landroid/app/Dialog;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ay;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/j;Landroid/graphics/Rect;ZZ)V
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    new-instance v1, Ljp/co/imobile/sdkads/android/bs;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/bs;-><init>(Ljp/co/imobile/sdkads/android/br;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/al;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMAZON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljp/co/imobile/sdkads/android/al;->c(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    new-instance v1, Ljp/co/imobile/sdkads/android/bt;

    invoke-direct {v1, p0, p2, v0}, Ljp/co/imobile/sdkads/android/bt;-><init>(Ljp/co/imobile/sdkads/android/br;Ljp/co/imobile/sdkads/android/j;I)V

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Ljp/co/imobile/sdkads/android/j;->a(Landroid/app/Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method static synthetic b(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;ZZZ)V
    .locals 6

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Show ad."

    const-string v1, "Already show ad."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p4, :cond_2

    iget v0, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->k:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/br;->k:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xd

    iget v2, p0, Ljp/co/imobile/sdkads/android/br;->g:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "ShowAd IntervalTime skip."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last ShowAd DateTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/br;->k:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Ljp/co/imobile/sdkads/android/br;->g:I

    if-nez v0, :cond_2

    iget v0, p0, Ljp/co/imobile/sdkads/android/br;->e:I

    iget v1, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    if-lt v0, v1, :cond_2

    const-string v0, "ShowAd skip count skip."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    iget v2, p0, Ljp/co/imobile/sdkads/android/br;->i:I

    iget v4, p0, Ljp/co/imobile/sdkads/android/br;->j:I

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    iget v0, p0, Ljp/co/imobile/sdkads/android/br;->l:I

    if-lez v0, :cond_5

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/br;->n()Ljp/co/imobile/sdkads/android/j;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object p2, v2, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-object v0, p0

    move-object v1, p1

    move v4, p9

    move/from16 v5, p10

    :try_start_0
    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/br;->a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/j;Landroid/graphics/Rect;ZZ)V
    :try_end_0
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/br;->k:Ljava/util/Date;

    if-nez p4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/br;->o()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "showAdDialog"

    const-string v2, ""

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AD_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v1, Ljp/co/imobile/sdkads/android/a;

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v4, v5}, Ljp/co/imobile/sdkads/android/a;-><init>(Ljp/co/imobile/sdkads/android/ay;Landroid/content/Context;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Z)V
    :try_end_1
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;)V
    :try_end_2
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    :try_start_3
    iput-object p2, v2, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget v0, p0, Ljp/co/imobile/sdkads/android/br;->q:I

    if-lez v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/br;->p:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xd

    iget v4, p0, Ljp/co/imobile/sdkads/android/br;->q:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljp/co/imobile/sdkads/android/j;->a(Ljava/util/Date;)V

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/br;->a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/j;Landroid/graphics/Rect;ZZ)V
    :try_end_3
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/br;->k:Ljava/util/Date;

    if-nez p4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/imobile/sdkads/android/br;->f:I

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_5
    iget-object v2, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "showAdDialog"

    const-string v2, ""

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {p0, p2}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method final p()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljp/co/imobile/sdkads/android/br;->l:I

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/br;->n()Ljp/co/imobile/sdkads/android/j;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/br;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v2

    sget-object v3, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final q()V
    .locals 2

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/br;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v0

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/bn;)V

    :cond_0
    return-void
.end method

.method final r()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    :cond_0
    return-void
.end method
