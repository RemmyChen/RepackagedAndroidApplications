.class abstract Ljp/co/imobile/sdkads/android/ay;
.super Ljava/lang/Object;


# instance fields
.field protected A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field private volatile B:Ljp/co/imobile/sdkads/android/bn;

.field private C:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

.field private D:Ljava/util/Date;

.field protected final a:Landroid/os/Handler;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Ljava/util/Date;

.field protected l:I

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/util/Date;

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/util/Date;

.field protected u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/imobile/sdkads/android/j;",
            ">;"
        }
    .end annotation
.end field

.field protected v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected x:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field protected z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->a:Ljp/co/imobile/sdkads/android/bn;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->C:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->D:Ljava/util/Date;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->e:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->f:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->g:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->h:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->i:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->j:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->l:I

    iput v1, p0, Ljp/co/imobile/sdkads/android/ay;->m:I

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->s:Ljava/lang/String;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->t:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljp/co/imobile/sdkads/android/az;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/az;-><init>(Ljp/co/imobile/sdkads/android/ay;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-void
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ay;)Ljp/co/imobile/sdkads/android/bn;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    return-object v0
.end method


# virtual methods
.method final a(Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->e()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pid"

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ay;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mid"

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ay;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sid"

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "test"

    invoke-static {}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v2, "iconParams"

    invoke-virtual {p1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "nativeAdParams"

    invoke-virtual {p2}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "refreshTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "showType"

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ay;->C:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    const-string v2, "succeed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    const-string v2, "refreshTime"

    iget v3, p0, Ljp/co/imobile/sdkads/android/ay;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Spot data to ad view data create."

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    const-string v0, "parse"

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljp/co/imobile/sdkads/android/ax;

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v0, v1}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v0
.end method

.method final a()Ljp/co/imobile/sdkads/android/bn;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    return-object v0
.end method

.method abstract a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;ZZZ)V
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ay;->b:Ljava/lang/String;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/ay;->c:Ljava/lang/String;

    iput-object p4, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImobileSdkAdsShowTimeOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljp/co/imobile/sdkads/android/ay;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowTimeOutSeconds readPreference. Spot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShowTimeOutSeconds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/co/imobile/sdkads/android/ay;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method final a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ay;->p:Ljava/util/Date;

    return-void
.end method

.method public final a(Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ay;->C:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    return-void
.end method

.method final a(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ay;->y:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-void
.end method

.method final a(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;",
            "Ljava/util/List",
            "<",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bl;

    invoke-direct {v1, p0, p1, p2}, Ljp/co/imobile/sdkads/android/bl;-><init>(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final a(Ljp/co/imobile/sdkads/android/bn;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->f:Ljp/co/imobile/sdkads/android/bn;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->D:Ljava/util/Date;

    :cond_0
    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait show ad execute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method final b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->D:Ljava/util/Date;

    return-object v0
.end method

.method final b(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_0
.end method

.method public final c()Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->C:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    return-object v0
.end method

.method final c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/bk;

    invoke-direct {v1, p0, p1}, Ljp/co/imobile/sdkads/android/bk;-><init>(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->b:Ljava/lang/String;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->c:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->n:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->o:Ljava/lang/String;

    return-object v0
.end method

.method final i()I
    .locals 1

    iget v0, p0, Ljp/co/imobile/sdkads/android/ay;->q:I

    return v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->r:Ljava/lang/String;

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->s:Ljava/lang/String;

    return-object v0
.end method

.method final l()V
    .locals 3

    sget-object v0, Ljp/co/imobile/sdkads/android/bm;->a:[I

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/bn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->b:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    new-instance v0, Ljp/co/imobile/sdkads/android/bh;

    invoke-direct {v0, p0, p0}, Ljp/co/imobile/sdkads/android/bh;-><init>(Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ay;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljp/co/imobile/sdkads/android/bi;

    invoke-direct {v2, p0, v0, p0}, Ljp/co/imobile/sdkads/android/bi;-><init>(Ljp/co/imobile/sdkads/android/ay;Ljava/util/concurrent/Future;Ljp/co/imobile/sdkads/android/ay;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final m()V
    .locals 11

    const/16 v10, 0x3c

    const/16 v9, 0xd

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    iget v0, p0, Ljp/co/imobile/sdkads/android/ay;->l:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->e:Ljp/co/imobile/sdkads/android/bn;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->B:Ljp/co/imobile/sdkads/android/bn;

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->f:Ljp/co/imobile/sdkads/android/bn;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ad status:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->d()Ljp/co/imobile/sdkads/android/n;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " on spot:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    sget-object v3, Ljp/co/imobile/sdkads/android/bm;->b:[I

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->d()Ljp/co/imobile/sdkads/android/n;

    move-result-object v7

    invoke-virtual {v7}, Ljp/co/imobile/sdkads/android/n;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_0

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v0, p0}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/ay;)V

    goto :goto_1

    :pswitch_0
    move v3, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->add(II)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error retry not reach time. on spot:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    move v3, v2

    goto :goto_2

    :pswitch_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->b()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->add(II)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available ad:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/co/imobile/sdkads/android/ay;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on spot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final n()Ljp/co/imobile/sdkads/android/j;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->d()Ljp/co/imobile/sdkads/android/n;

    move-result-object v3

    sget-object v4, Ljp/co/imobile/sdkads/android/n;->c:Ljp/co/imobile/sdkads/android/n;

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->b()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Ljp/co/imobile/sdkads/android/n;->h:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v0, v3}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/n;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/j;->b()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->b()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected final o()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->t:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ay;->t:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->a:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ay;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/ay;->l()V

    :cond_0
    return-void
.end method

.method abstract p()Z
.end method

.method abstract q()V
.end method

.method abstract r()V
.end method
