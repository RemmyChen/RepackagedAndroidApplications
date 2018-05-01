.class Lcom/google/unity/ads/Banner$11;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/Banner;->setPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/Banner;

.field final synthetic val$positionCode:I


# direct methods
.method constructor <init>(Lcom/google/unity/ads/Banner;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/unity/ads/Banner$11;->this$0:Lcom/google/unity/ads/Banner;

    iput p2, p0, Lcom/google/unity/ads/Banner$11;->val$positionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/unity/ads/Banner$11;->this$0:Lcom/google/unity/ads/Banner;

    iget v1, p0, Lcom/google/unity/ads/Banner$11;->val$positionCode:I

    invoke-static {v0, v1}, Lcom/google/unity/ads/Banner;->access$402(Lcom/google/unity/ads/Banner;I)I

    .line 374
    iget-object v0, p0, Lcom/google/unity/ads/Banner$11;->this$0:Lcom/google/unity/ads/Banner;

    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$900(Lcom/google/unity/ads/Banner;)V

    .line 375
    return-void
.end method
