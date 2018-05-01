.class final Ljp/co/imobile/sdkads/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ay;

.field final synthetic b:Ljp/co/imobile/sdkads/android/j;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/j;Ljp/co/imobile/sdkads/android/ay;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/k;->b:Ljp/co/imobile/sdkads/android/j;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/k;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/k;->b:Ljp/co/imobile/sdkads/android/j;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/j;->c:Ljp/co/imobile/sdkads/android/i;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/k;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/k;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v2}, Ljp/co/imobile/sdkads/android/ay;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljp/co/imobile/sdkads/android/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
