.class final Ljp/co/imobile/sdkads/android/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field final synthetic b:Ljp/co/imobile/sdkads/android/az;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/az;Ljp/co/imobile/sdkads/android/FailNotificationReason;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/be;->b:Ljp/co/imobile/sdkads/android/az;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/be;->a:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i-mobile Test Mode Message \n[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/be;->a:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n[spot id] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/be;->b:Ljp/co/imobile/sdkads/android/az;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
