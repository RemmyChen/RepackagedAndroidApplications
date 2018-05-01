.class final Ljp/co/imobile/sdkads/android/t;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/t;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/t;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spot status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on spot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    sget-object v3, Ljp/co/imobile/sdkads/android/x;->b:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/bn;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/t;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Landroid/content/Context;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->m()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xd

    const/16 v4, 0x3c

    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    sget-object v3, Ljp/co/imobile/sdkads/android/bn;->a:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->l()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error retry not reach time. on spot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
