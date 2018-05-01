.class public final enum Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUNNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

.field public static final enum LARGE_BANNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

.field public static final enum MEDIUM_RECTANGLE:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

.field private static final synthetic c:[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v3, 0x140

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    const-string v1, "BUNNER"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v4, v3, v2}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->BUNNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    new-instance v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    const-string v1, "LARGE_BANNER"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v3, v2}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->LARGE_BANNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    new-instance v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    const-string v1, "MEDIUM_RECTANGLE"

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v6, v2, v3}, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->MEDIUM_RECTANGLE:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    const/4 v0, 0x3

    new-array v0, v0, [Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    sget-object v1, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->BUNNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->LARGE_BANNER:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    aput-object v1, v0, v5

    sget-object v1, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->MEDIUM_RECTANGLE:Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    aput-object v1, v0, v6

    sput-object v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->c:[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->b:I

    iput p4, p0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    return-object v0
.end method

.method public static values()[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;
    .locals 1

    sget-object v0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->c:[Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    invoke-virtual {v0}, [Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->a:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Ljp/co/imobile/sdkads/android/AdMobMediationSupportAdSize;->b:I

    return v0
.end method
