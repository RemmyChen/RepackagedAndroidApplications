.class Lcom/xiaomi/ad/NativeAdView$4;
.super Ljava/lang/Object;
.source "NativeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/NativeAdView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/NativeAdView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAdView$4;->this$0:Lcom/xiaomi/ad/NativeAdView;

    iput-object p2, p0, Lcom/xiaomi/ad/NativeAdView$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$4;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAdView;->access$300(Lcom/xiaomi/ad/NativeAdView;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$4;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$4;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAdView;->access$300(Lcom/xiaomi/ad/NativeAdView;)Lcom/xiaomi/ad/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAdView$4;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/AdListener;->onViewCreated(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
