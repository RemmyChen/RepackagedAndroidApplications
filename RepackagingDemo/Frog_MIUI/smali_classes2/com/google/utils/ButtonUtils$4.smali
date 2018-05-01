.class final Lcom/google/utils/ButtonUtils$4;
.super Ljava/lang/Object;
.source "ButtonUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/utils/ButtonUtils;->showButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-static {}, Lcom/google/littleDog/LittleDog;->postShowInterstitial()V

    .line 208
    return-void
.end method
