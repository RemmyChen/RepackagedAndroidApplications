.class public Ljp/co/imobile/sdkads/android/ImobileInlineView;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljp/co/imobile/sdkads/android/ImobileInlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp/co/imobile/sdkads/android/ImobileInlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x5

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljp/co/imobile/sdkads/android/ImobileInlineView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, " ImobileInlineView V2.0.18"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Ljp/co/imobile/sdkads/android/ImobileInlineView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0x333334

    invoke-virtual {p0, v0}, Ljp/co/imobile/sdkads/android/ImobileInlineView;->setBackgroundColor(I)V

    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljp/co/imobile/sdkads/android/ImobileIconParams;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/ImobileIconParams;-><init>()V

    if-eqz p2, :cond_a

    const-string v1, "pid"

    invoke-interface {p2, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v0, "ImobileInlineView XML Parameter Error"

    const-string v1, "Please set publisherId."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "mid"

    invoke-interface {p2, v6, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "ImobileInlineView XML Parameter Error"

    const-string v1, "Please set mediaId."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "sid"

    invoke-interface {p2, v6, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v0, "ImobileInlineView XML Parameter Error"

    const-string v1, "Please set spotId."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, v1, v2, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->registerSpotInline(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->start(Ljava/lang/String;)V

    const-string v1, "iconNumber"

    const/4 v2, 0x4

    invoke-interface {p2, v6, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconNumber(I)V

    const-string v1, "iconSize"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconSize(I)V

    const-string v1, "iconViewLayoutWidth"

    const/4 v2, 0x0

    invoke-interface {p2, v6, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "iconViewLayoutWidth"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconViewLayoutWidth(I)V

    :cond_7
    const-string v1, "iconTitleEnable"

    invoke-interface {p2, v6, v1, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleEnable(Z)V

    const-string v1, "iconTitleFontColor"

    invoke-interface {p2, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "iconTitleFontColor"

    invoke-interface {p2, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleFontColor(Ljava/lang/String;)V

    :cond_8
    const-string v1, "iconTitleFontSize"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleFontSize(I)V

    const-string v1, "iconTitleOffset"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleOffset(I)V

    const-string v1, "iconTitleShadowEnable"

    invoke-interface {p2, v6, v1, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleShadowEnable(Z)V

    const-string v1, "iconTitleShadowColor"

    invoke-interface {p2, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "iconTitleShadowColor"

    invoke-interface {p2, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleShadowColor(Ljava/lang/String;)V

    :cond_9
    const-string v1, "iconTitleShadowDx"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleShadowDx(I)V

    const-string v1, "iconTitleShadowDy"

    invoke-interface {p2, v6, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileIconParams;->setIconTitleShadowDy(I)V

    invoke-static {p1, v3, p0, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;)V

    goto/16 :goto_0

    .restart local p1    # "context":Landroid/content/Context;
    :cond_a
    const-string v0, "ImobileInlineView XML Parameter Error"

    const-string v1, "Please ser spotId."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
