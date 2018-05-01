.class public Lcom/xiaomi/ad/internal/b/a;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/internal/b/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow"


# instance fields
.field protected bH:Landroid/widget/PopupWindow;

.field protected bI:Landroid/view/View;

.field protected bJ:I

.field private bK:Lcom/xiaomi/ad/internal/b/a$a;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/b/a;->init()V

    .line 26
    return-void
.end method

.method private N(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bI:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/b/a;->bI:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 91
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 99
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 100
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    const/16 v1, 0x7cf

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/ad/internal/b/a;->a(Landroid/widget/PopupWindow;I)V

    .line 104
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/PopupWindow;I)V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "setWindowType e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/b/a;->N(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/ad/internal/b/a$a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xiaomi/ad/internal/b/a;->bK:Lcom/xiaomi/ad/internal/b/a$a;

    .line 76
    return-void
.end method

.method public final b(Landroid/view/View;)Lcom/xiaomi/ad/internal/b/a;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/b/a;->removeAllViews()V

    .line 134
    iput-object p1, p0, Lcom/xiaomi/ad/internal/b/a;->bI:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bI:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/ad/internal/b/a;->addView(Landroid/view/View;)V

    .line 136
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/xiaomi/ad/internal/b/a;->dismiss()V

    .line 151
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "dismiss e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public h(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/xiaomi/ad/internal/b/a;->bJ:I

    .line 30
    return-void
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "isShowing e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bK:Lcom/xiaomi/ad/internal/b/a$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bK:Lcom/xiaomi/ad/internal/b/a$a;

    invoke-interface {v0, p0}, Lcom/xiaomi/ad/internal/b/a$a;->onShow(Lcom/xiaomi/ad/internal/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "onAttachedToWindow e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bK:Lcom/xiaomi/ad/internal/b/a$a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bK:Lcom/xiaomi/ad/internal/b/a$a;

    invoke-interface {v0, p0}, Lcom/xiaomi/ad/internal/b/a$a;->onDismiss(Lcom/xiaomi/ad/internal/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "onDetachedFromWindow e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "setHeight e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "setWidth e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final showAsDropDown(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "showAsDropDown e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final showAtLocation(Landroid/view/View;III)V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "showAtLocation e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/b/a;->bH:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v1, "PopupWindow"

    const-string/jumbo v2, "update e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
