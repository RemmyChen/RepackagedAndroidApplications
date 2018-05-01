.class Lcom/xiaomi/ad/NativeAdView$1;
.super Ljava/lang/Object;
.source "NativeAdView.java"

# interfaces
.implements Lcom/xiaomi/ad/AdViewCreator$Listener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/NativeAdView;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/NativeAdView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0}, Lcom/xiaomi/ad/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/a/d;->M(Landroid/content/Context;)Lcom/xiaomi/ad/internal/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    const-class v2, Lcom/xiaomi/ad/common/pojo/AdEvent;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/internal/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 58
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->access$002(Lcom/xiaomi/ad/NativeAdView;Z)Z

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAdView;->access$100(Lcom/xiaomi/ad/NativeAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/ad/NativeAdView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->access$200(Lcom/xiaomi/ad/NativeAdView;Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onViewError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdView$1;->this$0:Lcom/xiaomi/ad/NativeAdView;

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->onError(I)V

    .line 69
    return-void
.end method
