.class public final enum Lcom/xiaomi/ad/common/pojo/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/common/pojo/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_BANNER:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_CUSTOM_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_GAME_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

.field public static final enum AD_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;


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
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_NATIVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 6
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_SPLASH"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 7
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_INTERSTITIAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 8
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_GAME_VIDEO"

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_GAME_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 9
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_VIDEO"

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 10
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_BANNER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_BANNER:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 11
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_CUSTOM_NEWSFEED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_CUSTOM_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 12
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_STANDARD_NEWSFEED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 13
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdType;

    const-string/jumbo v1, "AD_UNKNOWN"

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/common/pojo/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 4
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/ad/common/pojo/AdType;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdType;->AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdType;->AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdType;->AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdType;->AD_GAME_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/ad/common/pojo/AdType;->AD_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_BANNER:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_CUSTOM_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/AdType;->mValue:I

    .line 18
    iput p3, p0, Lcom/xiaomi/ad/common/pojo/AdType;->mValue:I

    .line 19
    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/ad/common/pojo/AdType;
    .locals 3

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 40
    :goto_0
    return-object v0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_SPLASH:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_INTERSTITIAL:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_GAME_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 32
    :pswitch_4
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_VIDEO:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 34
    :pswitch_5
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_BANNER:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_CUSTOM_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 38
    :pswitch_7
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 40
    :pswitch_8
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/common/pojo/AdType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/AdType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/common/pojo/AdType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/common/pojo/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/common/pojo/AdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/AdType;->mValue:I

    return v0
.end method
