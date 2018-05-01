.class Lcom/xiaomi/analytics/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cq:Lcom/xiaomi/analytics/a/j;

.field static final cr:Lcom/xiaomi/analytics/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/xiaomi/analytics/a/j;

    const-string/jumbo v1, "1.2.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/a/a;->cq:Lcom/xiaomi/analytics/a/j;

    .line 8
    new-instance v0, Lcom/xiaomi/analytics/a/j;

    const-string/jumbo v1, "1.3.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/a/a;->cr:Lcom/xiaomi/analytics/a/j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
