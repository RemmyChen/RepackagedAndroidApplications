.class Lnet/gree/unitywebview/CWebViewPlugin$8;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->GoForward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 318
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$8;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$8;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$8;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method
