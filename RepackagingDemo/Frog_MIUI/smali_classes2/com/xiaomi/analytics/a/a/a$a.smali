.class Lcom/xiaomi/analytics/a/a/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic cv:Lcom/xiaomi/analytics/a/a/a;


# direct methods
.method private constructor <init>(Lcom/xiaomi/analytics/a/a/a;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/analytics/a/a/a$a;->cv:Lcom/xiaomi/analytics/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/analytics/a/a/a;Lcom/xiaomi/analytics/a/a/a$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/a/a/a$a;-><init>(Lcom/xiaomi/analytics/a/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/a/a/a$a;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    return-void
.end method
