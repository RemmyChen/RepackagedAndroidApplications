.class Lcom/xiaomi/analytics/LogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/LogEvent$LogType;
    }
.end annotation


# static fields
.field private static final cb:I = 0x1

.field private static final cc:Ljava/lang/String; = "v"

.field private static final cd:Ljava/lang/String; = "sessionId"

.field private static final ce:Ljava/lang/String; = "appId"

.field private static final cf:Ljava/lang/String; = "configKey"

.field private static final cg:Ljava/lang/String; = "content"

.field private static final ch:Ljava/lang/String; = "eventTime"

.field private static final ci:Ljava/lang/String; = "logType"

.field private static final cj:Ljava/lang/String; = "extra"


# instance fields
.field private ck:Lcom/xiaomi/analytics/LogEvent$LogType;

.field private cl:J

.field private cm:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->ck:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->cm:Lorg/json/JSONObject;

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->cl:J

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->ck:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->cm:Lorg/json/JSONObject;

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->cl:J

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->ck:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 62
    :cond_0
    return-void
.end method

.method public static create()Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LogEvent;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V

    return-object v0
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    .prologue
    .line 66
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->cm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-object p0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addParams(Ljava/util/Map;)Lcom/xiaomi/analytics/LogEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/analytics/LogEvent;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/analytics/LogEvent;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent;

    goto :goto_0

    .line 83
    :cond_1
    return-object p0
.end method

.method b(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    .line 90
    :cond_0
    return-object p0
.end method

.method c(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->cm:Lorg/json/JSONObject;

    .line 97
    :cond_0
    return-object p0
.end method

.method public pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_0
    const-string/jumbo v0, "v"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v0, "appId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v0, "sessionId"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v0, "configKey"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v0, "content"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->cm:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v0, "eventTime"

    iget-wide v2, p0, Lcom/xiaomi/analytics/LogEvent;->cl:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v0, "logType"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->ck:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v0, "extra"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
