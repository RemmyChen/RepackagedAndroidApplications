.class public final enum Ljp/co/imobile/sdkads/android/FailNotificationReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/imobile/sdkads/android/FailNotificationReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum AUTHORITY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum NETWORK:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum NETWORK_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum NOT_DELIVERY_AD:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum PARAM:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum PERMISSION:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum SHOW_TIMEOUT:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field public static final enum UNKNOWN:Ljp/co/imobile/sdkads/android/FailNotificationReason;

.field private static final synthetic a:[Ljp/co/imobile/sdkads/android/FailNotificationReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "PARAM"

    invoke-direct {v0, v1, v3}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->PARAM:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "AUTHORITY"

    invoke-direct {v0, v1, v4}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AUTHORITY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "RESPONSE"

    invoke-direct {v0, v1, v5}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "NETWORK_NOT_READY"

    invoke-direct {v0, v1, v6}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NETWORK_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v7}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NETWORK:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->UNKNOWN:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "AD_NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AD_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "NOT_DELIVERY_AD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NOT_DELIVERY_AD:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "SHOW_TIMEOUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->SHOW_TIMEOUT:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    new-instance v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const-string v1, "PERMISSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/FailNotificationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->PERMISSION:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    const/16 v0, 0xa

    new-array v0, v0, [Ljp/co/imobile/sdkads/android/FailNotificationReason;

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->PARAM:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AUTHORITY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v1, v0, v5

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NETWORK_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v1, v0, v6

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NETWORK:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->UNKNOWN:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->AD_NOT_READY:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NOT_DELIVERY_AD:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->SHOW_TIMEOUT:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->PERMISSION:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->a:[Ljp/co/imobile/sdkads/android/FailNotificationReason;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/imobile/sdkads/android/FailNotificationReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;

    return-object v0
.end method

.method public static values()[Ljp/co/imobile/sdkads/android/FailNotificationReason;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/FailNotificationReason;->a:[Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v0}, [Ljp/co/imobile/sdkads/android/FailNotificationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/imobile/sdkads/android/FailNotificationReason;

    return-object v0
.end method
