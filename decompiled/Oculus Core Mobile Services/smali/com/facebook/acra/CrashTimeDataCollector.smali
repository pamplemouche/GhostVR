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
    .locals 3

    .prologue
    .line 536
    const-string v0, "COMPONENTS_TOTAL"

    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_ENABLED"

    .line 537
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_DISABLED"

    .line 538
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_DEFAULT"

    .line 539
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_DISABLED_NAMES"

    .line 540
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_DEFAULT_NAMES"

    .line 541
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMPONENTS_FLAG_STATE"

    .line 542
    invoke-static {v0, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 545
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/acra/AppComponentStats;

    invoke-direct {v0, p0}, Lcom/facebook/acra/AppComponentStats;-><init>(Landroid/content/Context;)V

    .line 546
    invoke-virtual {v0}, Lcom/facebook/acra/AppComponentStats;->getStats()Lcom/facebook/acra/AppComponentStats$Stats;

    move-result-object v0

    .line 548
    const-string v1, "COMPONENTS_TOTAL"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    const-string v1, "COMPONENTS_TOTAL"

    iget v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->totalCount:I

    .line 550
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 553
    :cond_1
    const-string v1, "COMPONENTS_ENABLED"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    const-string v1, "COMPONENTS_ENABLED"

    iget v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->enabledCount:I

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 558
    :cond_2
    const-string v1, "COMPONENTS_DISABLED"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    const-string v1, "COMPONENTS_DISABLED"

    iget v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->disabledCount:I

    .line 560
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 563
    :cond_3
    const-string v1, "COMPONENTS_DEFAULT"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 564
    const-string v1, "COMPONENTS_DEFAULT"

    iget v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->defaultCount:I

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 568
    :cond_4
    const-string v1, "COMPONENTS_DEFAULT_NAMES"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 569
    const-string v1, "COMPONENTS_DEFAULT_NAMES"

    iget-object v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->defaultComponents:Ljava/util/List;

    .line 570
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 573
    :cond_5
    const-string v1, "COMPONENTS_DISABLED_NAMES"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 574
    const-string v1, "COMPONENTS_DISABLED_NAMES"

    iget-object v2, v0, Lcom/facebook/acra/AppComponentStats$Stats;->disabledComponents:Ljava/util/List;

    .line 575
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 578
    :cond_6
    const-string v1, "COMPONENTS_FLAG_STATE"

    invoke-static {v1, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 579
    const-string v1, "COMPONENTS_FLAG_STATE"

    iget v0, v0, Lcom/facebook/acra/AppComponentStats$Stats;->flagState:I

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v1, v0, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_7
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    const-string v1, "COMPONENTS_TOTAL"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 585
    const-string v1, "COMPONENTS_TOTAL"

    invoke-static {p2, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static gatherCrashData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Lcom/facebook/acra/Spool$FileBeingConsumed;Z)V
    .locals 7
    .param p5    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p4, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p4, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v1, "UID"

    invoke-static {p4, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    const-string v1, "CLIENT_UID"

    invoke-static {p4, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    :catch_3
    move-exception v0

    .line 146
    const-string v1, "STACK_TRACE"

    invoke-static {p4, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

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
    move-exception v0

    .line 173
    :try_start_5
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error attaching field failures to report: continuing"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 174
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static getAndroidRuntime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 877
    const-string v0, "DALVIK"

    .line 887
    :goto_0
    return-object v0

    .line 879
    :cond_0
    const-string v0, "java.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_2

    .line 881
    const-string v1, "/system/framework/core-libart.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    const-string v0, "ART"

    goto :goto_0

    .line 883
    :cond_1
    const-string v1, "/system/framework/core.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    const-string v0, "DALVIK"

    goto :goto_0

    .line 887
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private static getCpuAbis()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 893
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 894
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector$Api21Utils;->getCpuAbis()[Ljava/lang/String;

    move-result-object v0

    .line 898
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 900
    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    .line 902
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 904
    :cond_0
    return-object v0

    .line 896
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v4

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
    .locals 3

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 840
    if-nez v0, :cond_0

    .line 841
    const-string v0, "no package manager"

    .line 851
    :goto_0
    return-object v0

    .line 845
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 846
    if-nez v0, :cond_1

    .line 847
    const-string v0, "no package info"

    goto :goto_0

    .line 849
    :cond_1
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;
    .locals 2

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
    .locals 1

    .prologue
    .line 596
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 597
    if-nez v0, :cond_0

    .line 598
    const-string v0, "/proc/self/cmdline"

    invoke-static {v0}, Lcom/facebook/common/procread/ProcReader;->readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;

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

    .prologue
    .line 827
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 828
    if-nez v0, :cond_0

    .line 829
    const-string v0, "n/a"

    .line 831
    :cond_0
    return-object v0
.end method

.method private static getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 790
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 791
    const-string v2, "!"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 815
    :cond_0
    :goto_0
    return-object v1

    .line 796
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 798
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 799
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    .line 807
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 808
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2

    .line 809
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 814
    :goto_1
    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    move-object v1, v0

    .line 815
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static getProcessUptime(Lcom/facebook/acra/ErrorReporter;)J
    .locals 4

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
    .locals 2

    .prologue
    .line 857
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-object v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    const-string v0, "package name not found"

    goto :goto_0
.end method

.method static noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/CrashReportData;->fieldFailures:Ljava/util/ArrayList;

    const-string v1, "%s: [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 777
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
    move-exception v0

    goto :goto_0
.end method

.method private static populateConstantDeviceData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 625
    invoke-interface {p1}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 631
    const/16 v0, 0xd

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "BUILD"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "JAIL_BROKEN"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "INSTALLATION_ID"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "TOTAL_MEM_SIZE"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "ENVIRONMENT"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "ANDROID_RUNTIME"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "device_cpu_abis"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    const-string v1, "is_64_bit_build"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    const-string v1, "DISPLAY"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    const-string v1, "DEVICE_FEATURES"

    aput-object v1, v5, v0

    const/16 v0, 0xa

    const-string v1, "IS_LOW_RAM_DEVICE"

    aput-object v1, v5, v0

    const/16 v0, 0xb

    const-string v1, "WEBVIEW_VERSION"

    aput-object v1, v5, v0

    const/16 v0, 0xc

    const-string v1, "PLAY_SERVICES_VERSION"

    aput-object v1, v5, v0

    .line 647
    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_7

    aget-object v7, v5, v3

    .line 648
    invoke-static {v7, p2, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const/4 v2, 0x0

    .line 651
    const/4 v1, 0x1

    .line 654
    :try_start_0
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 728
    :goto_1
    if-eqz v2, :cond_0

    .line 729
    :try_start_1
    invoke-static {v7, v0, p2, p3}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 657
    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 724
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing case for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 731
    :catch_0
    move-exception v0

    move v1, v2

    .line 732
    :goto_4
    if-nez v1, :cond_0

    .line 733
    invoke-static {p2, v7, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 657
    :sswitch_0
    :try_start_3
    const-string v8, "BUILD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_1
    const-string v8, "JAIL_BROKEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_2
    const-string v8, "INSTALLATION_ID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_3
    const-string v8, "TOTAL_MEM_SIZE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_4
    const-string v8, "ENVIRONMENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_5
    const-string v8, "ANDROID_RUNTIME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_6
    const-string v8, "device_cpu_abis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_7
    const-string v8, "is_64_bit_build"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x7

    goto :goto_3

    :sswitch_8
    const-string v8, "DISPLAY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0x8

    goto :goto_3

    :sswitch_9
    const-string v8, "DEVICE_FEATURES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_3

    :sswitch_a
    const-string v8, "IS_LOW_RAM_DEVICE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_3

    :sswitch_b
    const-string v8, "WEBVIEW_VERSION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_3

    :sswitch_c
    const-string v8, "PLAY_SERVICES_VERSION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_3

    .line 659
    :pswitch_0
    const-class v0, Landroid/os/Build;

    invoke-static {v0}, Lcom/facebook/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 726
    :goto_5
    :try_start_4
    sget-object v8, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 731
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 662
    :pswitch_1
    :try_start_5
    invoke-static {}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->getJailStatus()Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 663
    goto :goto_5

    .line 665
    :pswitch_2
    invoke-static {v4}, Lcom/facebook/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 666
    goto :goto_5

    .line 668
    :pswitch_3
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lcom/facebook/acra/util/StatFsUtil;->getTotalInternalStorageSpace(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 669
    goto :goto_5

    .line 671
    :pswitch_4
    const-class v0, Landroid/os/Environment;

    invoke-static {v0}, Lcom/facebook/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 672
    goto :goto_5

    .line 674
    :pswitch_5
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 675
    goto :goto_5

    .line 677
    :pswitch_6
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getCpuAbis()Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 678
    goto :goto_5

    .line 680
    :pswitch_7
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->is64BitBuild()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 681
    goto :goto_5

    .line 683
    :pswitch_8
    const/4 v2, 0x1

    .line 684
    const-string v0, "window"

    .line 686
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 687
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 688
    goto :goto_5

    .line 690
    :pswitch_9
    const/4 v2, 0x1

    .line 691
    invoke-static {v4}, Lcom/facebook/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 692
    goto :goto_5

    .line 694
    :pswitch_a
    const/4 v2, 0x1

    .line 695
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v0, v8, :cond_3

    .line 696
    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector$Api19Utils;->isLowRamDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_5

    .line 698
    :cond_3
    const/4 v0, 0x0

    .line 699
    const/4 v1, 0x0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 701
    goto/16 :goto_5

    .line 703
    :pswitch_b
    const/4 v2, 0x1

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_5

    .line 706
    invoke-static {v4}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;

    move-result-object v0

    const-string v8, "com.google.android.webview"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_4

    .line 708
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    move v10, v1

    move v1, v2

    move v2, v10

    .line 713
    goto/16 :goto_5

    .line 710
    :cond_4
    const/4 v0, 0x0

    .line 711
    const/4 v1, 0x0

    goto :goto_6

    .line 714
    :cond_5
    const/4 v0, 0x0

    .line 715
    const/4 v1, 0x0

    move v10, v1

    move v1, v2

    move v2, v10

    .line 717
    goto/16 :goto_5

    .line 719
    :pswitch_c
    const/4 v1, 0x1

    .line 720
    :try_start_6
    invoke-static {v4}, Lcom/facebook/acra/ReflectionCollector;->getPlayServicesVersion(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    .line 721
    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :goto_7
    move-object v10, v2

    move v2, v0

    move-object v0, v10

    .line 722
    goto/16 :goto_5

    .line 721
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 738
    :cond_7
    return-void

    .line 657
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
    .locals 8
    .param p0    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/facebook/acra/ErrorReporter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    move v7, v1

    .line 206
    :goto_0
    const/4 v2, 0x0

    .line 207
    if-eqz v7, :cond_1c

    .line 209
    :try_start_0
    new-instance v1, Lcom/facebook/acra/util/MinidumpReader;

    iget-object v3, p0, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v3}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 218
    :goto_1
    if-eqz p6, :cond_1

    const-string v1, "PROCESS_NAME"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    if-nez v7, :cond_1d

    .line 222
    :try_start_1
    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_0
    :goto_2
    const-string v2, "PROCESS_NAME"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :cond_1
    :goto_3
    const-string v1, "USER_APP_START_DATE"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v7, :cond_2

    .line 242
    :try_start_2
    const-string v1, "USER_APP_START_DATE"

    .line 243
    invoke-virtual {p1}, Lcom/facebook/acra/ErrorReporter;->getAppStartDateFormat3339()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :cond_2
    :goto_4
    const-string v1, "PROCESS_UPTIME"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v7, :cond_3

    .line 251
    :try_start_3
    const-string v1, "PROCESS_UPTIME"

    .line 252
    invoke-static {p1}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessUptime(Lcom/facebook/acra/ErrorReporter;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 258
    :cond_3
    :goto_5
    const-string v1, "DEVICE_UPTIME"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    :try_start_4
    const-string v1, "DEVICE_UPTIME"

    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getDeviceUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 266
    :cond_4
    :goto_6
    const-string v1, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    :try_start_5
    const-string v1, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    .line 270
    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    :cond_5
    :goto_7
    const-string v1, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    :try_start_6
    const-string v1, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    .line 281
    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getPublicSourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 287
    :cond_6
    :goto_8
    const-string v1, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 289
    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getPublicSourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    const-string v1, "File doesn\'t exist"

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 294
    :cond_7
    const-string v2, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 300
    :cond_8
    :goto_9
    const-string v1, "CRASH_CONFIGURATION"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 302
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_9

    .line 304
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 305
    const-string v2, "CRASH_CONFIGURATION"

    .line 306
    invoke-static {v1}, Lcom/facebook/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 313
    :cond_9
    :goto_a
    const-string v1, "AVAILABLE_MEM_SIZE"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v7, :cond_a

    .line 315
    const-wide/16 v2, 0x1

    :try_start_9
    invoke-static {v2, v3}, Lcom/facebook/acra/util/StatFsUtil;->getAvailableInternalStorageSpace(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, "AVAILABLE_MEM_SIZE"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 322
    :cond_a
    :goto_b
    const-string v1, "DUMPSYS_MEMINFO"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v7, :cond_b

    .line 324
    :try_start_a
    const-string v1, "DUMPSYS_MEMINFO"

    .line 325
    invoke-static {v0}, Lcom/facebook/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 331
    :cond_b
    :goto_c
    const-string v1, "DUMPSYS_USERINFO"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 333
    :try_start_b
    const-string v1, "DUMPSYS_USERINFO"

    .line 334
    invoke-static {v0}, Lcom/facebook/acra/DumpSysCollector;->collectUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 340
    :cond_c
    :goto_d
    invoke-static {p2, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->reportInternalStorageUsage(Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 342
    const-string v1, "USER_CRASH_DATE"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 344
    :try_start_c
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 345
    if-nez v7, :cond_1f

    .line 346
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 350
    :goto_e
    const-string v2, "USER_CRASH_DATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 356
    :cond_d
    :goto_f
    const-string v1, "ACTIVITY_LOG"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v7, :cond_e

    .line 360
    :try_start_d
    instance-of v1, p3, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_20

    .line 361
    invoke-virtual {p1}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    :goto_10
    const-string v2, "ACTIVITY_LOG"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 371
    :cond_e
    :goto_11
    const-string v1, "PROCESS_NAME_BY_AMS"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v7, :cond_f

    .line 373
    :try_start_e
    const-string v1, "PROCESS_NAME_BY_AMS"

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 374
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->resetProcessNameByAmsCache()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 380
    :cond_f
    :goto_12
    const-string v1, "OPEN_FD_COUNT"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 382
    :try_start_f
    const-string v1, "OPEN_FD_COUNT"

    .line 384
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 392
    :cond_10
    :goto_13
    const/4 v2, 0x0

    .line 394
    :try_start_10
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v1

    move-object v2, v1

    .line 399
    :goto_14
    if-eqz v2, :cond_12

    .line 400
    const-string v1, "OPEN_FD_SOFT_LIMIT"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 402
    :try_start_11
    const-string v1, "OPEN_FD_SOFT_LIMIT"

    iget v3, v2, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->softLimit:I

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v1, v3, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 409
    :cond_11
    :goto_15
    const-string v1, "OPEN_FD_HARD_LIMIT"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 411
    :try_start_12
    const-string v1, "OPEN_FD_HARD_LIMIT"

    iget v2, v2, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:I

    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 419
    :cond_12
    :goto_16
    const-string v1, "RUNTIME_PERMISSIONS"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 421
    :try_start_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_13

    .line 422
    invoke-static {v0}, Lcom/facebook/acra/PermissionsReporter;->getAppGrantedPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 423
    const-string v2, "RUNTIME_PERMISSIONS"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 431
    :cond_13
    :goto_17
    if-nez v7, :cond_21

    .line 432
    const-string v1, "LOGCAT"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 434
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_14
    invoke-static {v0, p2, v1, v2}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v2, "LOGCAT"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 442
    :cond_14
    :goto_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_16

    .line 443
    const-string v1, "EVENTSLOG"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 445
    :try_start_15
    const-string v1, "EVENTSLOG"

    const-string v2, "events"

    const/4 v3, 0x0

    .line 447
    invoke-static {v0, p2, v2, v3}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 455
    :cond_15
    :goto_19
    const-string v1, "RADIOLOG"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 457
    :try_start_16
    const-string v1, "RADIOLOG"

    const-string v2, "radio"

    const/4 v3, 0x0

    .line 459
    invoke-static {v0, p2, v2, v3}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 483
    :cond_16
    :goto_1a
    const-string v1, "LARGE_MEM_HEAP"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 485
    :try_start_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_17

    .line 486
    const-string v1, "LARGE_MEM_HEAP"

    .line 488
    invoke-static {v0}, Lcom/facebook/acra/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_18

    .line 499
    :cond_17
    :goto_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_23

    const/4 v1, 0x1

    .line 501
    :goto_1c
    if-eqz v1, :cond_19

    .line 502
    const-string v1, "OPEN_FILE_DESCRIPTORS"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 504
    :try_start_18
    const-string v1, "OPEN_FILE_DESCRIPTORS"

    .line 506
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getProcFileReader()Lcom/facebook/acra/util/ProcFileReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFileDescriptors()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_19

    .line 514
    :cond_18
    :goto_1d
    const-string v1, "DATA_FILE_LS_LR"

    invoke-static {v1, p4, p2}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 516
    :try_start_19
    const-string v1, "DATA_FILE_LS_LR"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/ls"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-lLR"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 519
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 518
    invoke-static {v2}, Lcom/facebook/acra/util/CommandOutputCollector;->collect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1a

    .line 528
    :cond_19
    :goto_1e
    if-nez v7, :cond_1a

    .line 529
    invoke-static {v0, p2, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->attachComponentStats(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 531
    :cond_1a
    return-void

    .line 204
    :cond_1b
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "There was a problem reading the minidump"

    invoke-static {v3, v1, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1c
    move-object v4, v2

    goto/16 :goto_1

    .line 224
    :cond_1d
    const v1, 0x47670006

    :try_start_1a
    invoke-virtual {v4, v1}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    if-nez v1, :cond_1e

    .line 226
    const-string v1, ""

    .line 229
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 230
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1

    move-result-object v1

    goto/16 :goto_2

    .line 235
    :catch_1
    move-exception v1

    .line 236
    const-string v2, "PROCESS_NAME"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 244
    :catch_2
    move-exception v1

    .line 245
    const-string v2, "USER_APP_START_DATE"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 253
    :catch_3
    move-exception v1

    .line 254
    const-string v2, "PROCESS_UPTIME"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 261
    :catch_4
    move-exception v1

    .line 262
    const-string v2, "DEVICE_UPTIME"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 273
    :catch_5
    move-exception v1

    .line 274
    const-string v2, "APP_VERSION_CODE_IN_PACKAGE_MANAGER"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 282
    :catch_6
    move-exception v1

    .line 283
    const-string v2, "PUBLIC_SOURCE_DIR_IN_PACKAGE_MANAGER"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 295
    :catch_7
    move-exception v1

    .line 296
    const-string v2, "PUBLIC_SOURCE_DIR_LAST_MODIFIED"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 308
    :catch_8
    move-exception v1

    .line 309
    const-string v2, "CRASH_CONFIGURATION"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 317
    :catch_9
    move-exception v1

    .line 318
    const-string v2, "AVAILABLE_MEM_SIZE"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 326
    :catch_a
    move-exception v1

    .line 327
    const-string v2, "DUMPSYS_MEMINFO"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 335
    :catch_b
    move-exception v1

    .line 336
    const-string v2, "DUMPSYS_USERINFO"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 348
    :cond_1f
    :try_start_1b
    iget-object v2, p0, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_e

    .line 351
    :catch_c
    move-exception v1

    .line 352
    const-string v2, "USER_CRASH_DATE"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 363
    :cond_20
    :try_start_1c
    invoke-virtual {p1}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    move-result-object v1

    goto/16 :goto_10

    .line 366
    :catch_d
    move-exception v1

    .line 367
    const-string v2, "ACTIVITY_LOG"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 375
    :catch_e
    move-exception v1

    .line 376
    const-string v2, "PROCESS_NAME_BY_AMS"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 387
    :catch_f
    move-exception v1

    .line 388
    const-string v2, "OPEN_FD_COUNT"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 395
    :catch_10
    move-exception v1

    .line 396
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "unable to retrieve open FD info: not logging FD fields"

    invoke-static {v3, v1, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 404
    :catch_11
    move-exception v1

    .line 405
    const-string v3, "OPEN_FD_SOFT_LIMIT"

    invoke-static {p4, v3, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 413
    :catch_12
    move-exception v1

    .line 414
    const-string v2, "OPEN_FD_HARD_LIMIT"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 425
    :catch_13
    move-exception v1

    .line 426
    const-string v2, "RUNTIME_PERMISSIONS"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 436
    :catch_14
    move-exception v1

    .line 437
    const-string v2, "LOGCAT"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 450
    :catch_15
    move-exception v1

    .line 451
    const-string v2, "EVENTSLOG"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 462
    :catch_16
    move-exception v1

    .line 463
    const-string v2, "RADIOLOG"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 467
    :cond_21
    const-string v1, "LOGCAT_NATIVE"

    invoke-interface {p2, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "LOGCAT"

    invoke-virtual {p4, v1}, Lcom/facebook/acra/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 469
    const/4 v3, 0x0

    .line 470
    if-eqz v7, :cond_22

    .line 471
    :try_start_1d
    const-string v1, "logcatFileName"

    invoke-virtual {v4, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "logcat Logcat file name from minidump : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :cond_22
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    .line 475
    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v2, "LOGCAT"

    invoke-static {v2, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_17

    goto/16 :goto_1a

    .line 478
    :catch_17
    move-exception v1

    .line 479
    const-string v2, "LOGCAT"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 492
    :catch_18
    move-exception v1

    .line 493
    const-string v2, "LARGE_MEM_HEAP"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 499
    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 509
    :catch_19
    move-exception v1

    .line 510
    const-string v2, "OPEN_FILE_DESCRIPTORS"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 522
    :catch_1a
    move-exception v1

    .line 523
    const-string v2, "DATA_FILE_LS_LR"

    invoke-static {p4, v2, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e
.end method

.method private static populateCustomData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getCustomFieldsSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p3, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    .line 752
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getLazyCustomFieldsSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p3, p1}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddLazyField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/CustomReportDataSupplier;

    invoke-interface {v2, p2}, Lcom/facebook/acra/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 762
    :catch_1
    move-exception v1

    .line 763
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 767
    :cond_3
    return-void
.end method

.method private static reportInternalStorageUsage(Lcom/facebook/acra/config/AcraReportingConfig;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 2
    .param p2    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 968
    const-string v0, "DISK_SIZE_TOTAL"

    invoke-static {v0, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const-wide/16 v0, 0x400

    :try_start_0
    invoke-static {v0, v1}, Lcom/facebook/acra/util/StatFsUtil;->getTotalInternalStorageSpace(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 971
    const-string v1, "DISK_SIZE_TOTAL"

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_0
    :goto_0
    const-string v0, "DISK_SIZE_AVAILABLE"

    invoke-static {v0, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    const-wide/16 v0, 0x400

    .line 980
    :try_start_1
    invoke-static {v0, v1}, Lcom/facebook/acra/util/StatFsUtil;->getAvailableInternalStorageSpace(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 981
    const-string v1, "DISK_SIZE_AVAILABLE"

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 987
    :cond_1
    :goto_1
    const-string v0, "DISK_SIZE_USED"

    invoke-static {v0, p1, p0}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    const-wide/16 v0, 0x400

    :try_start_2
    invoke-static {v0, v1}, Lcom/facebook/acra/util/StatFsUtil;->getUsedInternalStorageSpace(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 990
    const-string v1, "DISK_SIZE_USED"

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 995
    :cond_2
    :goto_2
    return-void

    .line 972
    :catch_0
    move-exception v0

    .line 973
    const-string v1, "DISK_SIZE_TOTAL"

    invoke-static {p1, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 982
    :catch_1
    move-exception v0

    .line 983
    const-string v1, "DISK_SIZE_AVAILABLE"

    invoke-static {p1, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 991
    :catch_2
    move-exception v0

    .line 992
    const-string v1, "DISK_SIZE_USED"

    invoke-static {p1, v1, v0}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .prologue
    const/16 v4, 0xa

    .line 916
    if-nez p0, :cond_0

    .line 917
    const-string v0, ""

    .line 955
    :goto_0
    return-object v0

    .line 920
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 921
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
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

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 953
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
