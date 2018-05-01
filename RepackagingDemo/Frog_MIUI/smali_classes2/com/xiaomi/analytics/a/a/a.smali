.class public Lcom/xiaomi/analytics/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/a/a/a$1;,
        Lcom/xiaomi/analytics/a/a/a$a;
    }
.end annotation


# instance fields
.field private cs:Landroid/app/Instrumentation;

.field private ct:Landroid/app/Instrumentation$ActivityMonitor;

.field private cu:Lcom/xiaomi/analytics/a/a/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Landroid/app/Instrumentation$ActivityMonitor;

    move-object v0, v1

    check-cast v0, Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    iput-object v2, p0, Lcom/xiaomi/analytics/a/a/a;->ct:Landroid/app/Instrumentation$ActivityMonitor;

    .line 14
    iput-object v1, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mInstrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    iput-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cs:Landroid/app/Instrumentation;

    .line 20
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cs:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/a/a;->ct:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/a/a$a;->interrupt()V

    .line 39
    :cond_0
    new-instance v0, Lcom/xiaomi/analytics/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/analytics/a/a/a$a;-><init>(Lcom/xiaomi/analytics/a/a/a;Lcom/xiaomi/analytics/a/a/a$1;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    .line 40
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/a/a$a;->start()V

    .line 41
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaomi/analytics/a/a/a;->cu:Lcom/xiaomi/analytics/a/a/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/a/a$a;->interrupt()V

    .line 47
    :cond_0
    return-void
.end method
