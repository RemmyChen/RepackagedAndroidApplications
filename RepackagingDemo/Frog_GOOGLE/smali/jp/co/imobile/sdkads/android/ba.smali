.class final Ljp/co/imobile/sdkads/android/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/az;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/az;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ba;->a:Ljp/co/imobile/sdkads/android/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ba;->a:Ljp/co/imobile/sdkads/android/az;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ba;->a:Ljp/co/imobile/sdkads/android/az;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/az;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    :cond_0
    return-void
.end method
