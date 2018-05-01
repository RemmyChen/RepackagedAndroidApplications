.class public final enum Lcom/xiaomi/ad/common/pojo/AdError;
.super Ljava/lang/Enum;
.source "AdError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/common/pojo/AdError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_CREATE_VIEW:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_INVALID_RESPONSE:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_NETWORK:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_NO_AD:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_SERVER:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_SPLASH_CONFIG_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_TIMEOUT:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

.field public static final enum STATUS_OK:Lcom/xiaomi/ad/common/pojo/AdError;


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

    .line 4
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "STATUS_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->STATUS_OK:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 5
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_NO_AD"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NO_AD:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 6
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NETWORK:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 7
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_TIMEOUT"

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_TIMEOUT:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 8
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_INVALID_RESPONSE"

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_INVALID_RESPONSE:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 9
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_SERVER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SERVER:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 10
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_SDK_NOT_READY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 11
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_SPLASH_CONFIG_NOT_READY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 12
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_CREATE_VIEW"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_CREATE_VIEW:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 13
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdError;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    const/16 v2, 0x9

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/ad/common/pojo/AdError;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->STATUS_OK:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NO_AD:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NETWORK:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_TIMEOUT:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_INVALID_RESPONSE:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SERVER:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_CREATE_VIEW:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/xiaomi/ad/common/pojo/AdError;->mValue:I

    .line 19
    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/ad/common/pojo/AdError;
    .locals 1

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->STATUS_OK:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NO_AD:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NETWORK:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_TIMEOUT:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 32
    :pswitch_4
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_INVALID_RESPONSE:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 34
    :pswitch_5
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SERVER:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SDK_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 38
    :pswitch_7
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 40
    :pswitch_8
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_CREATE_VIEW:Lcom/xiaomi/ad/common/pojo/AdError;

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/common/pojo/AdError;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/AdError;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/common/pojo/AdError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/common/pojo/AdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/common/pojo/AdError;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/AdError;->mValue:I

    return v0
.end method
