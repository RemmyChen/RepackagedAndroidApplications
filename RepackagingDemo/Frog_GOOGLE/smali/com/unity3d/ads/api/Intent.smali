.class public Lcom/unity3d/ads/api/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/api/Intent$IntentException;,
        Lcom/unity3d/ads/api/Intent$IntentError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canOpenIntent(Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "intentData"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1}, Lcom/unity3d/ads/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v2

    .line 164
    .local v2, "resolvable":Z
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/api/Intent$IntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Z
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lcom/unity3d/ads/api/Intent$IntentException;
    const-string v3, "Couldn\'t resolve intent"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 167
    invoke-virtual {v0}, Lcom/unity3d/ads/api/Intent$IntentException;->getError()Lcom/unity3d/ads/api/Intent$IntentError;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/ads/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static canOpenIntents(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 12
    .param p0, "intents"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 173
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v7, "results":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 175
    .local v5, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 177
    .local v4, "intentData":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/unity3d/ads/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v3

    .line 180
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/unity3d/ads/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v6

    .line 181
    .local v6, "resolvable":Z
    invoke-virtual {v7, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/unity3d/ads/api/Intent$IntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "resolvable":Z
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/unity3d/ads/api/Intent$IntentException;
    const-string v8, "Exception parsing intent"

    invoke-static {v8, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    invoke-virtual {v0}, Lcom/unity3d/ads/api/Intent$IntentException;->getError()Lcom/unity3d/ads/api/Intent$IntentError;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/ads/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 192
    .end local v0    # "e":Lcom/unity3d/ads/api/Intent$IntentException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "intentData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 186
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "intentData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/unity3d/ads/api/Intent$IntentError;->JSON_EXCEPTION:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 191
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "intentData":Lorg/json/JSONObject;
    :cond_0
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v7, v8, v11

    invoke-virtual {p1, v8}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static checkIntentResolvable(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static getStartingActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "act":Landroid/app/Activity;
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private static intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 12
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/ads/api/Intent$IntentException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 202
    const-string v10, "className"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "className":Ljava/lang/String;
    const-string v10, "packageName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 204
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "action":Ljava/lang/String;
    const-string v10, "uri"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 206
    .local v9, "uri":Ljava/lang/String;
    const-string v10, "mimeType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 207
    .local v6, "mimeType":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 208
    .local v1, "categories":Lorg/json/JSONArray;
    const-string v10, "flags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 209
    .local v4, "flags":Ljava/lang/Integer;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 211
    .local v3, "extras":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 212
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 213
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 215
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 216
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v5

    .line 220
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 222
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 223
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_2
    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_3
    if-eqz v9, :cond_4

    .line 229
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 231
    :cond_4
    if-eqz v6, :cond_5

    .line 232
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_6

    .line 235
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    :cond_6
    invoke-static {v5, v1}, Lcom/unity3d/ads/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 238
    new-instance v10, Lcom/unity3d/ads/api/Intent$IntentException;

    sget-object v11, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    invoke-direct {v10, v11, v1}, Lcom/unity3d/ads/api/Intent$IntentException;-><init>(Lcom/unity3d/ads/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v10

    .line 240
    :cond_7
    invoke-static {v5, v3}, Lcom/unity3d/ads/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 241
    new-instance v10, Lcom/unity3d/ads/api/Intent$IntentException;

    sget-object v11, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    invoke-direct {v10, v11, v3}, Lcom/unity3d/ads/api/Intent$IntentException;-><init>(Lcom/unity3d/ads/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v10
.end method

.method public static launch(Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 14
    .param p0, "intentData"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 29
    const-string v10, "className"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    .local v2, "className":Ljava/lang/String;
    const-string v10, "packageName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 31
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v10, "uri"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 33
    .local v9, "uri":Ljava/lang/String;
    const-string v10, "mimeType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 34
    .local v6, "mimeType":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 35
    .local v1, "categories":Lorg/json/JSONArray;
    const-string v10, "flags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 36
    .local v4, "flags":Ljava/lang/Integer;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 38
    .local v3, "extras":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 39
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 40
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 42
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-eqz v5, :cond_9

    .line 72
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 73
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 83
    :goto_1
    return-void

    .line 47
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 49
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_2
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_3
    if-eqz v9, :cond_4

    .line 56
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    :cond_4
    if-eqz v6, :cond_5

    .line 59
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_6

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    :cond_6
    invoke-static {v5, v1}, Lcom/unity3d/ads/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 65
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v1, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 67
    :cond_7
    invoke-static {v5, v3}, Lcom/unity3d/ads/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 68
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_8
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_9
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "categories"    # Lorg/json/JSONArray;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t parse categories for intent"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    const/4 v2, 0x0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 130
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 132
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 133
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 139
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse launch intent extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x0

    .line 101
    if-eqz p1, :cond_1

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 108
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "item":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "key":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 117
    .local v4, "value":Ljava/lang/Object;
    invoke-static {p0, v3, v4}, Lcom/unity3d/ads/api/Intent;->setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    return v5

    .line 112
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Couldn\'t parse extras"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method
