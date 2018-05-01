.class final Ljp/co/imobile/sdkads/android/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field final synthetic b:Ljp/co/imobile/sdkads/android/bo;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/bo;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bp;->b:Ljp/co/imobile/sdkads/android/bo;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/bp;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bp;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    return-void
.end method
