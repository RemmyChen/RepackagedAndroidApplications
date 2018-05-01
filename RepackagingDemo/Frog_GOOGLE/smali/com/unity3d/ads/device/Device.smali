.class public Lcom/unity3d/ads/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/Device$MemoryInfoType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 80
    .local v0, "androidID":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Problems fetching androidId"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getApkDigest()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "apkDigest":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "apkPath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/unity3d/ads/misc/Utilities;->readFileBytes(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/misc/Utilities;->Sha256([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 493
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Exception when getting APK digest"

    invoke-static {v3, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getBatteryLevel()F
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 325
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 326
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 328
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 329
    const-string v3, "level"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 330
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 331
    .local v2, "scale":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 335
    .end local v1    # "level":I
    .end local v2    # "scale":I
    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static getBatteryStatus()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 340
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 344
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 348
    :cond_0
    return v1
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBootloader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionIncremental()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCount()J
    .locals 2

    .prologue
    .line 581
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getCertificateFingerprint()Ljava/lang/String;
    .locals 13

    .prologue
    .line 500
    const/4 v3, 0x0

    .line 501
    .local v3, "fingerprint":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 502
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, "pkgName":Ljava/lang/String;
    const/16 v11, 0x40

    :try_start_0
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 505
    .local v5, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 506
    .local v9, "signatures":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_0

    array-length v11, v9

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    .line 507
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 508
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 509
    .local v10, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 510
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 511
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 512
    .local v8, "publicKey":[B
    invoke-static {v8}, Lcom/unity3d/ads/misc/Utilities;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 517
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "publicKey":[B
    .end local v9    # "signatures":[Landroid/content/pm/Signature;
    .end local v10    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "Exception when signing certificate fingerprint"

    invoke-static {v11, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getElapsedRealtime()J
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    .line 356
    sget-object v0, Lcom/unity3d/ads/device/Device$MemoryInfoType;->FREE_MEMORY:Lcom/unity3d/ads/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeSpace(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 313
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getGLVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 474
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 476
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 479
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v2

    .line 485
    .end local v1    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstalledPackages(Z)Ljava/util/List;
    .locals 10
    .param p0, "hash"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v4, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 207
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 209
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 210
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v1, "packageEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 213
    const-string v6, "name"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_1
    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 220
    const-string v6, "time"

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "installer":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    const-string v6, "installer"

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "installer":Ljava/lang/String;
    :cond_2
    const-string v6, "name"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    .end local v1    # "packageEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    return-object v4
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J
    .locals 9
    .param p0, "infoType"    # Lcom/unity3d/ads/device/Device$MemoryInfoType;

    .prologue
    .line 360
    const/4 v3, -0x1

    .line 362
    .local v3, "lineNumber":I
    sget-object v6, Lcom/unity3d/ads/device/Device$1;->$SwitchMap$com$unity3d$ads$device$Device$MemoryInfoType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/device/Device$MemoryInfoType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 373
    :goto_0
    const/4 v4, 0x0

    .line 374
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 377
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/meminfo"

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v5, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 380
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    .end local v1    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    :pswitch_0
    const/4 v3, 0x1

    .line 365
    goto :goto_0

    .line 367
    :pswitch_1
    const/4 v3, 0x2

    .line 368
    goto :goto_0

    .line 382
    .restart local v1    # "i":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-static {v2}, Lcom/unity3d/ads/device/Device;->getMemoryValueFromString(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 387
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v4, v5

    .line 393
    .end local v1    # "i":I
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :goto_3
    return-wide v6

    .line 388
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error closing RandomAccessFile"

    invoke-static {v8, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while reading memory info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 393
    :goto_5
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 388
    :catch_2
    move-exception v0

    .line 389
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 387
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 390
    :goto_7
    throw v6

    .line 388
    :catch_3
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Error closing RandomAccessFile"

    invoke-static {v7, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 383
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMemoryValueFromString(Ljava/lang/String;)J
    .locals 6
    .param p0, "memVal"    # Ljava/lang/String;

    .prologue
    .line 397
    if-eqz p0, :cond_1

    .line 398
    const-string v3, "(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 399
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 400
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 402
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 409
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 134
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 136
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 142
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetworkType()I
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 128
    :goto_0
    return v1

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static getNewAbiList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v0, "abiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 613
    return-object v0
.end method

.method private static getOldAbiList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "abiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v3, "retData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 621
    .local v1, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/self/stat"

    const-string v7, "r"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .local v2, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "statContent":Ljava/lang/String;
    const-string v6, "stat"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 628
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    .end local v4    # "statContent":Ljava/lang/String;
    :goto_0
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/uptime"

    const-string v7, "r"

    invoke-direct {v1, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 636
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "uptimeContent":Ljava/lang/String;
    const-string v6, "uptime"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 642
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 648
    .end local v5    # "uptimeContent":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 629
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "statContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 624
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .end local v4    # "statContent":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 625
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v6, "Error while reading processor info: "

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 628
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v2, v1

    .line 631
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 629
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 630
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v1

    .line 632
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 627
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v6

    .line 628
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 631
    :goto_4
    throw v6

    .line 629
    :catch_3
    move-exception v0

    .line 630
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Error closing RandomAccessFile"

    invoke-static {v7, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 643
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "uptimeContent":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .end local v5    # "uptimeContent":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 639
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_9
    const-string v6, "Error while reading processor info: "

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 642
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .line 643
    :catch_6
    move-exception v0

    .line 644
    const-string v6, "Error closing RandomAccessFile"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .line 642
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 645
    :goto_7
    throw v6

    .line 643
    :catch_7
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Error closing RandomAccessFile"

    invoke-static {v7, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    goto :goto_6

    .line 638
    :catch_8
    move-exception v0

    goto :goto_5

    .line 627
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 624
    .end local v1    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "reader":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRingerMode()I
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 265
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 268
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 271
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getScreenBrightness()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 301
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 305
    :cond_0
    return v0
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenLayout()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSensorList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 564
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 567
    :goto_0
    return-object v1

    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStreamMaxVolume(I)I
    .locals 3
    .param p0, "streamType"    # I

    .prologue
    .line 288
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 291
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 297
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 294
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 297
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getStreamVolume(I)I
    .locals 3
    .param p0, "streamType"    # I

    .prologue
    .line 275
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 278
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 284
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 281
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 284
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSupportedAbis()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getApiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 554
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getOldAbiList()Ljava/util/ArrayList;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNewAbiList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/unity3d/ads/device/Device$MemoryInfoType;->TOTAL_MEMORY:Lcom/unity3d/ads/device/Device$MemoryInfoType;

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getMemoryInfo(Lcom/unity3d/ads/device/Device$MemoryInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalSpace(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 317
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 321
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getUniqueEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUptime()J
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isActiveNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 176
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 178
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 182
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isAdbEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "debugBridgeEnabled":Ljava/lang/Boolean;
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getApiLevel()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 424
    invoke-static {}, Lcom/unity3d/ads/device/Device;->oldAdbStatus()Ljava/lang/Boolean;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 426
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/Device;->newAdbStatus()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 187
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 190
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    const/4 v3, 0x1

    .line 200
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 195
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getLimitedAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isRooted()Z
    .locals 2

    .prologue
    .line 414
    :try_start_0
    const-string v1, "su"

    invoke-static {v1}, Lcom/unity3d/ads/device/Device;->searchPathForBinary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 416
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Rooted check failed"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 417
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUSBConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 572
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 574
    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 577
    :cond_0
    return v1
.end method

.method public static isUsingWifi()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 101
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 102
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v5

    .line 107
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 110
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 111
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 116
    .local v3, "netType":I
    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public static isWiredHeadsetOn()Z
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 247
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 250
    :goto_0
    return v1

    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static newAdbStatus()Ljava/lang/Boolean;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, "status":Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 451
    :goto_1
    return-object v1

    :cond_0
    move v2, v3

    .line 446
    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Problems fetching adb enabled status"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static oldAdbStatus()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "status":Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    :goto_1
    return-object v1

    :cond_0
    move v2, v3

    .line 434
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Problems fetching adb enabled status"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static searchPathForBinary(Ljava/lang/String;)Z
    .locals 11
    .param p0, "binary"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 455
    const-string v6, "PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "paths":[Ljava/lang/String;
    array-length v8, v4

    move v7, v5

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v4, v7

    .line 457
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "pathDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 460
    .local v3, "pathDirFiles":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 461
    array-length v9, v3

    move v6, v5

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v0, v3, v6

    .line 462
    .local v0, "fileInPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 463
    const/4 v5, 0x1

    .line 469
    .end local v0    # "fileInPath":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "pathDir":Ljava/io/File;
    .end local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_0
    return v5

    .line 461
    .restart local v0    # "fileInPath":Ljava/io/File;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "pathDir":Ljava/io/File;
    .restart local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 456
    .end local v0    # "fileInPath":Ljava/io/File;
    .end local v3    # "pathDirFiles":[Ljava/io/File;
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0
.end method
