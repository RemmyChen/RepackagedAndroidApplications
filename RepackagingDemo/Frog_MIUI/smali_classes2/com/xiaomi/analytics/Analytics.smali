.class public Lcom/xiaomi/analytics/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bO:Lcom/xiaomi/analytics/Analytics;


# instance fields
.field private bN:Lcom/xiaomi/analytics/LoggerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/analytics/LoggerFactory",
            "<",
            "Lcom/xiaomi/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/analytics/Analytics;->bO:Lcom/xiaomi/analytics/Analytics;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaomi/analytics/LoggerFactory;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LoggerFactory;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->bN:Lcom/xiaomi/analytics/LoggerFactory;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mMap:Ljava/util/HashMap;

    .line 36
    invoke-static {p1}, Lcom/xiaomi/analytics/a/b/b;->Q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/BaseLogger;->O(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/xiaomi/analytics/Analytics;->an()V

    .line 40
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private an()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/xiaomi/analytics/Tracker;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/Tracker;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/xiaomi/analytics/Analytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->bO:Lcom/xiaomi/analytics/Analytics;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/xiaomi/analytics/Analytics;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/Analytics;->bO:Lcom/xiaomi/analytics/Analytics;

    .line 51
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->bO:Lcom/xiaomi/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App is not allowed to use this method to track event, except system apps. Use getTracker instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    const-string/jumbo v1, "com.miui.analytics"

    const-string/jumbo v2, "com.miui.analytics.EventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "key"

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "content"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->al()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "extra"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->am()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v1, "appid"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_1
    instance-of v1, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v1, :cond_3

    .line 125
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    return-void

    .line 118
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public getClientExtraSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/analytics/Analytics$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/analytics/Analytics$1;-><init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 97
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 98
    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/xiaomi/analytics/a/c/a;->A(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->bN:Lcom/xiaomi/analytics/LoggerFactory;

    const-class v1, Lcom/xiaomi/analytics/Tracker;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/LoggerFactory;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/analytics/BaseLogger;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/Tracker;

    return-object v0
.end method

.method public setDebugOn(Z)V
    .locals 1

    .prologue
    .line 59
    sput-boolean p1, Lcom/xiaomi/analytics/a/b/a;->cP:Z

    .line 60
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/a/c/a;->setDebugOn(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/a/b;->setDontUseSystemAnalytics(Z)V

    .line 72
    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/a/b;->setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V

    .line 68
    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    .line 176
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    .line 181
    return-void

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    .line 187
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    .line 192
    return-void

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public trackCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;

    move-result-object v0

    .line 143
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;

    move-result-object v0

    .line 154
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    .line 159
    return-void

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;

    move-result-object v0

    .line 165
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    .line 170
    return-void

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method
