.class Lcom/xiaomi/analytics/BaseLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Analytics-Logger"

.field private static bS:Lcom/xiaomi/analytics/a/c/a;

.field private static bT:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/analytics/BaseLogger$PendingUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static bW:Lcom/xiaomi/analytics/a/b$a;

.field private static sAppId:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bU:Ljava/lang/String;

.field private bV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 104
    new-instance v0, Lcom/xiaomi/analytics/BaseLogger$1;

    invoke-direct {v0}, Lcom/xiaomi/analytics/BaseLogger$1;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->bW:Lcom/xiaomi/analytics/a/b$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Do you forget to do Logger.init ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static declared-synchronized O(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/xiaomi/analytics/BaseLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/analytics/a/b/b;->Q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context is not a application context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 38
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->bW:Lcom/xiaomi/analytics/a/b$a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit v1

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/analytics/a/c/a;)Lcom/xiaomi/analytics/a/c/a;
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    return-object p0
.end method

.method private static ao()V
    .locals 7

    .prologue
    .line 84
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "Analytics-Logger"

    const-string/jumbo v1, "drainPendingEvents "

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :goto_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    .line 89
    iget-object v1, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bZ:Lcom/xiaomi/analytics/LogEvent;

    iget-object v3, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bX:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bV:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bY:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    const/16 v3, 0x1f4

    .line 92
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 94
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 95
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_1
    const-string/jumbo v0, "Analytics-Logger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trackEvents "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    const-class v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/xiaomi/analytics/a/b/l;->b(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/xiaomi/analytics/a/c/a;->trackEvents([Ljava/lang/String;)V

    move v0, v1

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    return-void
.end method

.method static synthetic ap()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->ao()V

    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    .line 55
    return-void
.end method

.method protected log(Lcom/xiaomi/analytics/LogEvent;)V
    .locals 5

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    .line 60
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/b;->ax()V

    .line 61
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/a/c/a;->trackEvent(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 4

    .prologue
    .line 71
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/b;->aq()Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    .line 73
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->P(Landroid/content/Context;)Lcom/xiaomi/analytics/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/b;->ax()V

    .line 74
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bS:Lcom/xiaomi/analytics/a/c/a;

    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/a/c/a;->trackEvent(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->bT:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->bV:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startSession()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "Analytics-Logger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->bU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
