.class public Lcom/xiaomi/ad/internal/common/b/n;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static bk:I

.field public static bl:I

.field public static bm:I

.field public static bn:I

.field public static bo:I

.field public static bp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const v0, 0x240c8400

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bk:I

    .line 8
    const v0, 0x5265c00

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bl:I

    .line 9
    const v0, 0x2932e00

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bm:I

    .line 10
    const v0, 0x36ee80

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bn:I

    .line 11
    const v0, 0xea60

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bo:I

    .line 12
    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/ad/internal/common/b/n;->bp:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ah()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/n;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
