.class public Lcom/xiaomi/analytics/EventAction;
.super Lcom/xiaomi/analytics/Action;
.source "SourceFile"


# static fields
.field protected static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"


# instance fields
.field private ca:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    .line 17
    const-string/jumbo v2, "event name should not be null."

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v1, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/analytics/EventAction;->ca:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/xiaomi/analytics/EventAction;->ca:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/EventAction;->addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 20
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const-string/jumbo v0, "_event_default_param_"

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/analytics/EventAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 23
    :cond_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
