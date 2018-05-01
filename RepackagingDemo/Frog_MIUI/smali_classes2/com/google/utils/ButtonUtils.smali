.class public Lcom/google/utils/ButtonUtils;
.super Ljava/lang/Object;
.source "ButtonUtils.java"


# static fields
.field private static final COUNT_DOWN:I = 0x0

.field private static final RECOVER:I = 0x1

.field private static final SEL_DIALOG:I = 0x2

.field static countDown_tv:Landroid/widget/TextView;

.field static dialog:Landroid/app/AlertDialog;

.field static mContext:Landroid/content/Context;

.field static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/utils/ButtonUtils$1;

    invoke-direct {v0}, Lcom/google/utils/ButtonUtils$1;-><init>()V

    sput-object v0, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countDown(IZ)I
    .locals 7
    .param p0, "left"    # I
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "count down : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/utils/ButtonUtils;->showLog(Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_0

    .line 96
    :cond_0
    sget-object v2, Lcom/google/utils/ButtonUtils;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string/jumbo v3, "\u770b\u5e7f\u544a(%ds)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-nez p0, :cond_1

    .line 99
    sget-object v2, Lcom/google/utils/ButtonUtils;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    :goto_0
    return v1

    .line 103
    :cond_1
    sget-object v1, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 105
    add-int/lit8 v1, p0, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 106
    sget-object v1, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    sget-object v1, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    add-int/lit8 v1, p0, -0x1

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sput-object p0, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static postSelDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 128
    sget-object v0, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    sget-object v0, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method

.method public static selDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string/jumbo v2, "\u770b\u5e7f\u544a"

    new-instance v3, Lcom/google/utils/ButtonUtils$2;

    invoke-direct {v3}, Lcom/google/utils/ButtonUtils$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const-string/jumbo v2, "\u8fd8\u662f\u7b97\u4e86"

    new-instance v3, Lcom/google/utils/ButtonUtils$3;

    invoke-direct {v3}, Lcom/google/utils/ButtonUtils$3;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string/jumbo v2, "\u9886\u53d6\u798f\u5229"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const-string/jumbo v2, "\u4f60\u7684\u9f99\u5012\u4e0b\u4e86\u2026\u2026\u514d\u8d39\u9001\u4f60\u4e00\u6b21\u6ee1\u8840\u590d\u6d3b\u7684\u673a\u4f1a\uff0c\u7ee7\u7eed\u6218\u6597\u5427?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/google/utils/ButtonUtils;->dialog:Landroid/app/AlertDialog;

    .line 171
    const/4 v2, 0x5

    invoke-static {v2, v4}, Lcom/google/utils/ButtonUtils;->countDown(IZ)I

    .line 173
    sget-object v2, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 174
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 175
    sget-object v2, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    sget-object v2, Lcom/google/utils/ButtonUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    return-void
.end method

.method public static showButton()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    const/4 v8, -0x2

    .line 182
    new-instance v3, Landroid/widget/FrameLayout;

    sget-object v6, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    .local v3, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 184
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v1, "button_param":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v6, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 188
    .local v4, "manager":Landroid/view/WindowManager;
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 189
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 190
    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 191
    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 192
    const/4 v6, 0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 195
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 197
    new-instance v0, Landroid/widget/ImageButton;

    sget-object v6, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "button":Landroid/widget/ImageButton;
    :try_start_0
    sget-object v6, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "recover.png"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    new-instance v6, Lcom/google/utils/ButtonUtils$4;

    invoke-direct {v6}, Lcom/google/utils/ButtonUtils$4;-><init>()V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 212
    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-interface {v4, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "ButtonUtils_xyz"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static showTextView(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "gravity1"    # I
    .param p2, "gravity2"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 226
    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v5, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v0, "button_param":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/google/utils/ButtonUtils;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 232
    .local v2, "manager":Landroid/view/WindowManager;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 233
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 234
    const/16 v5, 0x8

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 235
    or-int v5, p1, p2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 236
    const/4 v5, 0x1

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 239
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 244
    new-instance v4, Landroid/widget/TextView;

    sget-object v5, Lcom/google/utils/ButtonUtils;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 245
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/4 v5, 0x0

    invoke-static {}, Lcom/google/utils/ButtonUtils;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {v6, v7}, Lcom/google/utils/MiUtils;->dip2px(Landroid/app/Activity;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-object v4
.end method
