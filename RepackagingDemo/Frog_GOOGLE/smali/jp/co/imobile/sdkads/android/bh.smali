.class final Ljp/co/imobile/sdkads/android/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ay;

.field final synthetic b:Ljp/co/imobile/sdkads/android/ay;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ay;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bh;->b:Ljp/co/imobile/sdkads/android/ay;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/bh;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bh;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/au;->a(Ljp/co/imobile/sdkads/android/ay;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
