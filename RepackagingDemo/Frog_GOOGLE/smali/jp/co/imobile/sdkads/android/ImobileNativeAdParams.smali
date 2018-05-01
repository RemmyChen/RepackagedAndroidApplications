.class public Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a:Ljava/lang/Boolean;

    iput v1, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->b:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method final b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestAdCount"

    iget v2, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NativeAdParams data to ad view data create."

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    const-string v0, "parse"

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljp/co/imobile/sdkads/android/ax;

    sget-object v1, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-direct {v0, v1}, Ljp/co/imobile/sdkads/android/ax;-><init>(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    throw v0
.end method

.method public setNativeImageLoadFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "nativeImageGetFlag"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public setRequestAdCount(I)V
    .locals 0
    .param p1, "requestAdCount"    # I

    .prologue
    iput p1, p0, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->b:I

    return-void
.end method
