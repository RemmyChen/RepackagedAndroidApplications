.class public Lcom/google/ads/mediation/unity/UnityReward;
.super Ljava/lang/Object;
.source "UnityReward.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method
