.class public Lcom/xiaomi/analytics/Tracker;
.super Lcom/xiaomi/analytics/BaseLogger;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/BaseLogger;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic endSession()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->endSession()V

    return-void
.end method

.method public bridge synthetic startSession()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->startSession()V

    return-void
.end method

.method public track(Lcom/xiaomi/analytics/Action;)V
    .locals 2

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    instance-of v0, p1, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->al()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->c(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->am()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->b(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->al()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->c(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->am()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->b(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 2

    .prologue
    .line 25
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    instance-of v0, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->al()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->c(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->am()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->b(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->al()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->c(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->am()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->b(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method
