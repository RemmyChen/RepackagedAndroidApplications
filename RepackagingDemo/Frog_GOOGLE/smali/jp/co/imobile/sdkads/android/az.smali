.class final Ljp/co/imobile/sdkads/android/az;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ay;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ay;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCliclkCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bc;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/bc;-><init>(Ljp/co/imobile/sdkads/android/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAdCloseCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bd;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/bd;-><init>(Ljp/co/imobile/sdkads/android/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAdReadyCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/ba;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/ba;-><init>(Ljp/co/imobile/sdkads/android/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAdShowCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bb;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/bb;-><init>(Ljp/co/imobile/sdkads/android/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDismissAdScreen()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bg;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/bg;-><init>(Ljp/co/imobile/sdkads/android/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V
    .locals 6
    .param p1, "reason"    # Ljp/co/imobile/sdkads/android/FailNotificationReason;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AUTHORITY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->f:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    :cond_0
    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ay;)Ljp/co/imobile/sdkads/android/bn;

    move-result-object v0

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ay;)Ljp/co/imobile/sdkads/android/bn;

    move-result-object v0

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/be;

    invoke-direct {v1, p0, p1}, Ljp/co/imobile/sdkads/android/be;-><init>(Ljp/co/imobile/sdkads/android/az;Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->d()Ljp/co/imobile/sdkads/android/n;

    move-result-object v4

    sget-object v5, Ljp/co/imobile/sdkads/android/n;->c:Ljp/co/imobile/sdkads/android/n;

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->d()Ljp/co/imobile/sdkads/android/n;

    move-result-object v0

    sget-object v4, Ljp/co/imobile/sdkads/android/n;->b:Ljp/co/imobile/sdkads/android/n;

    if-ne v0, v4, :cond_5

    :cond_2
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bf;

    invoke-direct {v1, p0, p1}, Ljp/co/imobile/sdkads/android/bf;-><init>(Ljp/co/imobile/sdkads/android/az;Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method
