.class Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Lcom/facebook/acra/ErrorReporter$ReportHandler;


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedANRReportHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addUpdatedProperties(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/io/File;)V
    .locals 23
    .param p1, "crashReport"    # Lcom/facebook/acra/CrashReportData;
    .param p2, "updatedData"    # Lcom/facebook/acra/CrashReportData;
    .param p3, "uploadedByProcess"    # Ljava/lang/String;
    .param p4, "updateFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 501
    .local v22, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, -0x1

    .line 502
    .local v17, "processTracePosition":I
    const/16 v20, 0x0

    .line 503
    .local v20, "triedToLookForTraces":Z
    invoke-static {}, Lcom/facebook/acra/ACRA;->getCachedShouldUploadSystemANRTraces()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    const-string v2, "anr_with_sigquit_traces"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 505
    .local v16, "hasSigquit":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v2, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    :cond_0
    const-string v2, "SIGQUIT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "hasSigquit":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 507
    .restart local v16    # "hasSigquit":Ljava/lang/String;
    if-nez v16, :cond_2

    .line 508
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Looking for system ANR traces"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v2, "PROCESS_NAME"

    .line 512
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TIME_OF_CRASH"

    .line 513
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "/data/anr/traces.txt"

    move-object/from16 v2, p0

    .line 511
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;->findANRTraces(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v17

    .line 516
    const/16 v20, 0x1

    .line 517
    const/4 v15, 0x0

    .line 518
    .local v15, "anrTracesData":Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_1

    .line 519
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 521
    :cond_1
    if-eqz v15, :cond_8

    .line 522
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Found and attaching system ANR traces"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "SIGQUIT"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/acra/util/AttachmentUtil;->compressToBase64String([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v2, "anr_system_traces_present"

    const-string v3, "true"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "anrTracesData":Ljava/lang/String;
    .end local v16    # "hasSigquit":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->getCachedShouldLogProcessPositionInAnrTraceFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    if-nez v20, :cond_3

    .line 533
    const-string v2, "PROCESS_NAME"

    .line 535
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "TIME_OF_CRASH"

    .line 536
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "/data/anr/traces.txt"

    const/4 v13, 0x0

    move-object/from16 v8, p0

    .line 534
    invoke-virtual/range {v8 .. v13}, Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;->findANRTraces(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v17

    .line 540
    :cond_3
    const-string v2, "anr_trace_position"

    .line 541
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_4
    const-string v2, "UPLOADED_BY_PROCESS"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v2, "anr_recovery_delay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 548
    .local v14, "anrRecoveryDelay":Ljava/lang/String;
    if-nez v14, :cond_5

    .line 549
    const-string v2, "anr_recovery_delay"

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 550
    const-string v2, "anr_recovery_delay"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_5
    const-string v2, "anr_system_error_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 553
    .local v18, "systemErrorMsg":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 554
    const-string v2, "anr_system_error_msg"

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 555
    if-eqz v18, :cond_6

    .line 556
    const-string v2, "anr_system_error_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_6
    const-string v2, "anr_system_tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 560
    .local v19, "systemTag":Ljava/lang/String;
    if-nez v19, :cond_7

    .line 561
    const-string v2, "anr_system_tag"

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 562
    if-eqz v19, :cond_7

    .line 563
    const-string v2, "anr_system_tag"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_7
    new-instance v21, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 567
    .local v21, "updateFileStream":Ljava/io/FileOutputStream;
    invoke-static/range {v21 .. v21}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/CrashReportData;->putAll(Ljava/util/Map;Ljava/io/Writer;)V

    .line 568
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 569
    return-void

    .line 526
    .end local v14    # "anrRecoveryDelay":Ljava/lang/String;
    .end local v18    # "systemErrorMsg":Ljava/lang/String;
    .end local v19    # "systemTag":Ljava/lang/String;
    .end local v21    # "updateFileStream":Ljava/io/FileOutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "anrTracesData":Ljava/lang/String;
    .restart local v16    # "hasSigquit":Ljava/lang/String;
    :cond_8
    const-string v2, "anr_system_traces_present"

    const-string v3, "false"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method findANRTraces(Ljava/lang/String;JLjava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 28
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "crashTime"    # J
    .param p4, "anrTracesFilePath"    # Ljava/lang/String;
    .param p5, "sb"    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 588
    const/4 v8, -0x1

    .line 589
    .local v8, "currentPos":I
    if-nez p1, :cond_0

    move/from16 v20, v8

    .line 677
    :goto_0
    return v20

    .line 592
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/FileReader;

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .local v5, "br":Ljava/io/BufferedReader;
    const/16 v21, 0x0

    .line 593
    const/4 v8, 0x0

    .line 594
    :try_start_1
    const-string v20, "----- pid (\\d+) at (\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}).* -----"

    .line 595
    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 597
    .local v4, "anrTraceStartPattern":Ljava/util/regex/Pattern;
    const-string v20, "----- end (\\d+) -----"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 598
    .local v3, "anrTraceEndPattern":Ljava/util/regex/Pattern;
    const-string v20, "Cmd line: (.*)"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 601
    .local v2, "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    const/16 v17, -0x1

    .line 602
    .local v17, "startPid":I
    const/4 v6, 0x0

    .line 605
    .local v6, "captureTrace":Z
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 611
    if-eqz v6, :cond_6

    .line 612
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v3, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 615
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 616
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 617
    .local v12, "endPid":I
    move/from16 v0, v17

    if-eq v0, v12, :cond_2

    .line 623
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v21, :cond_5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_2
    move/from16 v20, v8

    goto :goto_0

    :catch_0
    move-exception v20

    :try_start_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .end local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .end local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .end local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "captureTrace":Z
    .end local v12    # "endPid":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "startPid":I
    :catch_1
    move-exception v11

    .line 671
    .local v11, "e":Ljava/text/ParseException;
    sget-object v20, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v21, "Failed to parse ANR timestamp."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 677
    .end local v11    # "e":Ljava/text/ParseException;
    :cond_4
    :goto_3
    const/16 v20, -0x1

    goto/16 :goto_0

    .line 670
    .restart local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .restart local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "captureTrace":Z
    .restart local v12    # "endPid":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "startPid":I
    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 672
    .end local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .end local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .end local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "captureTrace":Z
    .end local v12    # "endPid":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "startPid":I
    :catch_2
    move-exception v11

    .line 673
    .local v11, "e":Ljava/io/IOException;
    sget-object v20, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v21, "Failed to read ANR traces."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 629
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .restart local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "captureTrace":Z
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v17    # "startPid":I
    :cond_6
    :try_start_5
    invoke-virtual {v4, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 630
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 631
    if-eqz p5, :cond_7

    .line 632
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 634
    :cond_7
    move-object/from16 v18, v13

    .line 635
    .local v18, "startPidLine":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 636
    const/16 v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 637
    .local v19, "timeStamp":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 638
    .local v10, "df":Ljava/text/DateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 639
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 642
    .local v14, "epoch":J
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 643
    invoke-virtual {v2, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 645
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 646
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 647
    .local v7, "currProcessName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v20

    if-eqz v20, :cond_a

    if-nez p5, :cond_a

    .line 670
    if-eqz v5, :cond_8

    if-eqz v21, :cond_9

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_8
    :goto_4
    move/from16 v20, v8

    goto/16 :goto_0

    :catch_3
    move-exception v20

    :try_start_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 674
    .end local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .end local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .end local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "captureTrace":Z
    .end local v7    # "currProcessName":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "df":Ljava/text/DateFormat;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "epoch":J
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "startPid":I
    .end local v18    # "startPidLine":Ljava/lang/String;
    .end local v19    # "timeStamp":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 675
    .local v11, "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v21, "Failed to extract pid from ANR traces."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 670
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .restart local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "captureTrace":Z
    .restart local v7    # "currProcessName":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v10    # "df":Ljava/text/DateFormat;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "epoch":J
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "startPid":I
    .restart local v18    # "startPidLine":Ljava/lang/String;
    .restart local v19    # "timeStamp":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 652
    :cond_a
    :try_start_9
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    sub-long v22, p2, v14

    .line 653
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    const-wide/16 v24, 0x3a98

    cmp-long v20, v22, v24

    if-gez v20, :cond_b

    if-eqz p5, :cond_b

    .line 657
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const/4 v6, 0x1

    .line 661
    :cond_b
    if-nez v6, :cond_1

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v20

    if-nez v20, :cond_1

    .line 664
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 670
    .end local v7    # "currProcessName":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "df":Ljava/text/DateFormat;
    .end local v14    # "epoch":J
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v18    # "startPidLine":Ljava/lang/String;
    .end local v19    # "timeStamp":Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_4

    if-eqz v21, :cond_d

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    :catch_5
    move-exception v20

    :try_start_b
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 592
    .end local v2    # "anrCmdLineProcessNamePattern":Ljava/util/regex/Pattern;
    .end local v3    # "anrTraceEndPattern":Ljava/util/regex/Pattern;
    .end local v4    # "anrTraceStartPattern":Ljava/util/regex/Pattern;
    .end local v6    # "captureTrace":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "startPid":I
    :catch_6
    move-exception v20

    :try_start_c
    throw v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 670
    :catchall_0
    move-exception v21

    move-object/from16 v26, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v26

    :goto_5
    if-eqz v5, :cond_e

    if-eqz v21, :cond_f

    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4

    :cond_e
    :goto_6
    :try_start_e
    throw v20

    :catch_7
    move-exception v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_6

    :catchall_1
    move-exception v20

    goto :goto_5
.end method

.method public handleReport(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/Spool$FileBeingConsumed;Ljava/lang/String;Z)Z
    .locals 14
    .param p1, "reporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p2, "dumpFile"    # Lcom/facebook/acra/Spool$FileBeingConsumed;
    .param p3, "uploadedByProcess"    # Ljava/lang/String;
    .param p4, "inProgress"    # Z

    .prologue
    .line 442
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->access$300(Lcom/facebook/acra/ErrorReporter;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 443
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->access$400(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "traces"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/facebook/acra/ErrorReporter;->access$500(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    const/4 v9, 0x1

    .line 491
    :goto_0
    return v9

    .line 447
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    .line 448
    .local v2, "curFileName":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "curFileNameString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 457
    .local v5, "fullPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".upd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v7, "updateFile":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_5

    .local v6, "inStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 459
    :try_start_2
    new-instance v1, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v1}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 460
    .local v1, "crashReport":Lcom/facebook/acra/CrashReportData;
    invoke-virtual {v1, v6}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/InputStream;)V

    .line 461
    new-instance v8, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v8}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 462
    .local v8, "updatedData":Lcom/facebook/acra/CrashReportData;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 465
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v9}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/InputStream;)V

    .line 467
    :cond_1
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v8, v0, v7}, Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;->addUpdatedProperties(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/io/File;)V

    .line 469
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v11}, Lcom/facebook/acra/CrashReportData;->merge(Ljava/util/Map;ZLjava/io/Writer;)V

    .line 470
    sget-object v9, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Sending file %s"

    invoke-static {v9, v11, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    if-eqz p4, :cond_2

    .line 472
    const-string v9, "SENT_IMMEDIATELY"

    const-string v11, "true"

    invoke-virtual {v1, v9, v11}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_2
    invoke-static {p1, v1}, Lcom/facebook/acra/ErrorReporter;->access$100(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V

    .line 475
    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    .line 476
    invoke-static {v7}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 477
    if-eqz v6, :cond_3

    if-eqz v10, :cond_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_3 .. :try_end_3} :catch_5

    .line 491
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "updateFile":Ljava/io/File;
    .end local v8    # "updatedData":Lcom/facebook/acra/CrashReportData;
    :catch_0
    move-exception v4

    .line 453
    .local v4, "e":Ljava/io/IOException;
    sget-object v9, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to get full path of crash report for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v9, v4, v10, v11}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 477
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .restart local v5    # "fullPath":Ljava/lang/String;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "updateFile":Ljava/io/File;
    .restart local v8    # "updatedData":Lcom/facebook/acra/CrashReportData;
    :catch_1
    move-exception v9

    :try_start_4
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .end local v1    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "updatedData":Lcom/facebook/acra/CrashReportData;
    :catch_2
    move-exception v4

    .line 478
    .local v4, "e":Ljava/lang/RuntimeException;
    sget-object v9, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to send crash reports"

    invoke-static {v9, v4, v10}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 479
    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    .line 480
    invoke-static {v7}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    .line 481
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 477
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "updatedData":Lcom/facebook/acra/CrashReportData;
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 482
    .end local v1    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "updatedData":Lcom/facebook/acra/CrashReportData;
    :catch_3
    move-exception v4

    .line 483
    .local v4, "e":Ljava/io/IOException;
    sget-object v9, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to load crash report for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v9, v4, v10, v11}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    .line 485
    invoke-static {v7}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    .line 486
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 458
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_4
    move-exception v9

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 477
    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v10, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_3
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_8 .. :try_end_8} :catch_5

    .line 487
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v4

    .line 488
    .local v4, "e":Lcom/facebook/acra/sender/ReportSenderException;
    sget-object v9, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to send crash report for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v9, v4, v10, v11}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 477
    .end local v4    # "e":Lcom/facebook/acra/sender/ReportSenderException;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :catch_6
    move-exception v11

    :try_start_9
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_2
.end method
