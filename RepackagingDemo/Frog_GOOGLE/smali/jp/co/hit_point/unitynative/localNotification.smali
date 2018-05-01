.class public Ljp/co/hit_point/unitynative/localNotification;
.super Ljava/lang/Object;
.source "localNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DozeCheck()Z
    .locals 2

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 6
    .param p1, "primary_key"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 77
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Ljp/co/hit_point/unitynative/NotificationReceiver;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x8000000

    invoke-static {v2, p1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 81
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V

    .line 82
    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 83
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    return-void
.end method

.method public sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "unixtime"    # J
    .param p6, "primary_key"    # I

    .prologue
    .line 37
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 38
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 39
    .local v5, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-class v8, Ljp/co/hit_point/unitynative/NotificationReceiver;

    invoke-direct {v6, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "TITLE"

    invoke-virtual {v6, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v8, "MESSAGE"

    invoke-virtual {v6, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v8, "TICKER"

    invoke-virtual {v6, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v8, "PRIMARY_KEY"

    move/from16 v0, p6

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 48
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 49
    const/16 v8, 0xd

    move-wide/from16 v0, p4

    long-to-int v9, v0

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 51
    const/high16 v8, 0x8000000

    move/from16 v0, p6

    invoke-static {v5, v0, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 52
    .local v7, "sender":Landroid/app/PendingIntent;
    const-string v8, "alarm"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 54
    .local v3, "alarm":Landroid/app/AlarmManager;
    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3, v8, v10, v11, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 67
    return-void
.end method
