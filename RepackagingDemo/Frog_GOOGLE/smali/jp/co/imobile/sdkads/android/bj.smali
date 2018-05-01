.class final Ljp/co/imobile/sdkads/android/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/bi;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/bi;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget v0, v0, Ljp/co/imobile/sdkads/android/ay;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget v1, v1, Ljp/co/imobile/sdkads/android/ay;->l:I

    if-le v1, v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spot id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljp/co/imobile/sdkads/android/a;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/bi;->b:Ljp/co/imobile/sdkads/android/ay;

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v4, v4, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget-object v4, v4, Ljp/co/imobile/sdkads/android/ay;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljp/co/imobile/sdkads/android/a;-><init>(Ljp/co/imobile/sdkads/android/ay;Landroid/content/Context;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Z)V

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/bi;->b:Ljp/co/imobile/sdkads/android/ay;

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;)V

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/ay;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ax;->a()Ljp/co/imobile/sdkads/android/FailNotificationReason;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bj;->a:Ljp/co/imobile/sdkads/android/bi;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/bi;->c:Ljp/co/imobile/sdkads/android/ay;

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
