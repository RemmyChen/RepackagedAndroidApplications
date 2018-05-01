.class public final enum Lcom/xiaomi/ad/internal/common/NetState;
.super Ljava/lang/Enum;
.source "NetState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/internal/common/NetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum I:Lcom/xiaomi/ad/internal/common/NetState;

.field public static final enum J:Lcom/xiaomi/ad/internal/common/NetState;

.field public static final enum K:Lcom/xiaomi/ad/internal/common/NetState;

.field public static final enum L:Lcom/xiaomi/ad/internal/common/NetState;

.field public static final enum M:Lcom/xiaomi/ad/internal/common/NetState;

.field private static final synthetic N:[Lcom/xiaomi/ad/internal/common/NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/xiaomi/ad/internal/common/NetState;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/internal/common/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    .line 5
    new-instance v0, Lcom/xiaomi/ad/internal/common/NetState;

    const-string/jumbo v1, "MN2G"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/ad/internal/common/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->J:Lcom/xiaomi/ad/internal/common/NetState;

    .line 6
    new-instance v0, Lcom/xiaomi/ad/internal/common/NetState;

    const-string/jumbo v1, "MN3G"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/ad/internal/common/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->K:Lcom/xiaomi/ad/internal/common/NetState;

    .line 7
    new-instance v0, Lcom/xiaomi/ad/internal/common/NetState;

    const-string/jumbo v1, "MN4G"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/ad/internal/common/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->L:Lcom/xiaomi/ad/internal/common/NetState;

    .line 8
    new-instance v0, Lcom/xiaomi/ad/internal/common/NetState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/ad/internal/common/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/ad/internal/common/NetState;

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->I:Lcom/xiaomi/ad/internal/common/NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->J:Lcom/xiaomi/ad/internal/common/NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->K:Lcom/xiaomi/ad/internal/common/NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->L:Lcom/xiaomi/ad/internal/common/NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/internal/common/NetState;->M:Lcom/xiaomi/ad/internal/common/NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/ad/internal/common/NetState;->N:[Lcom/xiaomi/ad/internal/common/NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/internal/common/NetState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/xiaomi/ad/internal/common/NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/internal/common/NetState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/internal/common/NetState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/xiaomi/ad/internal/common/NetState;->N:[Lcom/xiaomi/ad/internal/common/NetState;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/internal/common/NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/internal/common/NetState;

    return-object v0
.end method
