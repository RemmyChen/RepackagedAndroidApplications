.class final enum Ljp/co/imobile/sdkads/android/bn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/imobile/sdkads/android/bn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljp/co/imobile/sdkads/android/bn;

.field public static final enum b:Ljp/co/imobile/sdkads/android/bn;

.field public static final enum c:Ljp/co/imobile/sdkads/android/bn;

.field public static final enum d:Ljp/co/imobile/sdkads/android/bn;

.field public static final enum e:Ljp/co/imobile/sdkads/android/bn;

.field public static final enum f:Ljp/co/imobile/sdkads/android/bn;

.field private static final synthetic g:[Ljp/co/imobile/sdkads/android/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->a:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "LODING"

    invoke-direct {v0, v1, v4}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->b:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "START"

    invoke-direct {v0, v1, v5}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v7}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->e:Ljp/co/imobile/sdkads/android/bn;

    new-instance v0, Ljp/co/imobile/sdkads/android/bn;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->f:Ljp/co/imobile/sdkads/android/bn;

    const/4 v0, 0x6

    new-array v0, v0, [Ljp/co/imobile/sdkads/android/bn;

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->a:Ljp/co/imobile/sdkads/android/bn;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->b:Ljp/co/imobile/sdkads/android/bn;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    aput-object v1, v0, v5

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->d:Ljp/co/imobile/sdkads/android/bn;

    aput-object v1, v0, v6

    sget-object v1, Ljp/co/imobile/sdkads/android/bn;->e:Ljp/co/imobile/sdkads/android/bn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/co/imobile/sdkads/android/bn;->f:Ljp/co/imobile/sdkads/android/bn;

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/imobile/sdkads/android/bn;->g:[Ljp/co/imobile/sdkads/android/bn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Ljp/co/imobile/sdkads/android/bn;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->g:[Ljp/co/imobile/sdkads/android/bn;

    invoke-virtual {v0}, [Ljp/co/imobile/sdkads/android/bn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/imobile/sdkads/android/bn;

    return-object v0
.end method
