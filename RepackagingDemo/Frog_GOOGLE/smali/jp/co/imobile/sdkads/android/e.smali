.class final Ljp/co/imobile/sdkads/android/e;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ay;

.field final synthetic b:Ljp/co/imobile/sdkads/android/a;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/a;Ljp/co/imobile/sdkads/android/ay;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljp/co/imobile/sdkads/android/a;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/a;->e:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/a;->e:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 15
    .param p1, "web"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    move-object/from16 v2, p1

    check-cast v2, Ljp/co/imobile/sdkads/android/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v9, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    const-string v1, "api://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "//"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "//"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v1, "?cb="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "?cb="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "&values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    const-string v1, "&values="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "&values="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    const-string v1, "&adclose="

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "&adclose="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "&values="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " callbackFunctionName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " adclose:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    :try_start_1
    const-string v1, "GetSpotInfo"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->j:Ljp/co/imobile/sdkads/android/ImobileIconParams;

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v4, v4, Ljp/co/imobile/sdkads/android/a;->k:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    iget-object v5, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v5, v5, Ljp/co/imobile/sdkads/android/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v5}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    move-object v3, v10

    move-object v4, v11

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v4}, Ljp/co/imobile/sdkads/android/a;->d(Ljp/co/imobile/sdkads/android/a;)V

    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "();"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljp/co/imobile/sdkads/android/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Ad View Data Create Error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErroCode(value)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ErroCode(url)"

    invoke-static {v2, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v1, "GetDeviceInfo"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/al;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_4
    const-string v1, "SetAdSizeAndPosition"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "left"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "top"

    invoke-static {v1, v4}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    const-string v5, "width"

    invoke-static {v1, v5}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    invoke-static {v1, v6}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v6, v3, v4, v5, v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;IIII)V

    const-string v1, "Ad view transform Complate."

    const-string v3, ""

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"status\":\"succeed\"}"

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_5
    const-string v1, "ShowAdReady"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    const-string v5, "effectTime"

    invoke-static {v1, v5}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Ljp/co/imobile/sdkads/android/a;->a:Ljava/util/Date;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    sget-object v3, Ljp/co/imobile/sdkads/android/n;->c:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/n;)V

    const-string v1, "Ad view create Complate."

    const-string v3, ""

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_6
    const-string v1, "ImpSend"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdShowCompleted()V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    new-instance v3, Ljp/co/imobile/sdkads/android/l;

    invoke-direct {v3, v1, v13}, Ljp/co/imobile/sdkads/android/l;-><init>(Ljp/co/imobile/sdkads/android/j;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Ljp/co/imobile/sdkads/android/m;

    invoke-direct {v5, v1, v3, v13}, Ljp/co/imobile/sdkads/android/m;-><init>(Ljp/co/imobile/sdkads/android/j;Ljava/util/concurrent/Future;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_7
    const-string v1, "ClickSend"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->b:Ljava/util/Map;

    const-string v4, "advertisementId"

    invoke-static {v3, v4}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "clickUrl"

    invoke-static {v3, v4}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_9

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_3
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v4}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCliclkCompleted()V

    const-string v3, "Ad View click send complete."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " viewHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v3, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->o:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->c:Ljp/co/imobile/sdkads/android/i;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->o:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/i;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :cond_8
    :goto_4
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->c()Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    move-result-object v1

    sget-object v3, Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;->DIALOG:Ljp/co/imobile/sdkads/android/ImobileSdkAd$AdShowType;

    if-ne v1, v3, :cond_27

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->b(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_9
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&vh="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    sget-object v3, Ljp/co/imobile/sdkads/android/n;->e:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/n;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:error("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljp/co/imobile/sdkads/android/i;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v2, v2, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ay;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    const-string v1, "Ad View error."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ErroCode(api error)"

    invoke-static {v1, v2}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    :try_start_3
    const-string v1, "Ad View click send failed."

    const-string v3, ""

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->UNKNOWN:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ay;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    const/4 v3, 0x0

    iput-object v3, v1, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    goto/16 :goto_4

    :cond_b
    const-string v1, "CloseAd"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Ad View closed."

    const-string v3, ""

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->b(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_c
    const-string v1, "ShowAdBeforeComplete"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Over Check : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->m:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->m:Ljava/util/Date;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->m:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_f

    :cond_d
    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "left"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "top"

    invoke-static {v1, v4}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    const-string v5, "width"

    invoke-static {v1, v5}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    invoke-static {v1, v6}, Ljp/co/imobile/sdkads/android/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    if-eqz v5, :cond_e

    if-eqz v1, :cond_e

    iget-object v6, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v6, v3, v4, v5, v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;IIII)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->o:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->o:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    :cond_e
    move-object v1, v10

    move-object v3, v11

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_1

    :cond_f
    const-string v1, "Show Message"

    const-string v3, "ImobileSdkAd show is timeout."

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v4, v4, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v5, Ljp/co/imobile/sdkads/android/FailNotificationReason;->SHOW_TIMEOUT:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v4, v5}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v5, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v5, v5, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v4, v5}, Ljp/co/imobile/sdkads/android/ay;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    goto :goto_5

    :cond_10
    const-string v1, "OpenImobileSite"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_11
    const-string v1, "DeviceRotatedComplete"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "IsAppInstall"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_12
    const-string v1, "IsAppInstallFromAppId"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljp/co/imobile/sdkads/android/al;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_13
    const-string v1, "StartApp"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v13}, Ljp/co/imobile/sdkads/android/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->b(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_14
    const-string v1, "StartAppFromAppId"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v13}, Ljp/co/imobile/sdkads/android/al;->b(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->b(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_15
    const-string v1, "StartAppFromUrl"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_16
    const-string v1, "SendRequestFromHtml"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->c:Ljp/co/imobile/sdkads/android/i;

    invoke-static {v13, v10, v1}, Ljp/co/imobile/sdkads/android/al;->a(Ljava/lang/String;Ljava/lang/String;Ljp/co/imobile/sdkads/android/i;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_17
    const-string v1, "ApplicationTargeting"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-eqz v1, :cond_18

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "UTF8"

    invoke-static {v13, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/al;->a(Lorg/json/JSONObject;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    const-string v1, "ApplicationTargeting data error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ErroCode(t data error1)"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljp/co/imobile/sdkads/android/ax;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v1, v3}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v1

    :catch_3
    move-exception v1

    const-string v1, "ApplicationTargeting data error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ErroCode(t data error2)"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljp/co/imobile/sdkads/android/ax;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v1, v3}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v1

    :cond_18
    const-string v1, "SomeApplicationTargeting"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_5 .. :try_end_5} :catch_1

    move-result v1

    if-eqz v1, :cond_1a

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    const-string v5, "UTF8"

    invoke-static {v13, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "targetApps"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_19

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "advertisementId"

    const-string v9, "advertisementId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "result"

    new-instance v9, Lorg/json/JSONObject;

    const-string v14, "condition"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljp/co/imobile/sdkads/android/al;->a(Lorg/json/JSONObject;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    const-string v1, "result"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :catch_4
    move-exception v1

    :try_start_7
    const-string v1, "ApplicationTargeting data error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ErroCode(t data error1)"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljp/co/imobile/sdkads/android/ax;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v1, v3}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v1

    :catch_5
    move-exception v1

    const-string v1, "ApplicationTargeting data error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ErroCode(t data error2)"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljp/co/imobile/sdkads/android/ax;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v1, v3}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v1

    :cond_1a
    const-string v1, "NotDeliveryAd"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    sget-object v3, Ljp/co/imobile/sdkads/android/n;->d:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/n;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->NOT_DELIVERY_AD:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ay;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_1b
    const-string v1, "IsAdViewActive"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v1

    sget-object v3, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    if-ne v1, v3, :cond_1c

    invoke-virtual {v2}, Ljp/co/imobile/sdkads/android/i;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    const-string v1, "{\"result\":\"false\"}"

    :goto_7
    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/a;->c(Ljp/co/imobile/sdkads/android/a;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->bringToFront()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsAdViewActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_1d
    const-string v1, "{\"result\":\"true\"}"

    goto :goto_7

    :cond_1e
    const-string v1, "WritePreference"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "key"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-static {v1, v4}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ljp/co/imobile/sdkads/android/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_1f
    const-string v1, "ReadPreference"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "key"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/al;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"result\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_20
    const-string v1, "RemovePreference"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "key"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/al;->d(Ljava/lang/String;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_21
    const-string v1, "ShowDialog"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "title"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-static {v1, v4}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "okButtonText"

    invoke-static {v1, v5}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "okButtonAction"

    invoke-static {v1, v6}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cancelButtonText"

    invoke-static {v1, v7}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cancelButtonAction"

    invoke-static {v1, v8}, Ljp/co/imobile/sdkads/android/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static/range {v1 .. v8}, Ljp/co/imobile/sdkads/android/al;->a(Landroid/content/Context;Ljp/co/imobile/sdkads/android/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_23
    const-string v1, "ReceiveNativeData"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {v13}, Ljp/co/imobile/sdkads/android/al;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "ads"

    invoke-static {v1, v4}, Ljp/co/imobile/sdkads/android/al;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_24

    new-instance v5, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v4, v1}, Ljp/co/imobile/sdkads/android/al;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v7, v7, Ljp/co/imobile/sdkads/android/a;->k:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-direct {v5, v6, v2, v7}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;-><init>(Lorg/json/JSONObject;Ljp/co/imobile/sdkads/android/i;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v4, v4, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v4, v3}, Ljp/co/imobile/sdkads/android/ay;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Ljava/util/List;)V

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_25
    const-string v1, "ReloadTemplateHtml"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old templateRequestUrl :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/ay;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , new Url :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->n:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ay;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Ljp/co/imobile/sdkads/android/f;

    invoke-direct {v3, p0, v13}, Ljp/co/imobile/sdkads/android/f;-><init>(Ljp/co/imobile/sdkads/android/e;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_26
    const-string v1, "Error"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    sget-object v3, Ljp/co/imobile/sdkads/android/n;->e:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/a;->a(Ljp/co/imobile/sdkads/android/n;)V

    const-string v1, "Ad View error."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ErroCode(script error)"

    invoke-static {v1, v3}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/a;->p:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    sget-object v3, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/e;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/e;->b:Ljp/co/imobile/sdkads/android/a;

    iget-object v3, v3, Ljp/co/imobile/sdkads/android/a;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1, v3}, Ljp/co/imobile/sdkads/android/ay;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :cond_27
    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_1

    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljp/co/imobile/sdkads/android/i;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljp/co/imobile/sdkads/android/ax; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method
