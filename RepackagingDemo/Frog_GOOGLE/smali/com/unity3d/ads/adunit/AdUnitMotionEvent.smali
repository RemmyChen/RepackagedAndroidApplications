.class public Lcom/unity3d/ads/adunit/AdUnitMotionEvent;
.super Ljava/lang/Object;
.source "AdUnitMotionEvent.java"


# instance fields
.field private _action:I

.field private _deviceId:I

.field private _eventTime:J

.field private _isObscured:Z

.field private _pressure:F

.field private _size:F

.field private _source:I

.field private _toolType:I

.field private _x:F

.field private _y:F


# direct methods
.method public constructor <init>(IZIIIFFJFF)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "isObscured"    # Z
    .param p3, "toolType"    # I
    .param p4, "source"    # I
    .param p5, "deviceId"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # J
    .param p10, "pressure"    # F
    .param p11, "size"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_action:I

    .line 17
    iput-boolean p2, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_isObscured:Z

    .line 18
    iput p3, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_toolType:I

    .line 19
    iput p4, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_source:I

    .line 20
    iput p5, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_deviceId:I

    .line 21
    iput p6, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_x:F

    .line 22
    iput p7, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_y:F

    .line 23
    iput-wide p8, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_eventTime:J

    .line 24
    iput p10, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_pressure:F

    .line 25
    iput p11, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_size:F

    .line 26
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_action:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_deviceId:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_eventTime:J

    return-wide v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_pressure:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_size:F

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_source:I

    return v0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_toolType:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_y:F

    return v0
.end method

.method public isObscured()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->_isObscured:Z

    return v0
.end method
