.class public final enum Lcom/xiaomi/ad/common/pojo/ActivityViewType;
.super Ljava/lang/Enum;
.source "ActivityViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/common/pojo/ActivityViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/common/pojo/ActivityViewType;

.field public static final enum DOWNLOAD_CARD:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

.field public static final enum UNKNOWN:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

.field public static final enum WEBVIEW:Lcom/xiaomi/ad/common/pojo/ActivityViewType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    const-string/jumbo v1, "WEBVIEW"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/ad/common/pojo/ActivityViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->WEBVIEW:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    .line 8
    new-instance v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    const-string/jumbo v1, "DOWNLOAD_CARD"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/ad/common/pojo/ActivityViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->DOWNLOAD_CARD:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    .line 9
    new-instance v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/ad/common/pojo/ActivityViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->UNKNOWN:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    sget-object v1, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->WEBVIEW:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->DOWNLOAD_CARD:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->UNKNOWN:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/ActivityViewType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->mValue:I

    .line 14
    iput p3, p0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->mValue:I

    .line 15
    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/ad/common/pojo/ActivityViewType;
    .locals 1

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 24
    sget-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->UNKNOWN:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->WEBVIEW:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->DOWNLOAD_CARD:Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/common/pojo/ActivityViewType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/common/pojo/ActivityViewType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->$VALUES:[Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/common/pojo/ActivityViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/common/pojo/ActivityViewType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/ActivityViewType;->mValue:I

    return v0
.end method
