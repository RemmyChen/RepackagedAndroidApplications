.class public Lcom/xiaomi/analytics/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/analytics/a/c/a;


# static fields
.field public static final TAG:Ljava/lang/String; = "Analytics-SysAnalytics"

.field public static final du:Ljava/lang/String; = "com.miui.action.ANALYTICS_SERVICE"

.field public static final dv:Ljava/lang/String; = "com.miui.analytics.ICore"


# instance fields
.field private dA:Landroid/content/ServiceConnection;

.field private dw:Z

.field private dx:Z

.field private dy:Ljava/lang/Object;

.field private dz:Lcom/miui/analytics/ICore;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    .line 28
    iput-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dx:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dy:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/xiaomi/analytics/a/c/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/a/c/d;-><init>(Lcom/xiaomi/analytics/a/c/c;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dA:Landroid/content/ServiceConnection;

    .line 36
    invoke-static {p1}, Lcom/xiaomi/analytics/a/b/b;->Q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/a/c/c;->af(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    .line 38
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aS()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/c/c;)Lcom/miui/analytics/ICore;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/c/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/c/c;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/xiaomi/analytics/a/c/c;->dx:Z

    return p1
.end method

.method private aS()V
    .locals 4

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    const-string/jumbo v1, "com.miui.analytics"

    const-string/jumbo v2, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/a/c/c;->dA:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private aV()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aS()V

    .line 157
    :cond_1
    return-void
.end method

.method private af(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 57
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string/jumbo v2, "com.miui.analytics"

    const-string/jumbo v3, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/analytics/a/c/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dy:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aV()V

    .line 145
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "isPolicyReady"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/analytics/a/c/c;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public aC()Lcom/xiaomi/analytics/a/j;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/xiaomi/analytics/a/j;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/c/c;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/a/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public aT()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    return v0
.end method

.method public aU()V
    .locals 4

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    if-eqz v0, :cond_0

    .line 97
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dx:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dy:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/c;->dy:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aV()V

    .line 88
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getVersionName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const-string/jumbo v0, "0.0.0"

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/analytics/a/c/c;->dx:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDebugOn(Z)V
    .locals 5

    .prologue
    .line 187
    :try_start_0
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDebugOn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 204
    :try_start_0
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDefaultPolicy"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aV()V

    .line 113
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "trackEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aV()V

    .line 123
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "trackEvents"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public z(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/a/c/c;->aV()V

    .line 133
    const-string/jumbo v0, "com.miui.analytics.ICore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getClientExtra"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c/c;->dz:Lcom/miui/analytics/ICore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/analytics/a/c/c;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 138
    const-string/jumbo v0, ""

    goto :goto_0
.end method
