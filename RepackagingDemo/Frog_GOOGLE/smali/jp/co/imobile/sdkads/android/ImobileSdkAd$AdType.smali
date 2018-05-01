.class public final enum Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOUSE_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

.field public static final enum NORMAL_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

.field private static final synthetic a:[Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    const-string v1, "NORMAL_AD"

    invoke-direct {v0, v1, v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->NORMAL_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    new-instance v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    const-string v1, "HOUSE_AD"

    invoke-direct {v0, v1, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->HOUSE_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    const/4 v0, 0x2

    new-array v0, v0, [Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->NORMAL_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    aput-object v1, v0, v2

    sget-object v1, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->HOUSE_AD:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    aput-object v1, v0, v3

    sput-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->a:[Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

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

.method public static valueOf(Ljava/lang/String;)Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    return-object v0
.end method

.method public static values()[Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->a:[Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    invoke-virtual {v0}, [Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdType;

    return-object v0
.end method
