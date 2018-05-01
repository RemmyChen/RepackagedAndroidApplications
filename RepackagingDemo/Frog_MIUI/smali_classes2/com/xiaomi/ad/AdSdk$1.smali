.class final Lcom/xiaomi/ad/AdSdk$1;
.super Ljava/lang/Thread;
.source "AdSdk.java"


# instance fields
.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/ad/AdSdk$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/ad/AdSdk;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/AdSdk$1;->val$appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/MiGameStatistics;->sendMiGameDAU(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    const-wide/32 v0, 0x2932e00

    invoke-static {v0, v1}, Lcom/xiaomi/ad/AdSdk$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    return-void
.end method
