.class public Lcom/oculus/appmanager/info/ApkUpdateInfoProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "ApkUpdateInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 24
    return-void
.end method


# virtual methods
.method public get(JJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/extras/Extras;)Lcom/oculus/appmanager/info/ApkUpdateInfo;
    .locals 29
    .param p18    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oculus/appmanager/info/model/RequestOrigin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/extras/Extras;",
            ")",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;"
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "getMethod_com.oculus.appmanager.info.ApkUpdateInfo"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    .line 38
    invoke-static/range {p0 .. p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;->$ul_$xXXcom_oculus_appmanager_info_ApkUpdateInfoDispatcher$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;

    move-result-object v25

    .line 39
    invoke-static/range {p0 .. p0}, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;->$ul_$xXXcom_oculus_appmanager_info_database_ApkUpdateExtrasManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;

    move-result-object v26

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v27

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v28

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    invoke-direct/range {v1 .. v28}, Lcom/oculus/appmanager/info/ApkUpdateInfo;-><init>(JJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/extras/Extras;Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;Lcom/oculus/debug/DebugMode;Lcom/oculus/errorreporting/ErrorReporter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
