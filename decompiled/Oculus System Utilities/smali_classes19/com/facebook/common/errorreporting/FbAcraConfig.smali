.class public Lcom/facebook/common/errorreporting/FbAcraConfig;
.super Lcom/facebook/acra/config/DefaultAcraConfig;
.source "FbAcraConfig.java"


# static fields
.field private static final DEFAULT_NUMBER_OF_LOGCAT_LINES_TO_READ:I = 0xc8

.field public static final MAX_REPORTS_SENT_PER_DAY:I = 0x64

.field public static final URI_UPLOAD_CRASH:Ljava/lang/String; = "https://www.facebook.com/mobile/generic_android_crash_logs/"


# instance fields
.field private mAllowAndroidLogCatNativeCrashes:Z

.field private final mAllowCollectionOfMaxNumberOfLinesInLogcat:Z

.field private mIsCallingExternalProcsDuringErrorReportingDisabled:Z

.field private mLimitMaxCrashReports:Z

.field private final mLogcatNumberOfLines:I

.field private mShouldLazyFieldsOverwriteExistingValues:Z

.field private final mShouldOnlyWriteReport:Z

.field private final mShouldSkipReportOnSocketTimeout:Z

.field private final mShouldStopAnrDetectorOnErrorReporting:Z

.field private final mShouldUseUploadService:Z

.field private mStartupBlockingConfig:Lcom/facebook/acra/config/StartupBlockingConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUseMultipartPost:Z

.field private mUseZstd:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "crashReportUrl"    # Ljava/lang/String;
    .param p3, "isInternalBuild"    # Z

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/acra/config/DefaultAcraConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseMultipartPost:Z

    .line 28
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseZstd:Z

    .line 31
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowAndroidLogCatNativeCrashes:Z

    .line 33
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mIsCallingExternalProcsDuringErrorReportingDisabled:Z

    .line 35
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLimitMaxCrashReports:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mStartupBlockingConfig:Lcom/facebook/acra/config/StartupBlockingConfig;

    .line 55
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLogcatNumberOfLines:I

    .line 56
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowCollectionOfMaxNumberOfLinesInLogcat:Z

    .line 57
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldStopAnrDetectorOnErrorReporting:Z

    .line 58
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldSkipReportOnSocketTimeout:Z

    .line 59
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldUseUploadService:Z

    .line 60
    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldOnlyWriteReport:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;ZZ)V
    .locals 18
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "crashReportUrl"    # Ljava/lang/String;
    .param p3, "isInternalBuild"    # Z
    .param p4, "shouldStartANRDetector"    # Z

    .prologue
    .line 68
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v17}, Lcom/facebook/common/errorreporting/FbAcraConfig;-><init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;IZZZZZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;IZZZZ)V
    .locals 18
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "crashReportUrl"    # Ljava/lang/String;
    .param p3, "isInternalBuild"    # Z
    .param p4, "shouldStartANRDetector"    # Z
    .param p5, "useMultipartPost"    # Z
    .param p6, "allowAndroidLogCatNativeCrashes"    # Z
    .param p7, "useZstd"    # Z
    .param p8, "isZrCrashlogBlocked"    # Z
    .param p9, "limitMaxCrashReports"    # Z
    .param p10, "startupBlockingConfig"    # Lcom/facebook/acra/config/StartupBlockingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "sessionId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "logcatNumberOfLines"    # I
    .param p13, "allowMaxNumberOfLinesCollectedFromLogcat"    # Z
    .param p14, "shouldStopAnrDetectorOnErrorReporting"    # Z
    .param p15, "shouldSkipReportOnSocketTimeout"    # Z
    .param p16, "shouldUseUploadService"    # Z

    .prologue
    .line 138
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v17}, Lcom/facebook/common/errorreporting/FbAcraConfig;-><init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;IZZZZZ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;IZZZZZ)V
    .locals 8
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "crashReportUrl"    # Ljava/lang/String;
    .param p3, "isInternalBuild"    # Z
    .param p4, "shouldStartANRDetector"    # Z
    .param p5, "useMultipartPost"    # Z
    .param p6, "allowAndroidLogCatNativeCrashes"    # Z
    .param p7, "useZstd"    # Z
    .param p8, "isZrCrashlogBlocked"    # Z
    .param p9, "limitMaxCrashReports"    # Z
    .param p10, "startupBlockingConfig"    # Lcom/facebook/acra/config/StartupBlockingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "sessionId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "logcatNumberOfLines"    # I
    .param p13, "allowMaxNumberOfLinesCollectedFromLogcat"    # Z
    .param p14, "shouldStopAnrDetectorOnErrorReporting"    # Z
    .param p15, "shouldSkipReportOnSocketTimeout"    # Z
    .param p16, "shouldUseUploadService"    # Z
    .param p17, "shouldOnlyWriteReport"    # Z

    .prologue
    .line 176
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/facebook/acra/config/DefaultAcraConfig;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseMultipartPost:Z

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseZstd:Z

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowAndroidLogCatNativeCrashes:Z

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mIsCallingExternalProcsDuringErrorReportingDisabled:Z

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLimitMaxCrashReports:Z

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mStartupBlockingConfig:Lcom/facebook/acra/config/StartupBlockingConfig;

    .line 183
    iput-boolean p5, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseMultipartPost:Z

    .line 184
    iput-boolean p6, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowAndroidLogCatNativeCrashes:Z

    .line 185
    iput-boolean p7, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseZstd:Z

    .line 186
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLimitMaxCrashReports:Z

    .line 187
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mStartupBlockingConfig:Lcom/facebook/acra/config/StartupBlockingConfig;

    .line 188
    move/from16 v0, p12

    iput v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLogcatNumberOfLines:I

    .line 189
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowCollectionOfMaxNumberOfLinesInLogcat:Z

    .line 190
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldStopAnrDetectorOnErrorReporting:Z

    .line 191
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldSkipReportOnSocketTimeout:Z

    .line 192
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldUseUploadService:Z

    .line 193
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldOnlyWriteReport:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "crashReportUrl"    # Ljava/lang/String;
    .param p3, "isInternalBuild"    # Z
    .param p4, "shouldStartANRDetector"    # Z
    .param p5, "useMultipartPost"    # Z
    .param p6, "allowAndroidLogCatNativeCrashes"    # Z
    .param p7, "useZstd"    # Z
    .param p8, "isZrCrashlogBlocked"    # Z
    .param p9, "limitMaxCrashReports"    # Z
    .param p10, "startupBlockingConfig"    # Lcom/facebook/acra/config/StartupBlockingConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "sessionId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "shouldUseUploadService"    # Z

    .prologue
    .line 101
    const/16 v12, 0xc8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v16, p12

    invoke-direct/range {v0 .. v17}, Lcom/facebook/common/errorreporting/FbAcraConfig;-><init>(Landroid/app/Application;Ljava/lang/String;ZZZZZZZLcom/facebook/acra/config/StartupBlockingConfig;Ljava/lang/String;IZZZZZ)V

    .line 119
    return-void
.end method

.method public static getErrorUploadURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "appID"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "https://www.facebook.com/mobile/generic_android_crash_logs/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowCollectionOfMaxNumberOfLinesInLogcat()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowCollectionOfMaxNumberOfLinesInLogcat:Z

    return v0
.end method

.method public createReportSender()Lcom/facebook/acra/sender/FlexibleReportSender;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/facebook/acra/sender/HttpPostSender;

    invoke-direct {v0, p0}, Lcom/facebook/acra/sender/HttpPostSender;-><init>(Lcom/facebook/acra/config/AcraReportingConfig;)V

    .line 211
    .local v0, "httpPostSender":Lcom/facebook/acra/sender/HttpPostSender;
    iget-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseMultipartPost:Z

    invoke-virtual {v0, v1}, Lcom/facebook/acra/sender/HttpPostSender;->setUseMultipartPost(Z)V

    .line 212
    iget-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mUseZstd:Z

    invoke-virtual {v0, v1}, Lcom/facebook/acra/sender/HttpPostSender;->setUseZstd(Z)V

    .line 213
    return-object v0
.end method

.method protected getLogcatNumberOfLinesToCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLogcatNumberOfLines:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxReportsSentPerDay()I
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mLimitMaxCrashReports:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/facebook/acra/config/DefaultAcraConfig;->getMaxReportsSentPerDay()I

    move-result v0

    goto :goto_0
.end method

.method public getStartupBlockingConfig()Lcom/facebook/acra/config/StartupBlockingConfig;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mStartupBlockingConfig:Lcom/facebook/acra/config/StartupBlockingConfig;

    return-object v0
.end method

.method public setIsCallingExternalProcessesForCrashReportsDisabled(Z)V
    .locals 0
    .param p1, "isDisabled"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mIsCallingExternalProcsDuringErrorReportingDisabled:Z

    .line 202
    return-void
.end method

.method public setShouldLazyFieldsOverwriteExistingValues(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldLazyFieldsOverwriteExistingValues:Z

    .line 206
    return-void
.end method

.method public shouldLazyFieldsOverwriteExistingValues()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldLazyFieldsOverwriteExistingValues:Z

    return v0
.end method

.method public shouldOnlyWriteReport()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldOnlyWriteReport:Z

    return v0
.end method

.method public shouldReportField(Ljava/lang/String;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mIsCallingExternalProcsDuringErrorReportingDisabled:Z

    if-eqz v1, :cond_1

    const-string v1, "DATA_FILE_LS_LR"

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mIsCallingExternalProcsDuringErrorReportingDisabled:Z

    if-eqz v1, :cond_2

    const-string v1, "OPEN_FILE_DESCRIPTORS"

    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    :cond_2
    const-string v0, "LOGCAT_NATIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mAllowAndroidLogCatNativeCrashes:Z

    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "COMPONENTS_TOTAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_DEFAULT"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_DISABLED"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_ENABLED"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_DEFAULT_NAMES"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_DISABLED_NAMES"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "COMPONENTS_FLAG_STATE"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    :cond_4
    invoke-static {}, Lcom/facebook/appcomponentmanager/AppComponentConstants;->isPreTosBuild()Z

    move-result v0

    goto :goto_0

    .line 242
    :cond_5
    invoke-super {p0, p1}, Lcom/facebook/acra/config/DefaultAcraConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldSkipReportOnSocketTimeout()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldSkipReportOnSocketTimeout:Z

    return v0
.end method

.method public shouldStopAnrDetectorOnErrorReporting()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldStopAnrDetectorOnErrorReporting:Z

    return v0
.end method

.method public shouldUseUploadService()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbAcraConfig;->mShouldUseUploadService:Z

    return v0
.end method
