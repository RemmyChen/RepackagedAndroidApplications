.class final Ljp/co/imobile/sdkads/android/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljp/co/imobile/sdkads/android/ay;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bl;->c:Ljp/co/imobile/sdkads/android/ay;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/bl;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/bl;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bl;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bl;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bl;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onNativeAdDataReciveCompleted(Ljava/util/List;)V

    :cond_0
    return-void
.end method
