.class public Ljp/co/imobile/sdkads/android/ImobileSdkAd;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/co/imobile/sdkads/android/ay;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Ljp/co/imobile/sdkads/android/AdOrientation;

.field private g:Ljava/lang/Boolean;

.field private h:Landroid/content/Context;

.field private i:Ljp/co/imobile/sdkads/android/al;

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/TimerTask;

.field private l:Ljava/lang/Boolean;

.field private m:Landroid/app/Activity;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;-><init>()V

    sput-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->d:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->e:Ljava/lang/Boolean;

    sget-object v0, Ljp/co/imobile/sdkads/android/AdOrientation;->AUTO:Ljp/co/imobile/sdkads/android/AdOrientation;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->g:Ljava/lang/Boolean;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->j:Ljava/util/Timer;

    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->l:Ljava/lang/Boolean;

    new-instance v0, Ljp/co/imobile/sdkads/android/w;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/w;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Landroid/widget/ListAdapter;I)Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;",
            "Landroid/widget/ListAdapter;",
            "I)",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/imobile/sdkads/android/ay;

    if-nez v2, :cond_0

    const-string v0, "ImobileSdkAd start error."

    const-string v1, "Spot is not registered."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;-><init>(Landroid/content/Context;Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Landroid/widget/ListAdapter;I)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V
    .locals 4

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    sget-object v1, Ljp/co/imobile/sdkads/android/av;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "i-mobile_Testing"

    sget-object v3, Ljp/co/imobile/sdkads/android/av;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "i-mobile_DebugLogging"

    sget-object v3, Ljp/co/imobile/sdkads/android/av;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->d:Ljava/lang/Boolean;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "i-mobile_SendID"

    sget-object v3, Ljp/co/imobile/sdkads/android/av;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->e:Ljava/lang/Boolean;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;

    sget-object v2, Ljp/co/imobile/sdkads/android/AdOrientation;->AUTO:Ljp/co/imobile/sdkads/android/AdOrientation;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "i-mobile_AdOrientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/AdOrientation;->valueOf(Ljava/lang/String;)Ljp/co/imobile/sdkads/android/AdOrientation;

    move-result-object v1

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "i-mobile_UpdateLocationOnlyOnce"

    sget-object v2, Ljp/co/imobile/sdkads/android/av;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->g:Ljava/lang/Boolean;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->i:Ljp/co/imobile/sdkads/android/al;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->i:Ljp/co/imobile/sdkads/android/al;

    invoke-virtual {v0, p1}, Ljp/co/imobile/sdkads/android/al;->a(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    if-nez v0, :cond_4

    sget-object v1, Ljp/co/imobile/sdkads/android/x;->a:[I

    invoke-virtual {p5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "ImobileSdkAd spot create error."

    const-string v2, "adShowType not found."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p5}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ljp/co/imobile/sdkads/android/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "ImobileSdkAd parameter error."

    const-string v2, "i-mobile_ShowLayout value Illegal, use value default(AUTO)."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v1, Ljp/co/imobile/sdkads/android/av;->d:Ljp/co/imobile/sdkads/android/AdOrientation;

    iput-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljp/co/imobile/sdkads/android/br;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/br;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance v0, Ljp/co/imobile/sdkads/android/bo;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/bo;-><init>()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    if-nez v1, :cond_1

    const-string v1, "ImobileSdkAd start error."

    const-string v2, "Spot is not registered."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ay;->a(Ljava/util/Date;)V

    if-nez p4, :cond_6

    new-instance v4, Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    monitor-enter p0

    :try_start_0
    sget-object v2, Ljp/co/imobile/sdkads/android/x;->b:[I

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v3

    invoke-virtual {v3}, Ljp/co/imobile/sdkads/android/bn;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_0
    :try_start_1
    const-string v1, "ImobileSdkAd start error."

    const-string v2, "Spot is not start."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v1, "ImobileSdkAd start error."

    const-string v2, "Spot is stop."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Ljp/co/imobile/sdkads/android/ay;->a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;ZZZ)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->c()Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-result-object v2

    sget-object v3, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->INLINE:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->i()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    new-instance v5, Ljp/co/imobile/sdkads/android/v;

    move-object/from16 v6, p0

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object v10, v4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v5 .. v17}, Ljp/co/imobile/sdkads/android/v;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;Ljp/co/imobile/sdkads/android/ay;Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    invoke-virtual {v1, v5}, Ljp/co/imobile/sdkads/android/ay;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_2

    :cond_3
    iget-object v2, v1, Ljp/co/imobile/sdkads/android/ay;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v2, :cond_4

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    :cond_5
    const-string v1, "ImobileSdkAd start error."

    const-string v2, "Spot is loading or error or pause."

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object/from16 v4, p4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->q()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iput-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->l:Ljava/lang/Boolean;

    :cond_2
    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/al;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    if-nez v0, :cond_1

    const-string v0, "ImobileSdkAd start error."

    const-string v1, "Spot is not registered."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spot id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->l()V

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v6}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->j:Ljava/util/Timer;

    new-instance v0, Ljp/co/imobile/sdkads/android/t;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/t;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->j:Ljava/util/Timer;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {v7}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->l:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ImobileSdkAd;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static activityDestory()V
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f()V

    return-void
.end method

.method public static activityDestroy()V
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f()V

    return-void
.end method

.method static synthetic b(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    return-object v0
.end method

.method static b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method static c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Ljp/co/imobile/sdkads/android/ImobileSdkAd;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->k:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static createNativeInfeedAdapter(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ListAdapter;I)Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "originalAdapter"    # Landroid/widget/ListAdapter;
    .param p3, "adLayoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/widget/ListAdapter;",
            "I)",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v3}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Landroid/widget/ListAdapter;I)Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static createNativeInfeedAdapter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Landroid/widget/ListAdapter;I)Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "imageLoad"    # Ljava/lang/Boolean;
    .param p3, "originalAdapter"    # Landroid/widget/ListAdapter;
    .param p4, "adLayoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/widget/ListAdapter;",
            "I)",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v3}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-virtual {v3, p2}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->setNativeImageLoadFlag(Ljava/lang/Boolean;)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Landroid/widget/ListAdapter;I)Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method static d()Ljp/co/imobile/sdkads/android/AdOrientation;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;

    return-object v0
.end method

.method static e()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getNativeAdData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "imageLoad"    # Ljava/lang/Boolean;
    .param p3, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-virtual {v8, p2}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->setNativeImageLoadFlag(Ljava/lang/Boolean;)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, v4

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static getNativeAdData(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "nativeAdParams"    # Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;
    .param p3, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, v4

    move-object v8, p2

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static getNativeAdData(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static getNativeAdData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "imageLoad"    # Ljava/lang/Boolean;
    .param p3, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-virtual {v8, p2}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->setNativeImageLoadFlag(Ljava/lang/Boolean;)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, p1

    move-object v3, p3

    move-object v6, v4

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    :cond_0
    return-void
.end method

.method public static getNativeAdData(Landroid/content/Context;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "nativeAdParams"    # Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;
    .param p3, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, p1

    move-object v3, p3

    move-object v6, v4

    move-object v8, p2

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    :cond_0
    return-void
.end method

.method public static getNativeAdData(Landroid/content/Context;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    :cond_0
    return-void
.end method

.method public static isShowAd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->p()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerSpot(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v5, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->DIALOG:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V

    return-void
.end method

.method public static registerSpotFullScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v5, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->DIALOG:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V

    return-void
.end method

.method public static registerSpotInline(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v5, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->INLINE:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V

    return-void
.end method

.method public static registerSpotInlineForService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljp/co/imobile/sdkads/android/u;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/u;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "i-mobile Dummy"

    const-string v3, "i-mobile Dummy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iput-object v0, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->m:Landroid/app/Activity;

    sget-object v5, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->INLINE:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;)V

    return-void
.end method

.method public static setAdOrientation(Ljp/co/imobile/sdkads/android/AdOrientation;)V
    .locals 1
    .param p0, "adOrientation"    # Ljp/co/imobile/sdkads/android/AdOrientation;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iput-object p0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->f:Ljp/co/imobile/sdkads/android/AdOrientation;

    return-void
.end method

.method public static setImobileSdkAdListener(Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 2
    .param p0, "spotId"    # Ljava/lang/String;
    .param p1, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ImobileSdkAd start error."

    const-string v1, "Spot is not registered."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setShowAdIntervalTime(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static setShowAdSkipCount(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static setTestMode(Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "isTestMode"    # Ljava/lang/Boolean;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iput-object p0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;IIZ)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "isDpiConvert"    # Z

    .prologue
    if-eqz p4, :cond_0

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p2}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p2

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p3}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p3

    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;IIZLjp/co/imobile/sdkads/android/ImobileIconParams;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "isDpiConvert"    # Z
    .param p5, "iconParams"    # Ljp/co/imobile/sdkads/android/ImobileIconParams;

    .prologue
    if-eqz p4, :cond_0

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p2}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p2

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p3}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p3

    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;IIZZ)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "isDpiConvert"    # Z
    .param p5, "sizeAdjust"    # Z

    .prologue
    if-eqz p4, :cond_0

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p2}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p2

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    invoke-static {p3}, Ljp/co/imobile/sdkads/android/al;->a(I)I

    move-result p3

    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "targetViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "targetViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "iconParams"    # Ljp/co/imobile/sdkads/android/ImobileIconParams;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    move-object v7, p3

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "targetViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "sizeAdjust"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    move v10, p3

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAdForAdMobMediation(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "targetViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    new-instance v7, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    new-instance v8, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v8}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAdForce(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move v11, v10

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static showAdforce(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spotId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v11, v10

    invoke-direct/range {v0 .. v11}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1
    .param p0, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    invoke-direct {v0, p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static startAll()V
    .locals 5

    sget-object v2, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v2, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v1

    sget-object v4, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    if-ne v1, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ay;

    sget-object v4, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v1, v4}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/bn;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ay;->d:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->h:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/al;->d()V

    :cond_2
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .locals 1
    .param p0, "spotId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->q()V

    return-void
.end method

.method public static stopAll()V
    .locals 2

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->a(Ljava/lang/Boolean;)V

    return-void
.end method
