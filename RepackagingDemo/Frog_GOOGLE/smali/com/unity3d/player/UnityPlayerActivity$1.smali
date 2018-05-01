# PATCH START

.class Lcom/unity3d/player/UnityPlayerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayerActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/player/UnityPlayerActivity;

    .prologue
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity$1;->this$0:Lcom/unity3d/player/UnityPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity$1;->this$0:Lcom/unity3d/player/UnityPlayerActivity;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayerActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity$1;->this$0:Lcom/unity3d/player/UnityPlayerActivity;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity$1;->this$0:Lcom/unity3d/player/UnityPlayerActivity;

    #const/4 v0, 0x1 ## address for activity_main

    #invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(I)V

    #iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity$1;->this$0:Lcom/unity3d/player/UnityPlayerActivity;

    #invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayerActivity;->getApplicationContext()Landroid/content/Context;

    #move-result-object v0

    #const-string/jumbo v1, "Gotta love ads!"

    #const/4 v2, 0x1

    #invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #move-result-object v0

    #invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

# PATCH END


