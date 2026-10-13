.class public Lcom/oculus/browser/acra/DropBoxCollector;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v13, "SYSTEM_TOMBSTONE"

    const-string v14, "data_app_strictmode"

    const-string v0, "system_app_anr"

    const-string v1, "system_app_wtf"

    const-string v2, "system_app_crash"

    const-string v3, "system_server_anr"

    const-string v4, "system_server_wtf"

    const-string v5, "system_server_crash"

    const-string v6, "BATTERY_DISCHARGE_INFO"

    const-string v7, "SYSTEM_RECOVERY_LOG"

    const-string v8, "SYSTEM_BOOT"

    const-string v9, "SYSTEM_LAST_KMSG"

    const-string v10, "APANIC_CONSOLE"

    const-string v11, "APANIC_THREADS"

    const-string v12, "SYSTEM_RESTART"

    .line 1
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/browser/acra/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "DropBoxManager not available."

    .line 1
    :try_start_0
    invoke-static {}, Lcom/oculus/browser/acra/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p0

    .line 3
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getNextEntry"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 5
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 6
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 7
    iget v7, v5, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v8

    invoke-interface {v8}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/text/format/Time;->minute:I

    .line 8
    invoke-virtual {v5, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 9
    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 10
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v11

    invoke-interface {v11}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 11
    new-instance v11, Ljava/util/ArrayList;

    sget-object v12, Lcom/oculus/browser/acra/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    array-length v12, v0

    if-lez v12, :cond_1

    .line 14
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 16
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Tag: "

    .line 17
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v11, v13, v9

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-virtual {v4, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getText"

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v6, v9

    invoke-virtual {v14, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 20
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getTimeMillis"

    const/4 v9, 0x0

    invoke-virtual {v14, v15, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 21
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v10, "close"

    invoke-virtual {v15, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    :goto_2
    if-eqz v13, :cond_3

    .line 22
    invoke-virtual {v14, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v17, v10

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 23
    invoke-virtual {v5, v9, v10}, Landroid/text/format/Time;->set(J)V

    const-string v15, "@"

    .line 24
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    const/16 v15, 0x1f4

    .line 25
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v12, v16

    invoke-virtual {v6, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_2

    const-string v15, "Text: "

    .line 26
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v12, "Not Text!"

    .line 27
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move-object/from16 v12, v17

    const/4 v15, 0x0

    .line 28
    invoke-virtual {v12, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    .line 29
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v15, v10

    invoke-virtual {v4, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    move-object v10, v12

    const/4 v9, 0x0

    const/16 v12, 0xa

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    const/4 v13, 0x2

    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v13, 0x2

    const/16 v16, 0x0

    const-string v6, "Nothing."

    .line 30
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v6, 0x2

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v0, "No tag configured for collection."

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 34
    :catch_1
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 35
    :catch_2
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 36
    :catch_3
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 37
    :catch_4
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 38
    :catch_5
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    const-string v0, "N/A"

    return-object v0
.end method
