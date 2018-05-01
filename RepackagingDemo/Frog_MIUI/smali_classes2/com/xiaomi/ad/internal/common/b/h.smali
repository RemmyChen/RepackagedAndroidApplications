.class public Lcom/xiaomi/ad/internal/common/b/h;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x0

.field private static final INFO:I = 0x2

.field private static final VERBOSE:I = 0x4

.field private static final WARN:I = 0x1

.field private static final ba:I = 0xfa0

.field private static bb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0xfa0

    if-gt v0, v1, :cond_1

    .line 89
    mul-int/lit16 v1, v0, 0xfa0

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v3, v3, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91
    if-ge v1, v2, :cond_0

    .line 92
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    packed-switch p2, :pswitch_data_0

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :pswitch_3
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :pswitch_4
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_1
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static aa()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-ltz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 58
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 28
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-ltz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-lt v0, v1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 64
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 76
    sget v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    if-lt v0, v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/h;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AD-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDebugOn()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    .line 25
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 16
    sput p0, Lcom/xiaomi/ad/internal/common/b/h;->bb:I

    .line 17
    return-void
.end method
