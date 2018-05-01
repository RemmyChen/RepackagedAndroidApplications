.class Lcom/google/littleDog/SplashActivity$3$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/littleDog/SplashActivity$3;->onAdClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/littleDog/SplashActivity$3;


# direct methods
.method constructor <init>(Lcom/google/littleDog/SplashActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/littleDog/SplashActivity$3;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/littleDog/SplashActivity$3$1;->this$1:Lcom/google/littleDog/SplashActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity$3$1;->this$1:Lcom/google/littleDog/SplashActivity$3;

    iget-object v0, v0, Lcom/google/littleDog/SplashActivity$3;->this$0:Lcom/google/littleDog/SplashActivity;

    const-string/jumbo v1, "adclick"

    invoke-static {v0, v1}, Lcom/google/littleDog/SplashActivity;->access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V

    .line 378
    return-void
.end method
