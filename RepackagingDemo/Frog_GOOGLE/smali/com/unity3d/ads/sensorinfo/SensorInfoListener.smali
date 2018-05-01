.class public Lcom/unity3d/ads/sensorinfo/SensorInfoListener;
.super Ljava/lang/Object;
.source "SensorInfoListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static _accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

.field private static _accelerometerSensor:Landroid/hardware/Sensor;

.field private static _latestAccelerometerEvent:Landroid/hardware/SensorEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    .line 19
    sput-object v0, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    .line 21
    sput-object v0, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccelerometerData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "accelerometerData":Lorg/json/JSONObject;
    sget-object v2, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    if-eqz v2, :cond_0

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "accelerometerData":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .restart local v0    # "accelerometerData":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "x"

    sget-object v3, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 52
    const-string v2, "y"

    sget-object v3, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    const-string v2, "z"

    sget-object v3, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "JSON error while constructing accelerometer data"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static isAccelerometerListenerActive()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAccelerometerListener(I)Z
    .locals 3
    .param p0, "sensorDelay"    # I

    .prologue
    .line 24
    sget-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    invoke-direct {v1}, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;-><init>()V

    sput-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    .line 28
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 30
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    .line 31
    sget-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    sget-object v2, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    return v1
.end method

.method public static stopAccelerometerListener()V
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 37
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    sget-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 38
    const/4 v1, 0x0

    sput-object v1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_accelerometerListener:Lcom/unity3d/ads/sensorinfo/SensorInfoListener;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 63
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    sput-object p1, Lcom/unity3d/ads/sensorinfo/SensorInfoListener;->_latestAccelerometerEvent:Landroid/hardware/SensorEvent;

    .line 66
    :cond_0
    return-void
.end method
