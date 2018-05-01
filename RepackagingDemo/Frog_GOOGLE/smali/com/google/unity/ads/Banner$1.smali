.class Lcom/google/unity/ads/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/Banner;->create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/Banner;

.field final synthetic val$adSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$positionCode:I

.field final synthetic val$publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    iput-object p2, p0, Lcom/google/unity/ads/Banner$1;->val$publisherId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/unity/ads/Banner$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    iput p4, p0, Lcom/google/unity/ads/Banner$1;->val$positionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v1, p0, Lcom/google/unity/ads/Banner$1;->val$publisherId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/unity/ads/Banner$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-static {v0, v1, v2}, Lcom/google/unity/ads/Banner;->access$000(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V

    .line 118
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$100(Lcom/google/unity/ads/Banner;)V

    .line 119
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    invoke-static {v0, v3}, Lcom/google/unity/ads/Banner;->access$202(Lcom/google/unity/ads/Banner;I)I

    .line 120
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    invoke-static {v0, v3}, Lcom/google/unity/ads/Banner;->access$302(Lcom/google/unity/ads/Banner;I)I

    .line 121
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    iget v1, p0, Lcom/google/unity/ads/Banner$1;->val$positionCode:I

    invoke-static {v0, v1}, Lcom/google/unity/ads/Banner;->access$402(Lcom/google/unity/ads/Banner;I)I

    .line 122
    iget-object v0, p0, Lcom/google/unity/ads/Banner$1;->this$0:Lcom/google/unity/ads/Banner;

    invoke-static {v0, v3}, Lcom/google/unity/ads/Banner;->access$502(Lcom/google/unity/ads/Banner;Z)Z

    .line 123
    return-void
.end method
