.class final Ljp/co/imobile/sdkads/android/w;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/w;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/w;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/w;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAd;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/w;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Ljava/util/TimerTask;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->startAll()V

    goto :goto_0
.end method
