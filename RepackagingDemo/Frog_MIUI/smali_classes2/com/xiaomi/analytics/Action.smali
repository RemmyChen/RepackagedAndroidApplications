.class public abstract Lcom/xiaomi/analytics/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ACTION:Ljava/lang/String; = "_action_"

.field protected static final CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final LABEL:Ljava/lang/String; = "_label_"

.field protected static final VALUE:Ljava/lang/String; = "_value_"

.field private static bM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bL:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    .line 30
    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    const-string/jumbo v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    const-string/jumbo v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    const-string/jumbo v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    const-string/jumbo v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    const-string/jumbo v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/Action;->bM:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/xiaomi/analytics/Action;->q(Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method protected addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "_event_id_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/Action;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-object p0
.end method

.method public addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->q(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->d(Ljava/lang/String;I)V

    .line 51
    return-object p0
.end method

.method public addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->q(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/analytics/Action;->c(Ljava/lang/String;J)V

    .line 57
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->q(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/analytics/Action;
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->q(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-object p0
.end method

.method final al()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    return-object v0
.end method

.method final am()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->bL:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
