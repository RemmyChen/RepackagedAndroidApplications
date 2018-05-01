.class final Ljp/co/imobile/sdkads/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljp/co/imobile/sdkads/android/e;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/au;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/f;->a:Ljava/lang/String;

    iput-object v2, v1, Ljp/co/imobile/sdkads/android/ay;->n:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iput-object v0, v1, Ljp/co/imobile/sdkads/android/ay;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "templateRequestUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "templateRequestUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/f;->b:Ljp/co/imobile/sdkads/android/e;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
