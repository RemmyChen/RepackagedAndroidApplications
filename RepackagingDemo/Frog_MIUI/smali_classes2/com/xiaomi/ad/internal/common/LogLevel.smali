.class public final enum Lcom/xiaomi/ad/internal/common/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/internal/common/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum B:Lcom/xiaomi/ad/internal/common/LogLevel;

.field public static final enum C:Lcom/xiaomi/ad/internal/common/LogLevel;

.field public static final enum D:Lcom/xiaomi/ad/internal/common/LogLevel;

.field public static final enum E:Lcom/xiaomi/ad/internal/common/LogLevel;

.field public static final enum F:Lcom/xiaomi/ad/internal/common/LogLevel;

.field public static final enum G:Lcom/xiaomi/ad/internal/common/LogLevel;

.field private static final synthetic H:[Lcom/xiaomi/ad/internal/common/LogLevel;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->B:Lcom/xiaomi/ad/internal/common/LogLevel;

    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "WARN"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->C:Lcom/xiaomi/ad/internal/common/LogLevel;

    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->D:Lcom/xiaomi/ad/internal/common/LogLevel;

    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->E:Lcom/xiaomi/ad/internal/common/LogLevel;

    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->F:Lcom/xiaomi/ad/internal/common/LogLevel;

    new-instance v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    const-string/jumbo v1, "ALL"

    const/4 v2, 0x5

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/internal/common/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->G:Lcom/xiaomi/ad/internal/common/LogLevel;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/ad/internal/common/LogLevel;

    sget-object v1, Lcom/xiaomi/ad/internal/common/LogLevel;->B:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/internal/common/LogLevel;->C:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/internal/common/LogLevel;->D:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/ad/internal/common/LogLevel;->E:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/ad/internal/common/LogLevel;->F:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/ad/internal/common/LogLevel;->G:Lcom/xiaomi/ad/internal/common/LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->H:[Lcom/xiaomi/ad/internal/common/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/internal/common/LogLevel;->mValue:I

    .line 10
    iput p3, p0, Lcom/xiaomi/ad/internal/common/LogLevel;->mValue:I

    .line 11
    return-void
.end method

.method public static b(I)Lcom/xiaomi/ad/internal/common/LogLevel;
    .locals 1

    .prologue
    .line 14
    sparse-switch p0, :sswitch_data_0

    .line 28
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->D:Lcom/xiaomi/ad/internal/common/LogLevel;

    :goto_0
    return-object v0

    .line 16
    :sswitch_0
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->B:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 18
    :sswitch_1
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->C:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 20
    :sswitch_2
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->D:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 22
    :sswitch_3
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->E:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 24
    :sswitch_4
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->F:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 26
    :sswitch_5
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->G:Lcom/xiaomi/ad/internal/common/LogLevel;

    goto :goto_0

    .line 14
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/internal/common/LogLevel;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/internal/common/LogLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/xiaomi/ad/internal/common/LogLevel;->H:[Lcom/xiaomi/ad/internal/common/LogLevel;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/internal/common/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/internal/common/LogLevel;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/ad/internal/common/LogLevel;->mValue:I

    return v0
.end method
