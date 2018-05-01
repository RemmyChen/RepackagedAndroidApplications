.class Lcom/xiaomi/ad/AdViewCreator$2;
.super Ljava/lang/Object;
.source "AdViewCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/AdViewCreator;

.field final synthetic val$error:Lcom/xiaomi/ad/common/pojo/AdError;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/AdViewCreator;Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xiaomi/ad/AdViewCreator$2;->this$0:Lcom/xiaomi/ad/AdViewCreator;

    iput-object p2, p0, Lcom/xiaomi/ad/AdViewCreator$2;->val$error:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator$2;->this$0:Lcom/xiaomi/ad/AdViewCreator;

    invoke-static {v0}, Lcom/xiaomi/ad/AdViewCreator;->access$000(Lcom/xiaomi/ad/AdViewCreator;)Lcom/xiaomi/ad/AdViewCreator$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/ad/AdViewCreator$2;->this$0:Lcom/xiaomi/ad/AdViewCreator;

    invoke-static {v0}, Lcom/xiaomi/ad/AdViewCreator;->access$000(Lcom/xiaomi/ad/AdViewCreator;)Lcom/xiaomi/ad/AdViewCreator$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/AdViewCreator$2;->val$error:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/AdViewCreator$Listener;->onViewError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 83
    :cond_0
    return-void
.end method
