.class final Ljp/co/imobile/sdkads/android/o;
.super Ljp/co/imobile/sdkads/android/p;


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/imobile/sdkads/android/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/p;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/o;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljp/co/imobile/sdkads/android/o;)Ljp/co/imobile/sdkads/android/o;
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "conditions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljp/co/imobile/sdkads/android/o;

    invoke-direct {v0}, Ljp/co/imobile/sdkads/android/o;-><init>()V

    const-string v1, "operator"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljp/co/imobile/sdkads/android/o;->a:Ljava/lang/String;

    const-string v1, "not"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljp/co/imobile/sdkads/android/o;->b:Ljava/lang/Boolean;

    const-string v1, "conditions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Ljp/co/imobile/sdkads/android/o;->a(Lorg/json/JSONObject;Ljp/co/imobile/sdkads/android/o;)Ljp/co/imobile/sdkads/android/o;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v0, v2}, Ljp/co/imobile/sdkads/android/o;->a(Ljp/co/imobile/sdkads/android/p;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "conditionDetails"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v5, Ljp/co/imobile/sdkads/android/r;

    invoke-direct {v5}, Ljp/co/imobile/sdkads/android/r;-><init>()V

    const-string v1, "operator"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Ljp/co/imobile/sdkads/android/r;->a:Ljava/lang/String;

    const-string v1, "not"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Ljp/co/imobile/sdkads/android/r;->b:Ljava/lang/Boolean;

    const-string v1, "conditionDetails"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v4, v3

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_7

    new-instance v7, Ljp/co/imobile/sdkads/android/q;

    invoke-direct {v7}, Ljp/co/imobile/sdkads/android/q;-><init>()V

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Ljp/co/imobile/sdkads/android/q;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v1, "ct"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    const-string v9, "contain"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    if-ne v1, v9, :cond_5

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Ljp/co/imobile/sdkads/android/q;->a:Ljava/lang/Boolean;

    const-string v1, "action"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Ljp/co/imobile/sdkads/android/q;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Ljp/co/imobile/sdkads/android/q;->a:Ljava/lang/Boolean;

    :cond_4
    invoke-virtual {v5, v7}, Ljp/co/imobile/sdkads/android/r;->a(Ljp/co/imobile/sdkads/android/q;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v1

    const-string v9, "nm"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljp/co/imobile/sdkads/android/al;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    const-string v1, "nm"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/al;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    invoke-direct {p1, v5}, Ljp/co/imobile/sdkads/android/o;->a(Ljp/co/imobile/sdkads/android/p;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Ad targeting condition format error."

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    const-string v0, "parse"

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljp/co/imobile/sdkads/android/ax;

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v0, v1}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljp/co/imobile/sdkads/android/p;)V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Boolean;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/p;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/p;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljp/co/imobile/sdkads/android/o;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
