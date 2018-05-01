.class public Lcom/google/utils/MiUtils;
.super Ljava/lang/Object;
.source "MiUtils.java"


# static fields
.field private static final BUFF_SIZE:I = 0x100000

.field private static final ISDEBUG:Z = true

.field private static O_Permission_CheckModel:Z = false

.field private static final SAVE_DATA_PATH:Ljava/lang/String; = "save_data"

.field static assetsFileNames:[Ljava/lang/String;

.field private static currentTime:J

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static oldTime:J

.field static pro_dialog:Landroid/app/ProgressDialog;

.field static sizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/MiUtils;->O_Permission_CheckModel:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/utils/MiUtils;->sizes:[I

    .line 43
    sput-wide v2, Lcom/google/utils/MiUtils;->currentTime:J

    .line 44
    sput-wide v2, Lcom/google/utils/MiUtils;->oldTime:J

    .line 46
    new-instance v0, Lcom/google/utils/MiUtils$1;

    invoke-direct {v0}, Lcom/google/utils/MiUtils$1;-><init>()V

    sput-object v0, Lcom/google/utils/MiUtils;->mHandler:Landroid/os/Handler;

    .line 120
    sput-object v1, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    .line 122
    sput-object v1, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    return-void

    .line 41
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupSaveData(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "data_path":Ljava/lang/String;
    const-string/jumbo v3, "xyz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/utils/MiUtils;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 420
    .local v2, "sdCardExist":Z
    if-nez v2, :cond_0

    .line 421
    const-string/jumbo v3, ""

    .line 431
    :goto_0
    return-object v3

    .line 425
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "save_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {p0, v0, v3}, Lcom/google/utils/MiUtils;->copyDir2Dst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    const-string/jumbo v3, ""

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xyz"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static copyDir2Dst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "dstDir"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "data_dir":Ljava/io/File;
    const-string/jumbo v3, "xyz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "srcDir : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/utils/MiUtils;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string/jumbo v3, "xyz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dstDir : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/utils/MiUtils;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 446
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 445
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/utils/MiUtils;->copyFile2where(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/google/utils/MiUtils;->copyDir2Dst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 459
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static copyFile2where(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 14
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, "dst_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 345
    .local v4, "dst_file_parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 349
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "out":Ljava/io/FileOutputStream;
    const/high16 v9, 0x100000

    new-array v0, v9, [B

    .line 352
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 353
    .local v2, "currentTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 354
    .local v6, "oldTime":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "realLength":I
    if-lez v8, :cond_2

    .line 355
    sget-object v9, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v10, 0x1

    aget v11, v9, v10

    add-int/2addr v11, v8

    aput v11, v9, v10

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 357
    sub-long v10, v2, v6

    const-wide/16 v12, 0x1f4

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 358
    move-wide v6, v2

    .line 359
    sget-object v9, Lcom/google/utils/MiUtils;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 362
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 366
    return-void
.end method

.method public static copy_data(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    sput-object p0, Lcom/google/utils/MiUtils;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 127
    .local v1, "manager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 128
    .local v3, "open":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 129
    .local v4, "open2":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 130
    .local v5, "open3":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 131
    .local v6, "open4":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 132
    .local v7, "open5":Ljava/io/InputStream;
    sget-object v10, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    if-nez v10, :cond_0

    .line 133
    invoke-static {v1}, Lcom/google/utils/MiUtils;->getAssetsFileNames(Landroid/content/res/AssetManager;)[Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "hasSplitFile":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v8, "splitFilesName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v9, "splitFilesName_patch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v11, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_7

    aget-object v2, v11, v10

    .line 140
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v13, "my_split_patch"

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 141
    const/4 v0, 0x1

    .line 142
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    :goto_1
    const-string/jumbo v13, "extobb.save"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 148
    const-string/jumbo v13, "extobb.save"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 149
    sget-object v13, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v15, v15, v16

    aput v15, v13, v14

    .line 139
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const-string/jumbo v13, "my_split"

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_4
    const-string/jumbo v13, "extdata.save"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 151
    const-string/jumbo v13, "extdata.save"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 152
    sget-object v13, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v15, v15, v16

    aput v15, v13, v14

    goto :goto_2

    .line 153
    :cond_5
    const-string/jumbo v13, "data.save"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 154
    const-string/jumbo v13, "data.save"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 155
    sget-object v13, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v15, v15, v16

    aput v15, v13, v14

    goto :goto_2

    .line 156
    :cond_6
    const-string/jumbo v13, "mcdata"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 157
    const-string/jumbo v13, "mcdata"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 158
    sget-object v13, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v15, v15, v16

    aput v15, v13, v14

    goto :goto_2

    .line 161
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_8

    .line 162
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 163
    sget-object v10, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 164
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/sdcard/Android/obb/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".my_split"

    invoke-static {v8, v1, v10, v11}, Lcom/google/utils/MiUtils;->copy_split_files(Ljava/util/ArrayList;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/sdcard/Android/obb/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".my_split_patch"

    invoke-static {v9, v1, v10, v11}, Lcom/google/utils/MiUtils;->copy_split_files(Ljava/util/ArrayList;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_8
    sget-object v10, Lcom/google/utils/MiUtils;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    if-eqz v3, :cond_9

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/sdcard/Android/obb/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/utils/MiUtils;->unZip_data(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_9
    if-eqz v4, :cond_a

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/sdcard/Android/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/google/utils/MiUtils;->unZip_data(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 179
    :cond_a
    if-eqz v5, :cond_b

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/utils/MiUtils;->unZip_data(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_b
    if-eqz v7, :cond_c

    .line 184
    const-string/jumbo v10, "/sdcard/huluxia/mctool/"

    invoke-static {v6, v10}, Lcom/google/utils/MiUtils;->unZip_data(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 189
    :cond_c
    sget-object v10, Lcom/google/utils/MiUtils;->mHandler:Landroid/os/Handler;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method

.method public static copy_split_files(Ljava/util/ArrayList;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "flag_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "splitFilesName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_0

    .line 337
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 309
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 311
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 312
    .local v13, "split_len":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "dst_file_name":Ljava/lang/String;
    const/high16 v14, 0x100000

    new-array v2, v14, [B

    .line 314
    .local v2, "buffer":[B
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 316
    .local v9, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v13, :cond_4

    .line 317
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 318
    .local v8, "inputStream":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    .line 319
    .local v4, "currentTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 320
    .local v10, "oldTime":J
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "realLength":I
    if-lez v12, :cond_3

    .line 321
    sget-object v14, Lcom/google/utils/MiUtils;->sizes:[I

    const/4 v15, 0x1

    aget v16, v14, v15

    add-int v16, v16, v12

    aput v16, v14, v15

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 323
    sub-long v14, v4, v10

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 324
    move-wide v10, v4

    .line 325
    sget-object v14, Lcom/google/utils/MiUtils;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 328
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_2

    .line 330
    :cond_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 316
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 333
    .end local v4    # "currentTime":J
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "oldTime":J
    .end local v12    # "realLength":I
    :cond_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0
.end method

.method public static dip2px(Landroid/app/Activity;F)I
    .locals 3
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "dpValue"    # F

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAssetsFileNames(Landroid/content/res/AssetManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameInZip(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 516
    .local v2, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 517
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "file_name":Ljava/lang/String;
    const-string/jumbo v3, "obb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 524
    .end local v1    # "file_name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSizes()[I
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/utils/MiUtils;->sizes:[I

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 529
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasAccessTime()Z
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/utils/MiUtils;->currentTime:J

    .line 97
    sget-wide v0, Lcom/google/utils/MiUtils;->currentTime:J

    sget-wide v2, Lcom/google/utils/MiUtils;->oldTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 98
    sget-wide v0, Lcom/google/utils/MiUtils;->currentTime:J

    sput-wide v0, Lcom/google/utils/MiUtils;->oldTime:J

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSomeFileInAssetsFileNames(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "findName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 472
    sget-object v3, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 474
    .local v0, "manager":Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/google/utils/MiUtils;->getAssetsFileNames(Landroid/content/res/AssetManager;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    .line 477
    .end local v0    # "manager":Landroid/content/res/AssetManager;
    :cond_0
    sget-object v4, Lcom/google/utils/MiUtils;->assetsFileNames:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 478
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 479
    const/4 v2, 0x1

    .line 482
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return v2

    .line 477
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static inputString2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Scanner;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 541
    .local v1, "scanner":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isFirstRun(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 395
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/google/utils/MiUtils;->pro_dialog:Landroid/app/ProgressDialog;

    .line 397
    const-string/jumbo v3, "utils_config"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 398
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "isFirstRun"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 399
    .local v1, "isFirstRun":Z
    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "isFirstRun"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method public static isGrantExternalRW(Landroid/app/Activity;)Z
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v12, 0x17

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 238
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v12, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v8

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/google/utils/MiUtils;->myPermissions(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "myPermissions":[Ljava/lang/String;
    array-length v7, v6

    if-eqz v7, :cond_0

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "denyPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v10, v6

    move v7, v9

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v5, v6, v7

    .line 250
    .local v5, "myPermission":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 252
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 256
    .end local v5    # "myPermission":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v7, v10, :cond_5

    sget-boolean v7, Lcom/google/utils/MiUtils;->O_Permission_CheckModel:Z

    if-eqz v7, :cond_5

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 263
    .local v0, "deneypermissions":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 264
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v4

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    :cond_4
    invoke-virtual {p0, v0, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    move v8, v9

    .line 267
    goto :goto_0

    .line 270
    .end local v0    # "deneypermissions":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_5
    const-string/jumbo v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    move v3, v8

    .line 272
    .local v3, "flagNotStoragePermission":Z
    :goto_3
    const-string/jumbo v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    move v2, v8

    .line 275
    .local v2, "flagNotPhoneStatePermissiont":Z
    :goto_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v12, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 278
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v10, v7, v9

    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v10, v7, v8

    const/4 v10, 0x2

    const-string/jumbo v11, "android.permission.READ_PHONE_STATE"

    aput-object v11, v7, v10

    invoke-virtual {p0, v7, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    move v8, v9

    .line 284
    goto :goto_0

    .end local v2    # "flagNotPhoneStatePermissiont":Z
    .end local v3    # "flagNotStoragePermission":Z
    :cond_6
    move v3, v9

    .line 270
    goto :goto_3

    .restart local v3    # "flagNotStoragePermission":Z
    :cond_7
    move v2, v9

    .line 272
    goto :goto_4
.end method

.method public static isNewObbVersion(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 489
    const-string/jumbo v2, ""

    .line 492
    .local v2, "obb_name":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "extobb.save"

    invoke-static {v6, p0}, Lcom/google/utils/MiUtils;->hasSomeFileInAssetsFileNames(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v5

    .line 495
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "extobb.save"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 496
    .local v4, "open":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/google/utils/MiUtils;->getFileNameInZip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "obb_path":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "obb path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "obb_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 510
    const/4 v5, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "obb_file":Ljava/io/File;
    .end local v3    # "obb_path":Ljava/lang/String;
    .end local v4    # "open":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static myPermissions(Landroid/app/Activity;)[Ljava/lang/String;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 222
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 223
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 227
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static sendMsg2Unity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "scence"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public static showOkDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "isOpen":Z
    if-eqz v1, :cond_0

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    const-string/jumbo v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 209
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public static unZip_data(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "srcPath"    # Ljava/io/InputStream;
    .param p1, "dstPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "dstPathFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 376
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 380
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "entryParent":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, "entryDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 385
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/utils/MiUtils;->copyFile2where(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v2    # "entryDir":Ljava/io/File;
    .end local v3    # "entryParent":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 390
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 391
    return-void
.end method
