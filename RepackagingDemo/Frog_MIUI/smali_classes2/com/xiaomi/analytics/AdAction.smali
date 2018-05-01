.class public Lcom/xiaomi/analytics/AdAction;
.super Lcom/xiaomi/analytics/TrackAction;
.source "SourceFile"


# static fields
.field protected static final AD_MONITOR:Ljava/lang/String; = "_ad_monitor_"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    .line 12
    const-string/jumbo v0, "ad"

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 13
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 18
    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 19
    return-void
.end method


# virtual methods
.method public addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/analytics/AdAction;"
        }
    .end annotation

    .prologue
    .line 22
    if-eqz p1, :cond_3

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 29
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 34
    const-string/jumbo v0, "_ad_monitor_"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/analytics/AdAction;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3
    return-object p0
.end method
