.class public Lcom/facebook/acra/CrashTimeDataCollector;
.super Ljava/lang/Object;
.source "CrashTimeDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/CrashTimeDataCollector$Api21Utils;,
        Lcom/facebook/acra/CrashTimeDataCollector$Api19Utils;
    }
.end annotation


# static fields
.field private static final ANDROID_RUNTIME_ART:Ljava/lang/String; = "ART"

.field private static final ANDROID_RUNTIME_DALVIK:Ljava/lang/String; = "DALVIK"

.field private static final ANDROID_RUNTIME_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final DEFAULT_TRACE_COUNT_LIMIT:I = 0x5

.field private static final JAVA_BOOT_CLASS_PATH:Ljava/lang/String; = "java.boot.class.path"

.field private static final KNOWN_ART_JAR:Ljava/lang/String; = "/system/framework/core-libart.jar"

.field private static final KNOWN_DALVIK_JAR:Ljava/lang/String; = "/system/framework/core.jar"

.field private static final PROCESS_NAME_UNSET:Ljava/lang/String; = "!"

.field private static final WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field private static volatile processNameByAms:Ljava/lang/String;

.field private static final sDeviceSpecificFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "!"

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 80
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachComponentStats(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p3, "writer"    # Ljava/io/Writer;

    .prologue
    .line 536
    const-string v3, "COMPONENTS_TOTAL"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_ENABLED"

    .line 537
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_DISABLED"

    .line 538
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_DEFAULT"

    .line 539
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_DISABLED_NAMES"

    .line 540
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_DEFAULT_NAMES"

    .line 541
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "COMPONENTS_FLAG_STATE"

    .line 542
    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 545
    :cond_0
    :try_start_0
    new-instance v2, Lcom/facebook/acra/AppComponentStats;

    invoke-direct {v2, p0}, Lcom/facebook/acra/AppComponentStats;-><init>(Landroid/content/Context;)V

    .line 546
    .local v2, "statsCollector":Lcom/facebook/acra/AppComponentStats;
    invoke-virtual {v2}, Lcom/facebook/acra/AppComponentStats;->getStats()Lcom/facebook/acra/AppComponentStats$Stats;

    move-result-object v1

    .line 548
    .local v1, "stats":Lcom/facebook/acra/AppComponentStats$Stats;
    const-string v3, "COMPONENTS_TOTAL"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    const-string v3, "COMPONENTS_TOTAL"

    iget v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->totalCount:I

    .line 550
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 553
    :cond_1
    const-string v3, "COMPONENTS_ENABLED"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    const-string v3, "COMPONENTS_ENABLED"

    iget v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->enabledCount:I

    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 558
    :cond_2
    const-string v3, "COMPONENTS_DISABLED"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 559
    const-string v3, "COMPONENTS_DISABLED"

    iget v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->disabledCount:I

    .line 560
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 563
    :cond_3
    const-string v3, "COMPONENTS_DEFAULT"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 564
    const-string v3, "COMPONENTS_DEFAULT"

    iget v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->defaultCount:I

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 568
    :cond_4
    const-string v3, "COMPONENTS_DEFAULT_NAMES"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 569
    const-string v3, "COMPONENTS_DEFAULT_NAMES"

    iget-object v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->defaultComponents:Ljava/util/List;

    .line 570
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 573
    :cond_5
    const-string v3, "COMPONENTS_DISABLED_NAMES"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 574
    const-string v3, "COMPONENTS_DISABLED_NAMES"

    iget-object v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->disabledComponents:Ljava/util/List;

    .line 575
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 578
    :cond_6
    const-string v3, "COMPONENTS_FLAG_STATE"

    invoke-static {v3, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 579
    const-string v3, "COMPONENTS_FLAG_STATE"

    iget v4, v1, Lcom/facebook/acra/AppComponentStats$Stats;->flagState:I

    .line 580
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 579
    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v1    # "stats":Lcom/facebook/acra/AppComponentStats$Stats;
    .end local v2    # "statsCollector":Lcom/facebook/acra/AppComponentStats;
    :cond_7
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "COMPONENTS_TOTAL"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 585
    const-string v3, "COMPONENTS_TOTAL"

    invoke-static {p2, v3, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static gatherCrashData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Lcom/facebook/acra/Spool$FileBeingConsumed;Z)V
    .locals 9
    .param p0, "errorReporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p5, "w"    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "minidump"    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "captureProcessName"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "UID"

    invoke-static {v0, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    const-string v0, "UID"

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_0
    :goto_0
    const-string v0, "CLIENT_UID"

    invoke-static {v0, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getClientUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getClientUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    :try_start_1
    const-string v0, "CLIENT_UID"

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getClientUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :cond_1
    :goto_1
    const-string v0, "STACK_TRACE"

    invoke-static {v0, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :try_start_2
    const-string v0, "STACK_TRACE"

    invoke-static {v0, p2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getConstantFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getConstantFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 152
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    :try_start_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 155
    :catch_0
    move-exception v8

    .line 156
    .local v8, "ex":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p4, v0, v8}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 124
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 125
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string v0, "UID"

    invoke-static {p4, v0, v8}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    .line 136
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string v0, "CLIENT_UID"

    invoke-static {p4, v0, v8}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_3
    move-exception v8

    .line 146
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string v0, "STACK_TRACE"

    invoke-static {p4, v0, v8}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_4
    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    .line 162
    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/CrashTimeDataCollector;->populateCrashTimeData(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Z)V

    .line 163
    invoke-static {p0, p1, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->populateConstantDeviceData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 164
    invoke-static {p0, p1, p3, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->populateCustomData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 166
    iget-object v0, p4, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 167
    const-string v0, "FIELD_FAILURES"

    invoke-static {v0, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    :try_start_4
    const-string v0, "FIELD_FAILURES"

    const-string v1, "\n"

    iget-object v2, p4, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    .line 170
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 179
    :cond_5
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    .line 181
    :cond_6
    return-void

    .line 171
    :catch_4
    move-exception v8

    .line 173
    .restart local v8    # "ex":Ljava/lang/Throwable;
    :try_start_5
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error attaching field failures to report: continuing"

    invoke-static {v0, v8, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 174
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static getAndroidRuntime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 876
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 877
    const-string v1, "DALVIK"

    .line 887
    .local v0, "bootClassPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 879
    .end local v0    # "bootClassPath":Ljava/lang/String;
    :cond_0
    const-string v1, "java.boot.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .restart local v0    # "bootClassPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 881
    const-string v1, "/system/framework/core-libart.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    const-string v1, "ART"

    goto :goto_0

    .line 883
    :cond_1
    const-string v1, "/system/framework/core.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    const-string v1, "DALVIK"

    goto :goto_0

    .line 887
    :cond_2
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method private static getCpuAbis()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 893
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 894
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector$Api21Utils;->getCpuAbis()[Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "abis":[Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "abiStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 900
    .local v2, "length":I
    if-lt v2, v7, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    .line 902
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 904
    .end local v0    # "abiStr":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 896
    .end local v1    # "abis":[Ljava/lang/String;
    .end local v2    # "length":I
    :cond_1
    new-array v1, v7, [Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v1, v5

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v3, v1, v6

    .restart local v1    # "abis":[Ljava/lang/String;
    goto :goto_0
.end method

.method private static getDeviceUptime()J
    .locals 2

    .prologue
    .line 871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static getPackageManagerVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 840
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 841
    const-string v3, "no package manager"

    .line 851
    :goto_0
    return-object v3

    .line 845
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 846
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 847
    const-string v3, "no package info"

    goto :goto_0

    .line 849
    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 850
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 959
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    .line 962
    :cond_0
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 598
    const-string v1, "/proc/self/cmdline"

    invoke-static {v1}, Lcom/facebook/common/procread/ProcReader;->readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 604
    :cond_0
    if-nez v0, :cond_1

    .line 605
    const-string v0, ""

    .line 607
    :cond_1
    return-object v0
.end method

.method static getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 827
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 829
    const-string v0, "n/a"

    .line 831
    :cond_0
    return-object v0
.end method

.method private static getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 790
    sget-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 791
    .local v2, "processName":Ljava/lang/String;
    const-string v6, "!"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v5, v2

    .line 815
    :cond_0
    :goto_0
    return-object v5

    .line 795
    :cond_1
    const/4 v2, 0x0

    .line 796
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 798
    .local v1, "pid":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 799
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 803
    .local v3, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 807
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 808
    .local v4, "rai":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_2

    .line 809
    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 814
    .end local v4    # "rai":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    sput-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    move-object v5, v2

    .line 815
    goto :goto_0
.end method

.method private static getProcessUptime(Lcom/facebook/acra/ErrorReporter;)J
    .locals 4
    .param p0, "reporter"    # Lcom/facebook/acra/ErrorReporter;

    .prologue
    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static getPublicSourceDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 857
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 858
    .local v1, "newContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v1    # "newContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "package name not found"

    goto :goto_0
.end method

.method static noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    const-string v2, "%s: [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, "internalEx":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignoring failing remembering failure for custom field: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 782
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static populateConstantDeviceData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 16
    .param p0, "reporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 625
    invoke-interface/range {p1 .. p1}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 631
    .local v2, "context":Landroid/content/Context;
    const/16 v10, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "BUILD"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "JAIL_BROKEN"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "INSTALLATION_ID"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "TOTAL_MEM_SIZE"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "ENVIRONMENT"

    aput-object v11, v5, v10

    const/4 v10, 0x5

    const-string v11, "ANDROID_RUNTIME"

    aput-object v11, v5, v10

    const/4 v10, 0x6

    const-string v11, "device_cpu_abis"

    aput-object v11, v5, v10

    const/4 v10, 0x7

    const-string v11, "is_64_bit_build"

    aput-object v11, v5, v10

    const/16 v10, 0x8

    const-string v11, "DISPLAY"

    aput-object v11, v5, v10

    const/16 v10, 0x9

    const-string v11, "DEVICE_FEATURES"

    aput-object v11, v5, v10

    const/16 v10, 0xa

    const-string v11, "IS_LOW_RAM_DEVICE"

    aput-object v11, v5, v10

    const/16 v10, 0xb

    const-string v11, "WEBVIEW_VERSION"

    aput-object v11, v5, v10

    const/16 v10, 0xc

    const-string v11, "PLAY_SERVICES_VERSION"

    aput-object v11, v5, v10

    .line 647
    .local v5, "fields":[Ljava/lang/String;
    array-length v12, v5

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_7

    aget-object v4, v5, v11

    .line 648
    .local v4, "field":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v4, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 650
    const/4 v6, 0x0

    .line 651
    .local v6, "ignoreException":Z
    const/4 v7, 0x1

    .line 654
    .local v7, "reportField":Z
    :try_start_0
    sget-object v10, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 655
    sget-object v10, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 728
    .local v8, "val":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_0

    .line 729
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v8, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 647
    .end local v6    # "ignoreException":Z
    .end local v7    # "reportField":Z
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 657
    .restart local v6    # "ignoreException":Z
    .restart local v7    # "reportField":Z
    :cond_1
    const/4 v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 724
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing case for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :catch_0
    move-exception v3

    .line 732
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v6, :cond_0

    .line 733
    move-object/from16 v0, p2

    invoke-static {v0, v4, v3}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 657
    .end local v3    # "ex":Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    const-string v13, "BUILD"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :sswitch_1
    const-string v13, "JAIL_BROKEN"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_2
    const-string v13, "INSTALLATION_ID"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x2

    goto :goto_3

    :sswitch_3
    const-string v13, "TOTAL_MEM_SIZE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_4
    const-string v13, "ENVIRONMENT"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x4

    goto :goto_3

    :sswitch_5
    const-string v13, "ANDROID_RUNTIME"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_6
    const-string v13, "device_cpu_abis"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x6

    goto :goto_3

    :sswitch_7
    const-string v13, "is_64_bit_build"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x7

    goto :goto_3

    :sswitch_8
    const-string v13, "DISPLAY"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v10, 0x8

    goto :goto_3

    :sswitch_9
    const-string v13, "DEVICE_FEATURES"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v10, 0x9

    goto/16 :goto_3

    :sswitch_a
    const-string v13, "IS_LOW_RAM_DEVICE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v10, 0xa

    goto/16 :goto_3

    :sswitch_b
    const-string v13, "WEBVIEW_VERSION"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v10, 0xb

    goto/16 :goto_3

    :sswitch_c
    const-string v13, "PLAY_SERVICES_VERSION"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v10, 0xc

    goto/16 :goto_3

    .line 659
    :pswitch_0
    const-class v10, Landroid/os/Build;

    invoke-static {v10}, Lcom/facebook/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 726
    .restart local v8    # "val":Ljava/lang/String;
    :goto_4
    sget-object v10, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v10, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 662
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->getJailStatus()Ljava/lang/String;

    move-result-object v8

    .line 663
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 665
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_2
    invoke-static {v2}, Lcom/facebook/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 666
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 668
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_3
    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lcom/facebook/acra/util/StatFsUtil;->getTotalInternalStorageSpace(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 669
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 671
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_4
    const-class v10, Landroid/os/Environment;

    invoke-static {v10}, Lcom/facebook/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 672
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 674
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_5
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v8

    .line 675
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 677
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_6
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getCpuAbis()Ljava/lang/String;

    move-result-object v8

    .line 678
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 680
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_7
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->is64BitBuild()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 681
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 683
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_8
    const/4 v6, 0x1

    .line 684
    const-string v10, "window"

    .line 686
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 687
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 685
    invoke-static {v10}, Lcom/facebook/acra/CrashTimeDataCollector;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v8

    .line 688
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 690
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_9
    const/4 v6, 0x1

    .line 691
    invoke-static {v2}, Lcom/facebook/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 692
    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 694
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_a
    const/4 v6, 0x1

    .line 695
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v10, v13, :cond_3

    .line 696
    invoke-static {v2}, Lcom/facebook/acra/CrashTimeDataCollector$Api19Utils;->isLowRamDevice(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 698
    .end local v8    # "val":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 699
    .restart local v8    # "val":Ljava/lang/String;
    const/4 v7, 0x0

    .line 701
    goto :goto_4

    .line 703
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_b
    const/4 v6, 0x1

    .line 704
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v10, v13, :cond_5

    .line 706
    invoke-static {v2}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;

    move-result-object v10

    const-string v13, "com.google.android.webview"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 707
    .local v9, "wpi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_4

    .line 708
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .restart local v8    # "val":Ljava/lang/String;
    goto :goto_4

    .line 710
    .end local v8    # "val":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 711
    .restart local v8    # "val":Ljava/lang/String;
    const/4 v7, 0x0

    goto :goto_4

    .line 714
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "wpi":Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v8, 0x0

    .line 715
    .restart local v8    # "val":Ljava/lang/String;
    const/4 v7, 0x0

    .line 717
    goto :goto_4

    .line 719
    .end local v8    # "val":Ljava/lang/String;
    :pswitch_c
    const/4 v6, 0x1

    .line 720
    invoke-static {v2}, Lcom/facebook/acra/ReflectionCollector;->getPlayServicesVersion(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 721
    .restart local v8    # "val":Ljava/lang/String;
    if-eqz v8, :cond_6

    const/4 v7, 0x1

    .line 722
    :goto_5
    goto/16 :goto_4

    .line 721
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 738
    .end local v4    # "field":Ljava/lang/String;
    .end local v6    # "ignoreException":Z
    .end local v7    # "reportField":Z
    .end local v8    # "val":Ljava/lang/String;
    :cond_7
    return-void

    .line 657
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a82fa38 -> :sswitch_5
        -0x718f5b5e -> :sswitch_8
        -0x5fad38fa -> :sswitch_3
        -0x1f1e3ac0 -> :sswitch_2
        -0x1ad7c07e -> :sswitch_c
        -0x59dd1ae -> :sswitch_b
        0x31a3406 -> :sswitch_9
        0x3c9ce4e -> :sswitch_0
        0x3ebb0b57 -> :sswitch_a
        0x45d6c71a -> :sswitch_1
        0x5706a570 -> :sswitch_7
        0x6725690b -> :sswitch_6
        0x7b34c5f3 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static populateCrashTimeData(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Z)V
    .locals 28
    .param p0, "minidump"    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "reporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p2, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p5, "writer"    # Ljava/io/Writer;
    .param p6, "captureProcessName"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/acra/ErrorReporter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 204
    .local v4, "context":Landroid/content/Context;
    if-eqz p0, :cond_1c

    const/16 v22, 0x1

    .line 206
    .local v22, "nativeCrash":Z
    :goto_0
    const/16 v20, 0x0

    .line 207
    .local v20, "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    if-eqz v22, :cond_0

    .line 209
    :try_start_0
    new-instance v21, Lcom/facebook/acra/util/MinidumpReader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20    # "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    .local v21, "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    move-object/from16 v20, v21

    .line 218
    .end local v21    # "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    .restart local v20    # "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    :cond_0
    :goto_1
    if-eqz p6, :cond_2

    const-string v5, "PROCESS_NAME"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    if-nez v22, :cond_1d

    .line 222
    :try_start_1
    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 234
    .local v25, "processName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v5, "PROCESS_NAME"

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v25    # "processName":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v5, "USER_APP_START_DATE"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v22, :cond_3

    .line 242
    :try_start_2
    const-string v5, "USER_APP_START_DATE"

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/acra/ErrorReporter;->getAppStartDateFormat3339()Ljava/lang/String;

    move-result-object v6

    .line 242
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :cond_3
    :goto_4
    const-string v5, "PROCESS_UPTIME"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v22, :cond_4

    .line 251
    :try_start_3
    const-string v5, "PROCESS_UPTIME"

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessUptime(Lcom/facebook/acra/ErrorReporter;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 251
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 258
    :cond_4
    :goto_5
    const-string v5, "DEVICE_UPTIME"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 260
    :try_start_4
    const-string v5, "DEVICE_UPTIME"

    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getDeviceUptime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 266
    :cond_5
    :goto_6
    const-string v5, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 268
    :try_start_5
    const-string v5, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    .line 270
    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 268
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    :cond_6
    :goto_7
    const-string v5, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 280
    :try_start_6
    const-string v5, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    .line 281
    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getPublicSourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 280
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 287
    :cond_7
    :goto_8
    const-string v5, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 289
    :try_start_7
    new-instance v16, Ljava/io/File;

    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getPublicSourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v16, "f":Ljava/io/File;
    const-string v14, "File doesn\'t exist"

    .line 291
    .local v14, "epochTime":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 292
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 294
    :cond_8
    const-string v5, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v14, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 300
    .end local v14    # "epochTime":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    :cond_9
    :goto_9
    const-string v5, "CRASH_CONFIGURATION"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 302
    :try_start_8
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 303
    .local v26, "resources":Landroid/content/res/Resources;
    if-eqz v26, :cond_a

    .line 304
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 305
    .local v12, "crashConf":Landroid/content/res/Configuration;
    const-string v5, "CRASH_CONFIGURATION"

    .line 306
    invoke-static {v12}, Lcom/facebook/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    .line 305
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 313
    .end local v12    # "crashConf":Landroid/content/res/Configuration;
    .end local v26    # "resources":Landroid/content/res/Resources;
    :cond_a
    :goto_a
    const-string v5, "AVAILABLE_MEM_SIZE"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 315
    const-wide/16 v8, 0x1

    :try_start_9
    invoke-static {v8, v9}, Lcom/facebook/acra/util/StatFsUtil;->getAvailableInternalStorageSpace(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    .line 316
    .local v17, "internalMemorySize":Ljava/lang/String;
    const-string v5, "AVAILABLE_MEM_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 322
    .end local v17    # "internalMemorySize":Ljava/lang/String;
    :cond_b
    :goto_b
    const-string v5, "DUMPSYS_MEMINFO"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v22, :cond_c

    .line 324
    :try_start_a
    const-string v5, "DUMPSYS_MEMINFO"

    .line 325
    invoke-static {v4}, Lcom/facebook/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 324
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 331
    :cond_c
    :goto_c
    const-string v5, "DUMPSYS_USERINFO"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 333
    :try_start_b
    const-string v5, "DUMPSYS_USERINFO"

    .line 334
    invoke-static {v4}, Lcom/facebook/acra/DumpSysCollector;->collectUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 333
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 340
    :cond_d
    :goto_d
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/facebook/acra/CrashTimeDataCollector;->reportInternalStorageUsage(Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 342
    const-string v5, "USER_CRASH_DATE"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 344
    :try_start_c
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 345
    .local v13, "curDate":Landroid/text/format/Time;
    if-nez v22, :cond_1f

    .line 346
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 350
    :goto_e
    const-string v5, "USER_CRASH_DATE"

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 356
    .end local v13    # "curDate":Landroid/text/format/Time;
    :cond_e
    :goto_f
    const-string v5, "ACTIVITY_LOG"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v22, :cond_f

    .line 360
    :try_start_d
    move-object/from16 v0, p3

    instance-of v5, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_20

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "activityLogDump":Ljava/lang/String;
    :goto_10
    const-string v5, "ACTIVITY_LOG"

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v11, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 371
    .end local v11    # "activityLogDump":Ljava/lang/String;
    :cond_f
    :goto_11
    const-string v5, "PROCESS_NAME_BY_AMS"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v22, :cond_10

    .line 373
    :try_start_e
    const-string v5, "PROCESS_NAME_BY_AMS"

    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 374
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->resetProcessNameByAmsCache()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 380
    :cond_10
    :goto_12
    const-string v5, "OPEN_FD_COUNT"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 382
    :try_start_f
    const-string v5, "OPEN_FD_COUNT"

    .line 384
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 382
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 392
    :cond_11
    :goto_13
    const/16 v18, 0x0

    .line 394
    .local v18, "limits":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    :try_start_10
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v18

    .line 399
    :goto_14
    if-eqz v18, :cond_13

    .line 400
    const-string v5, "OPEN_FD_SOFT_LIMIT"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 402
    :try_start_11
    const-string v5, "OPEN_FD_SOFT_LIMIT"

    move-object/from16 v0, v18

    iget v6, v0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->softLimit:I

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 402
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 409
    :cond_12
    :goto_15
    const-string v5, "OPEN_FD_HARD_LIMIT"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 411
    :try_start_12
    const-string v5, "OPEN_FD_HARD_LIMIT"

    move-object/from16 v0, v18

    iget v6, v0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:I

    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 411
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 419
    :cond_13
    :goto_16
    const-string v5, "RUNTIME_PERMISSIONS"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 421
    :try_start_13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_14

    .line 422
    invoke-static {v4}, Lcom/facebook/acra/PermissionsReporter;->getAppGrantedPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 423
    .local v24, "perms":Ljava/lang/String;
    const-string v5, "RUNTIME_PERMISSIONS"

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 431
    .end local v24    # "perms":Ljava/lang/String;
    :cond_14
    :goto_17
    if-nez v22, :cond_21

    .line 432
    const-string v5, "LOGCAT"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 434
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_14
    move-object/from16 v0, p2

    invoke-static {v4, v0, v5, v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 435
    .local v19, "logcat":Ljava/lang/String;
    const-string v5, "LOGCAT"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 442
    .end local v19    # "logcat":Ljava/lang/String;
    :cond_15
    :goto_18
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_17

    .line 443
    const-string v5, "EVENTSLOG"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 445
    :try_start_15
    const-string v5, "EVENTSLOG"

    const-string v6, "events"

    const/4 v8, 0x0

    .line 447
    move-object/from16 v0, p2

    invoke-static {v4, v0, v6, v8}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 445
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 455
    :cond_16
    :goto_19
    const-string v5, "RADIOLOG"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 457
    :try_start_16
    const-string v5, "RADIOLOG"

    const-string v6, "radio"

    const/4 v8, 0x0

    .line 459
    move-object/from16 v0, p2

    invoke-static {v4, v0, v6, v8}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 457
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 483
    :cond_17
    :goto_1a
    const-string v5, "LARGE_MEM_HEAP"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 485
    :try_start_17
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_18

    .line 486
    const-string v5, "LARGE_MEM_HEAP"

    .line 488
    invoke-static {v4}, Lcom/facebook/acra/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 486
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_18

    .line 499
    :cond_18
    :goto_1b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_23

    const/16 v27, 0x1

    .line 501
    .local v27, "subprocessSafe":Z
    :goto_1c
    if-eqz v27, :cond_1a

    .line 502
    const-string v5, "OPEN_FILE_DESCRIPTORS"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 504
    :try_start_18
    const-string v5, "OPEN_FILE_DESCRIPTORS"

    .line 506
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFileDescriptors()Ljava/lang/String;

    move-result-object v6

    .line 504
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_19

    .line 514
    :cond_19
    :goto_1d
    const-string v5, "DATA_FILE_LS_LR"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 516
    :try_start_19
    const-string v5, "DATA_FILE_LS_LR"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/ls"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "-lLR"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    .line 519
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 518
    invoke-static {v6}, Lcom/facebook/acra/util/CommandOutputCollector;->collect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1a

    .line 528
    :cond_1a
    :goto_1e
    if-nez v22, :cond_1b

    .line 529
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v4, v0, v1, v2}, Lcom/facebook/acra/CrashTimeDataCollector;->attachComponentStats(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 531
    :cond_1b
    return-void

    .line 204
    .end local v18    # "limits":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    .end local v20    # "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    .end local v22    # "nativeCrash":Z
    .end local v27    # "subprocessSafe":Z
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v20    # "minidumpReader":Lcom/facebook/acra/util/MinidumpReader;
    .restart local v22    # "nativeCrash":Z
    :catch_0
    move-exception v15

    .line 211
    .local v15, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "There was a problem reading the minidump"

    invoke-static {v5, v15, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 224
    .end local v15    # "ex":Ljava/lang/Exception;
    :cond_1d
    const v5, 0x47670006

    :try_start_1a
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 225
    .restart local v25    # "processName":Ljava/lang/String;
    if-nez v25, :cond_1e

    .line 226
    const-string v25, ""

    .line 229
    :cond_1e
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .line 230
    .local v23, "nullPos":I
    const/4 v5, -0x1

    move/from16 v0, v23

    if-eq v0, v5, :cond_1

    .line 231
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1

    move-result-object v25

    goto/16 :goto_2

    .line 235
    .end local v23    # "nullPos":I
    .end local v25    # "processName":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 236
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v5, "PROCESS_NAME"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 244
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    .line 245
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "USER_APP_START_DATE"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 253
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_3
    move-exception v15

    .line 254
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "PROCESS_UPTIME"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 261
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v15

    .line 262
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "DEVICE_UPTIME"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 273
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v15

    .line 274
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 282
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_6
    move-exception v15

    .line 283
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 295
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_7
    move-exception v15

    .line 296
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 308
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_8
    move-exception v15

    .line 309
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "CRASH_CONFIGURATION"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 317
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_9
    move-exception v15

    .line 318
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "AVAILABLE_MEM_SIZE"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 326
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_a
    move-exception v15

    .line 327
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "DUMPSYS_MEMINFO"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 335
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_b
    move-exception v15

    .line 336
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "DUMPSYS_USERINFO"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 348
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v13    # "curDate":Landroid/text/format/Time;
    :cond_1f
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Landroid/text/format/Time;->set(J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_e

    .line 351
    .end local v13    # "curDate":Landroid/text/format/Time;
    :catch_c
    move-exception v15

    .line 352
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "USER_CRASH_DATE"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 363
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_20
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    move-result-object v11

    .restart local v11    # "activityLogDump":Ljava/lang/String;
    goto/16 :goto_10

    .line 366
    .end local v11    # "activityLogDump":Ljava/lang/String;
    :catch_d
    move-exception v15

    .line 367
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "ACTIVITY_LOG"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 375
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_e
    move-exception v15

    .line 376
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "PROCESS_NAME_BY_AMS"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 387
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_f
    move-exception v15

    .line 388
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "OPEN_FD_COUNT"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 395
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "limits":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    :catch_10
    move-exception v15

    .line 396
    .restart local v15    # "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "unable to retrieve open FD info: not logging FD fields"

    invoke-static {v5, v15, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 404
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_11
    move-exception v15

    .line 405
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "OPEN_FD_SOFT_LIMIT"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 413
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_12
    move-exception v15

    .line 414
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "OPEN_FD_HARD_LIMIT"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 425
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_13
    move-exception v15

    .line 426
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "RUNTIME_PERMISSIONS"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 436
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_14
    move-exception v15

    .line 437
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "LOGCAT"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 450
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_15
    move-exception v15

    .line 451
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "EVENTSLOG"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 462
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_16
    move-exception v15

    .line 463
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "RADIOLOG"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 467
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_21
    const-string v5, "LOGCAT_NATIVE"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "LOGCAT"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/facebook/acra/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 469
    const/4 v7, 0x0

    .line 470
    .local v7, "logcatFileName":Ljava/lang/String;
    if-eqz v22, :cond_22

    .line 471
    :try_start_1d
    const-string v5, "logcatFileName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    sget-object v5, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "logcat Logcat file name from minidump : %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v5, v6, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :cond_22
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    .line 475
    invoke-static/range {v4 .. v10}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v19

    .line 477
    .restart local v19    # "logcat":Ljava/lang/String;
    const-string v5, "LOGCAT"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_17

    goto/16 :goto_1a

    .line 478
    .end local v19    # "logcat":Ljava/lang/String;
    :catch_17
    move-exception v15

    .line 479
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "LOGCAT"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 492
    .end local v7    # "logcatFileName":Ljava/lang/String;
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_18
    move-exception v15

    .line 493
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "LARGE_MEM_HEAP"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 499
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_1c

    .line 509
    .restart local v27    # "subprocessSafe":Z
    :catch_19
    move-exception v15

    .line 510
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "OPEN_FILE_DESCRIPTORS"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 522
    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_1a
    move-exception v15

    .line 523
    .restart local v15    # "ex":Ljava/lang/Throwable;
    const-string v5, "DATA_FILE_LS_LR"

    move-object/from16 v0, p4

    invoke-static {v0, v5, v15}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e
.end method

.method private static populateCustomData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 6
    .param p0, "reporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p4, "writer"    # Ljava/io/Writer;

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getCustomFieldsSnapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 748
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p3, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v2

    .line 752
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p3, v3, v2}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 758
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getLazyCustomFieldsSnapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p3, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddLazyField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 761
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/acra/CustomReportDataSupplier;

    invoke-interface {v4, p2}, Lcom/facebook/acra/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 762
    :catch_1
    move-exception v2

    .line 763
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p3, v3, v2}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 767
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method private static reportInternalStorageUsage(Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 6
    .param p0, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p1, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p2, "writer"    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 968
    const-string v4, "DISK_SIZE_TOTAL"

    invoke-static {v4, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 970
    const-wide/16 v4, 0x400

    :try_start_0
    invoke-static {v4, v5}, Lcom/facebook/acra/util/StatFsUtil;->getTotalInternalStorageSpace(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 971
    .local v2, "totalDiskSize":Ljava/lang/String;
    const-string v4, "DISK_SIZE_TOTAL"

    invoke-static {v4, v2, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v2    # "totalDiskSize":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "DISK_SIZE_AVAILABLE"

    invoke-static {v4, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 979
    const-wide/16 v4, 0x400

    .line 980
    :try_start_1
    invoke-static {v4, v5}, Lcom/facebook/acra/util/StatFsUtil;->getAvailableInternalStorageSpace(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "availableDiskSize":Ljava/lang/String;
    const-string v4, "DISK_SIZE_AVAILABLE"

    invoke-static {v4, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 987
    .end local v0    # "availableDiskSize":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "DISK_SIZE_USED"

    invoke-static {v4, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 989
    const-wide/16 v4, 0x400

    :try_start_2
    invoke-static {v4, v5}, Lcom/facebook/acra/util/StatFsUtil;->getUsedInternalStorageSpace(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 990
    .local v3, "usedDiskSize":Ljava/lang/String;
    const-string v4, "DISK_SIZE_USED"

    invoke-static {v4, v3, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 995
    .end local v3    # "usedDiskSize":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "DISK_SIZE_TOTAL"

    invoke-static {p1, v4, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 982
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 983
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v4, "DISK_SIZE_AVAILABLE"

    invoke-static {p1, v4, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 991
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 992
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v4, "DISK_SIZE_USED"

    invoke-static {p1, v4, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static resetProcessNameByAmsCache()V
    .locals 1

    .prologue
    .line 819
    const-string v0, "!"

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 820
    return-void
.end method

.method static shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p2, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;

    .prologue
    .line 94
    invoke-virtual {p1, p0}, Lcom/facebook/acra/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static shouldAddLazyField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p2, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;

    .prologue
    .line 99
    invoke-interface {p2}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldLazyFieldsOverwriteExistingValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p2, p0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/16 v4, 0xa

    .line 916
    if-nez p0, :cond_0

    .line 917
    const-string v2, ""

    .line 955
    :goto_0
    return-object v2

    .line 920
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 921
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "width="

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 926
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 929
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 931
    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 932
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    .line 933
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 934
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    .line 935
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 936
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    .line 937
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 938
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 939
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    .line 940
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 941
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 942
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 944
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 945
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 948
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    .line 949
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 950
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 951
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    .line 952
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 953
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
