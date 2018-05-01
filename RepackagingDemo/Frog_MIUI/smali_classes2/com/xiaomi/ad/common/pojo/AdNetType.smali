.class public final enum Lcom/xiaomi/ad/common/pojo/AdNetType;
.super Ljava/lang/Enum;
.source "AdNetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/common/pojo/AdNetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_2G:Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_3G:Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_4G:Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_ALL:Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_MOBILE:Lcom/xiaomi/ad/common/pojo/AdNetType;

.field public static final enum NETWORK_WIFI:Lcom/xiaomi/ad/common/pojo/AdNetType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v7, v4}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_WIFI:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 6
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_2G"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_2G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 7
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_3G"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_3G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 8
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_4G"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_4G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 9
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_MOBILE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_MOBILE:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 10
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    const-string/jumbo v1, "NETWORK_ALL"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_ALL:Lcom/xiaomi/ad/common/pojo/AdNetType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/ad/common/pojo/AdNetType;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_WIFI:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_2G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_3G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_4G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_MOBILE:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_ALL:Lcom/xiaomi/ad/common/pojo/AdNetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdNetType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/AdNetType;->mValue:I

    .line 15
    iput p3, p0, Lcom/xiaomi/ad/common/pojo/AdNetType;->mValue:I

    .line 16
    return-void
.end method

.method public static is2GAllowed(I)Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_2G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdNetType;->value()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is3GAllowed(I)Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_3G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdNetType;->value()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is4GAllowed(I)Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_4G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdNetType;->value()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileAllowed(I)Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_MOBILE:Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdNetType;->value()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiAllowed(I)Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_WIFI:Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdNetType;->value()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(I)Lcom/xiaomi/ad/common/pojo/AdNetType;
    .locals 1

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_MOBILE:Lcom/xiaomi/ad/common/pojo/AdNetType;

    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_WIFI:Lcom/xiaomi/ad/common/pojo/AdNetType;

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_2G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_3G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_4G:Lcom/xiaomi/ad/common/pojo/AdNetType;

    goto :goto_0

    .line 29
    :pswitch_5
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->NETWORK_ALL:Lcom/xiaomi/ad/common/pojo/AdNetType;

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/common/pojo/AdNetType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/AdNetType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/common/pojo/AdNetType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdNetType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdNetType;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/common/pojo/AdNetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/common/pojo/AdNetType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/AdNetType;->mValue:I

    return v0
.end method
