.class public final enum Lcom/xiaomi/ad/common/pojo/AdSize;
.super Ljava/lang/Enum;
.source "AdSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/ad/common/pojo/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/common/pojo/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaomi/ad/common/pojo/AdSize;

    sput-object v0, Lcom/xiaomi/ad/common/pojo/AdSize;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdSize;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/common/pojo/AdSize;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/xiaomi/ad/common/pojo/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/AdSize;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/common/pojo/AdSize;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdSize;->$VALUES:[Lcom/xiaomi/ad/common/pojo/AdSize;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/common/pojo/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/common/pojo/AdSize;

    return-object v0
.end method
