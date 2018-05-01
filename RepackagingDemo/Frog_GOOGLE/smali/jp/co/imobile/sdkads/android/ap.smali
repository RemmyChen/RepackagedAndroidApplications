.class final Ljp/co/imobile/sdkads/android/ap;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljp/co/imobile/sdkads/android/al;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/al;Z)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ap;->b:Ljp/co/imobile/sdkads/android/al;

    iput-boolean p2, p0, Ljp/co/imobile/sdkads/android/ap;->a:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ap;->b:Ljp/co/imobile/sdkads/android/al;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/al;->a:Landroid/location/LocationManager;

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->g()Ljp/co/imobile/sdkads/android/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ap;->b:Ljp/co/imobile/sdkads/android/al;

    iget-object v1, v0, Ljp/co/imobile/sdkads/android/al;->a:Landroid/location/LocationManager;

    iget-boolean v0, p0, Ljp/co/imobile/sdkads/android/ap;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "gps"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    sget-object v1, Ljp/co/imobile/sdkads/android/av;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ap;->b:Ljp/co/imobile/sdkads/android/al;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljp/co/imobile/sdkads/android/al;->a(Ljp/co/imobile/sdkads/android/al;D)D

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ap;->b:Ljp/co/imobile/sdkads/android/al;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljp/co/imobile/sdkads/android/al;->b(Ljp/co/imobile/sdkads/android/al;D)D

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last known location use lat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lng:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string v0, "network"

    goto :goto_0
.end method
