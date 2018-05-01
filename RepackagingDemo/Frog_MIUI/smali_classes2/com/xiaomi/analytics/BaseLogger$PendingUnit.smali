.class Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/BaseLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingUnit"
.end annotation


# instance fields
.field bV:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:Ljava/lang/String;

.field bZ:Lcom/xiaomi/analytics/LogEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bV:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bY:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bZ:Lcom/xiaomi/analytics/LogEvent;

    .line 117
    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bX:Ljava/lang/String;

    .line 118
    return-void
.end method
