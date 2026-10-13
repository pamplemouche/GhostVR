.class public final Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
.super Ljava/lang/Object;
.source "FbColdStartExperimentsValues.java"

# interfaces
.implements Lcom/facebook/common/coldstartexperiments/experiments/CombinedHandlersExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/CombinedThreadPoolExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/DependencyManagerExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/DexTricksDiExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/FbScheduledTPErrorsExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/FuryParams;
.implements Lcom/facebook/common/coldstartexperiments/experiments/GraphicsCacheOverrideExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/IdleDetectorIncreaseThroughputExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/IncreaseXmlBlockCacheExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/JsonSerializerProviderExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/LightweightAppChoreographerExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/LightweightAppChoreographerMessengerExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/LightweightAppChoreographerWorkAppExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/MProtectExecOatExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/MadviseArtExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/MadviseFileExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/MoreThreadCleanupExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/NativeSignalHandlingExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/PreloadMethodsExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/PrimeGraphqlExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/ReduceFrameRateExperiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/StartupH22019Experiment;
.implements Lcom/facebook/common/coldstartexperiments/experiments/ThreadPoolExperiment;


# instance fields
.field private final mAlwaysPreloadMethods:Z

.field private final mAlwaysPreloadQuickCompiledCode:Z

.field private final mCombinedHandlersConfig:Ljava/lang/String;

.field private final mCombinedHandlersLogging:Z

.field private final mCombinedThreadPoolBackgroundHandler:Z

.field private final mCombinedThreadPoolBackgroundHandlerMaxThreads:I

.field private final mCombinedThreadPoolBackgroundHandlerPriority:I

.field private final mCombinedThreadPoolConditionFavorMostRecentThread:Z

.field private final mCombinedThreadPoolDefaultThreadPriority:I

.field private final mCombinedThreadPoolMaxThreads:I

.field private final mCombinedThreadPoolStatsEnabled:Z

.field private final mCombinedThreadPoolTaskFullWarningCount:I

.field private final mCombinedThreadPoolThreadKeepAliveS:I

.field private final mCombinedThreadPoolThreadReserve:I

.field private final mDalvikNopVerifyClass:Z

.field private final mDefaultTextureCacheValue:I

.field private final mDefaultTextureFlushRateValue:D

.field private final mDelayBetweenIdleCalls:I

.field private final mDisableSplashScreen:Z

.field private final mDrawableLruResourceCacheSize:I

.field private final mDrawablesInXmlLruCache:Z

.field private final mEagerlyPreloadMethods:Z

.field private final mEnableGraphQLPriming:Z

.field private final mEnableLightweightAppChoreographer:Z

.field private final mEnableLockDexExp:Z

.field private final mEnableMessengerLWC:Z

.field private final mEnableOatMadvise:Z

.field private final mEnableOverscrollModification:Z

.field private final mEnableWorkChatLWC:Z

.field private final mEnableWorkLWC:Z

.field private final mFpsCalcLFDsFromTotalFrames:Z

.field private final mFpsCheckFpsIntervalSec:I

.field private final mFpsEnableDynamically:Z

.field private final mFpsEnableFeedOnly:Z

.field private final mFpsErrorCheckVsyncIntervalMs:I

.field private final mFpsExpectedFps:I

.field private final mFpsFastHookOnIdle:Z

.field private final mFpsFixFeedSplines:Z

.field private final mFpsFixupFrameBasedThrottling:Z

.field private final mFpsMinFlingSpeed:I

.field private final mFpsModifiyFeedSpeed:D

.field private final mFpsOnlyDuringFling:Z

.field private final mFpsOnlyEnableIfExpectedFps:Z

.field private final mFpsOnlyWithMinFlingSpeed:Z

.field private final mFpsReduceFpsDropFramesPercentThreshold:I

.field private final mFpsRestoreFpsDropFramesPercentThreshold:I

.field private final mFpsUseSetVsyncRate:Z

.field private final mFrameRateLimitedEnabled:Z

.field private final mFrameRateLimitedReduceBy:I

.field private final mFrameRateTryToFastHook:Z

.field private final mFuryEnabled:Z

.field private final mFuryKillChainLifecycleCallbacks:Z

.field private final mFuryKillReqPropsProvider:Z

.field private final mFurySystraceTags:J

.field private final mGraphQLPrimingProtocol:I

.field private final mGraphicsCacheOverrideEnabled:Z

.field private final mIdleIncreaseThroughputEnabled:Z

.field private final mLightweightAppChoreographerEarlyCancel:Z

.field private final mLightweightAppChoreographerParallelizeHighPriTasks:Z

.field private final mLightweightAppChoreographerStaySubscribed:Z

.field private final mLightweightAppChoreographerTasks:I

.field private final mLockArt:Z

.field private final mLockDexNum:I

.field private final mLogFbScheduledThreadPoolExecutorErrors:Z

.field private final mLruResourceCacheSize:I

.field private final mMadviseApk:Z

.field private final mMadviseArt:Z

.field private final mMadviseLibColdstart:Z

.field private final mMadviseSystemBoot:Z

.field private final mMadviseSystemLib:Z

.field private final mMaxIdleTaskRequest:I

.field private final mMdclSelector:I

.field private final mMessengerLWCEarlyCancel:Z

.field private final mMessengerLWCStaySubscribed:Z

.field private final mMprotectExecOat:Z

.field private final mOatMadviseDataOption:I

.field private final mOatMadviseJustColdstartSet:Z

.field private final mOatMadviseMetadataOption:I

.field private final mOatMadviseOverallOption:I

.field private final mOnlyMethodPreloadIfFastHooked:Z

.field private final mOnlyPreloadMethodsUsedDuringColdStart:Z

.field private final mOtherLWCEarlyCancel:Z

.field private final mOtherLWCEnable:Z

.field private final mOtherLWCStaySubscribed:Z

.field private final mOverscrollModificationFactor:D

.field private final mPreloadColdstartMethods:Z

.field private final mPreloadMethodOffMainThread:Z

.field private final mPreloadMethodThreadPriority:I

.field private final mPreloadMethods:Z

.field private final mPreloadMethodsOnlyOnClassPreloadingThread:Z

.field private final mPreloadScrollPerfMethods:Z

.field private final mPrioritizeTheMainThreadFirst:Z

.field private final mShouldCacheJacksonSerializer:Z

.field private final mTextureCacheFlushRateChange:D

.field private final mTextureCacheFlushRateRatioChange:D

.field private final mTextureCacheMbIncreaseChange:I

.field private final mTextureCacheRatioChange:D

.field private final mThreadPoolCombinedBackgroundScheduled:Z

.field private final mThreadPoolCombinedForegroundScheduled:Z

.field private final mThreadPoolCombinedImportantScheduled:Z

.field private final mThreadPoolCombinedMaxThreads:I

.field private final mThreadPoolCombinedNormalScheduled:Z

.field private final mThreadPoolCombinedThreadKeepAliveS:I

.field private final mThreadPoolCombinedThreadReserve:I

.field private final mThreadPoolFbAsyncTaskExecutor:I

.field private final mThreadPoolHPINeedInitSize:I

.field private final mThreadPoolNamedExecutors:I

.field private final mThreadPoolNumberThreadsBackgroundA:I

.field private final mThreadPoolNumberThreadsBackgroundB:I

.field private final mThreadPoolNumberThreadsForegroundA:I

.field private final mThreadPoolNumberThreadsForegroundB:I

.field private final mThreadPoolNumberThreadsImportantA:I

.field private final mThreadPoolNumberThreadsImportantB:I

.field private final mThreadPoolNumberThreadsNormalA:I

.field private final mThreadPoolNumberThreadsNormalB:I

.field private final mThreadPoolQplLoggingLoopers:Z

.field private final mThreadPoolQplLoggingThreadPools:Z

.field private final mThreadPoolUrgentSize:I

.field private final mUseAlternateSignalStackForSigsegv:Z

.field private final mUseDependencyInit:Z

.field private final mWorkChatLWCEarlyCancel:Z

.field private final mWorkChatLWCStaySubscribed:Z

.field private final mWorkLWCEarlyCancel:Z

.field private final mWorkLWCStaySubscribed:Z

.field private final mXmlCacheSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIIIIZIZIIZZZIZZZZJZZDIZDDIDZIZIIZIIZZIZZZZZZZZZZZZZZZZZIZIIZZZZZIIIZZZZZZZZZZZIZIZIZZZZZIIZZZIDZZDIIIZZZIIIZZZZIIIIIIIIIIZZ)V
    .locals 4

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-static {p1}, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersConfig:Ljava/lang/String;

    .line 317
    iput-boolean p2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersLogging:Z

    .line 318
    iput p3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadReserve:I

    .line 319
    iput p4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolMaxThreads:I

    .line 320
    iput p5, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadKeepAliveS:I

    .line 321
    iput p6, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolDefaultThreadPriority:I

    .line 322
    iput-boolean p7, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolStatsEnabled:Z

    .line 323
    iput p8, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolTaskFullWarningCount:I

    .line 324
    iput-boolean p9, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandler:Z

    .line 325
    iput p10, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerMaxThreads:I

    .line 326
    iput p11, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerPriority:I

    .line 327
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolConditionFavorMostRecentThread:Z

    .line 328
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseDependencyInit:Z

    .line 329
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDalvikNopVerifyClass:Z

    .line 330
    move/from16 v0, p15

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockDexNum:I

    .line 331
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLockDexExp:Z

    .line 332
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockArt:Z

    .line 333
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLogFbScheduledThreadPoolExecutorErrors:Z

    .line 334
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryEnabled:Z

    .line 335
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFurySystraceTags:J

    .line 336
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillReqPropsProvider:Z

    .line 337
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillChainLifecycleCallbacks:Z

    .line 338
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureFlushRateValue:D

    .line 339
    move/from16 v0, p26

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureCacheValue:I

    .line 340
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphicsCacheOverrideEnabled:Z

    .line 341
    move-wide/from16 v0, p28

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateChange:D

    .line 342
    move-wide/from16 v0, p30

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateRatioChange:D

    .line 343
    move/from16 v0, p32

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheMbIncreaseChange:I

    .line 344
    move-wide/from16 v0, p33

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheRatioChange:D

    .line 345
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mIdleIncreaseThroughputEnabled:Z

    .line 346
    move/from16 v0, p36

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMaxIdleTaskRequest:I

    .line 347
    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPrioritizeTheMainThreadFirst:Z

    .line 348
    move/from16 v0, p38

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDelayBetweenIdleCalls:I

    .line 349
    move/from16 v0, p39

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mXmlCacheSize:I

    .line 350
    move/from16 v0, p40

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawablesInXmlLruCache:Z

    .line 351
    move/from16 v0, p41

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawableLruResourceCacheSize:I

    .line 352
    move/from16 v0, p42

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLruResourceCacheSize:I

    .line 353
    move/from16 v0, p43

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mShouldCacheJacksonSerializer:Z

    .line 354
    move/from16 v0, p44

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLightweightAppChoreographer:Z

    .line 355
    move/from16 v0, p45

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerTasks:I

    .line 356
    move/from16 v0, p46

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerParallelizeHighPriTasks:Z

    .line 357
    move/from16 v0, p47

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerEarlyCancel:Z

    .line 358
    move/from16 v0, p48

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerStaySubscribed:Z

    .line 359
    move/from16 v0, p49

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableMessengerLWC:Z

    .line 360
    move/from16 v0, p50

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCEarlyCancel:Z

    .line 361
    move/from16 v0, p51

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCStaySubscribed:Z

    .line 362
    move/from16 v0, p52

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEnable:Z

    .line 363
    move/from16 v0, p53

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEarlyCancel:Z

    .line 364
    move/from16 v0, p54

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCStaySubscribed:Z

    .line 365
    move/from16 v0, p55

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkLWC:Z

    .line 366
    move/from16 v0, p56

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCEarlyCancel:Z

    .line 367
    move/from16 v0, p57

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCStaySubscribed:Z

    .line 368
    move/from16 v0, p58

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkChatLWC:Z

    .line 369
    move/from16 v0, p59

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCEarlyCancel:Z

    .line 370
    move/from16 v0, p60

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCStaySubscribed:Z

    .line 371
    move/from16 v0, p61

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMprotectExecOat:Z

    .line 372
    move/from16 v0, p62

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOatMadvise:Z

    .line 373
    move/from16 v0, p63

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseDataOption:I

    .line 374
    move/from16 v0, p64

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseJustColdstartSet:Z

    .line 375
    move/from16 v0, p65

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseMetadataOption:I

    .line 376
    move/from16 v0, p66

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseOverallOption:I

    .line 377
    move/from16 v0, p67

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseArt:Z

    .line 378
    move/from16 v0, p68

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseApk:Z

    .line 379
    move/from16 v0, p69

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseLibColdstart:Z

    .line 380
    move/from16 v0, p70

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemBoot:Z

    .line 381
    move/from16 v0, p71

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemLib:Z

    .line 382
    move/from16 v0, p72

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolHPINeedInitSize:I

    .line 383
    move/from16 v0, p73

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolUrgentSize:I

    .line 384
    move/from16 v0, p74

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMdclSelector:I

    .line 385
    move/from16 v0, p75

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseAlternateSignalStackForSigsegv:Z

    .line 386
    move/from16 v0, p76

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadQuickCompiledCode:Z

    .line 387
    move/from16 v0, p77

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEagerlyPreloadMethods:Z

    .line 388
    move/from16 v0, p78

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyMethodPreloadIfFastHooked:Z

    .line 389
    move/from16 v0, p79

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyPreloadMethodsUsedDuringColdStart:Z

    .line 390
    move/from16 v0, p80

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadColdstartMethods:Z

    .line 391
    move/from16 v0, p81

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethods:Z

    .line 392
    move/from16 v0, p82

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadMethods:Z

    .line 393
    move/from16 v0, p83

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodOffMainThread:Z

    .line 394
    move/from16 v0, p84

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodsOnlyOnClassPreloadingThread:Z

    .line 395
    move/from16 v0, p85

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadScrollPerfMethods:Z

    .line 396
    move/from16 v0, p86

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodThreadPriority:I

    .line 397
    move/from16 v0, p87

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableGraphQLPriming:Z

    .line 398
    move/from16 v0, p88

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphQLPrimingProtocol:I

    .line 399
    move/from16 v0, p89

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCalcLFDsFromTotalFrames:Z

    .line 400
    move/from16 v0, p90

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCheckFpsIntervalSec:I

    .line 401
    move/from16 v0, p91

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableDynamically:Z

    .line 402
    move/from16 v0, p92

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableFeedOnly:Z

    .line 403
    move/from16 v0, p93

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOverscrollModification:Z

    .line 404
    move/from16 v0, p94

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyEnableIfExpectedFps:Z

    .line 405
    move/from16 v0, p95

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedEnabled:Z

    .line 406
    move/from16 v0, p96

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsErrorCheckVsyncIntervalMs:I

    .line 407
    move/from16 v0, p97

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsExpectedFps:I

    .line 408
    move/from16 v0, p98

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFastHookOnIdle:Z

    .line 409
    move/from16 v0, p99

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixFeedSplines:Z

    .line 410
    move/from16 v0, p100

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixupFrameBasedThrottling:Z

    .line 411
    move/from16 v0, p101

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsMinFlingSpeed:I

    .line 412
    move-wide/from16 v0, p102

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsModifiyFeedSpeed:D

    .line 413
    move/from16 v0, p104

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyDuringFling:Z

    .line 414
    move/from16 v0, p105

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyWithMinFlingSpeed:Z

    .line 415
    move-wide/from16 v0, p106

    iput-wide v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOverscrollModificationFactor:D

    .line 416
    move/from16 v0, p108

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedReduceBy:I

    .line 417
    move/from16 v0, p109

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsReduceFpsDropFramesPercentThreshold:I

    .line 418
    move/from16 v0, p110

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsRestoreFpsDropFramesPercentThreshold:I

    .line 419
    move/from16 v0, p111

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateTryToFastHook:Z

    .line 420
    move/from16 v0, p112

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsUseSetVsyncRate:Z

    .line 421
    move/from16 v0, p113

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDisableSplashScreen:Z

    .line 422
    move/from16 v0, p114

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadReserve:I

    .line 423
    move/from16 v0, p115

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedMaxThreads:I

    .line 424
    move/from16 v0, p116

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadKeepAliveS:I

    .line 425
    move/from16 v0, p117

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedBackgroundScheduled:Z

    .line 426
    move/from16 v0, p118

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedNormalScheduled:Z

    .line 427
    move/from16 v0, p119

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedForegroundScheduled:Z

    .line 428
    move/from16 v0, p120

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedImportantScheduled:Z

    .line 429
    move/from16 v0, p121

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundA:I

    .line 430
    move/from16 v0, p122

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundB:I

    .line 431
    move/from16 v0, p123

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalA:I

    .line 432
    move/from16 v0, p124

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalB:I

    .line 433
    move/from16 v0, p125

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundA:I

    .line 434
    move/from16 v0, p126

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundB:I

    .line 435
    move/from16 v0, p127

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantA:I

    .line 436
    move/from16 v0, p128

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantB:I

    .line 437
    move/from16 v0, p129

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolFbAsyncTaskExecutor:I

    .line 438
    move/from16 v0, p130

    iput v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNamedExecutors:I

    .line 439
    move/from16 v0, p131

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingThreadPools:Z

    .line 440
    move/from16 v0, p132

    iput-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingLoopers:Z

    .line 441
    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1586
    if-nez p0, :cond_0

    .line 1587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Value shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :cond_0
    return-object p0
.end method


# virtual methods
.method public dalvikNopVerifyClass()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDalvikNopVerifyClass:Z

    return v0
.end method

.method public enableLockDexExp()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLockDexExp:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1320
    if-ne p0, p1, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return v0

    .line 1323
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1324
    goto :goto_0

    .line 1326
    :cond_3
    check-cast p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    .line 1327
    iget-object v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersConfig:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersConfig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersLogging:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersLogging:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadReserve:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadReserve:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolMaxThreads:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolMaxThreads:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadKeepAliveS:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadKeepAliveS:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolDefaultThreadPriority:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolDefaultThreadPriority:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolStatsEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolStatsEnabled:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolTaskFullWarningCount:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolTaskFullWarningCount:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandler:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandler:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerMaxThreads:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerMaxThreads:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerPriority:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerPriority:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolConditionFavorMostRecentThread:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolConditionFavorMostRecentThread:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseDependencyInit:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseDependencyInit:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDalvikNopVerifyClass:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDalvikNopVerifyClass:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockDexNum:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockDexNum:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLockDexExp:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLockDexExp:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockArt:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockArt:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLogFbScheduledThreadPoolExecutorErrors:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLogFbScheduledThreadPoolExecutorErrors:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryEnabled:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFurySystraceTags:J

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFurySystraceTags:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillReqPropsProvider:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillReqPropsProvider:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillChainLifecycleCallbacks:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillChainLifecycleCallbacks:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureFlushRateValue:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureFlushRateValue:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureCacheValue:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureCacheValue:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphicsCacheOverrideEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphicsCacheOverrideEnabled:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateChange:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateChange:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateRatioChange:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateRatioChange:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheMbIncreaseChange:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheMbIncreaseChange:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheRatioChange:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheRatioChange:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mIdleIncreaseThroughputEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mIdleIncreaseThroughputEnabled:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMaxIdleTaskRequest:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMaxIdleTaskRequest:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPrioritizeTheMainThreadFirst:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPrioritizeTheMainThreadFirst:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDelayBetweenIdleCalls:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDelayBetweenIdleCalls:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mXmlCacheSize:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mXmlCacheSize:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawablesInXmlLruCache:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawablesInXmlLruCache:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawableLruResourceCacheSize:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawableLruResourceCacheSize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLruResourceCacheSize:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLruResourceCacheSize:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mShouldCacheJacksonSerializer:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mShouldCacheJacksonSerializer:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLightweightAppChoreographer:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLightweightAppChoreographer:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerTasks:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerTasks:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerParallelizeHighPriTasks:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerParallelizeHighPriTasks:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerEarlyCancel:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerEarlyCancel:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerStaySubscribed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerStaySubscribed:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableMessengerLWC:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableMessengerLWC:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCEarlyCancel:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCEarlyCancel:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCStaySubscribed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCStaySubscribed:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEnable:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEnable:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEarlyCancel:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEarlyCancel:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCStaySubscribed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCStaySubscribed:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkLWC:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkLWC:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCEarlyCancel:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCEarlyCancel:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCStaySubscribed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCStaySubscribed:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkChatLWC:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkChatLWC:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCEarlyCancel:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCEarlyCancel:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCStaySubscribed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCStaySubscribed:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMprotectExecOat:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMprotectExecOat:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOatMadvise:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOatMadvise:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseDataOption:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseDataOption:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseJustColdstartSet:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseJustColdstartSet:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseMetadataOption:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseMetadataOption:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseOverallOption:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseOverallOption:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseArt:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseArt:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseApk:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseApk:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseLibColdstart:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseLibColdstart:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemBoot:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemBoot:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemLib:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemLib:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolHPINeedInitSize:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolHPINeedInitSize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolUrgentSize:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolUrgentSize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMdclSelector:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMdclSelector:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseAlternateSignalStackForSigsegv:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseAlternateSignalStackForSigsegv:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadQuickCompiledCode:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadQuickCompiledCode:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEagerlyPreloadMethods:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEagerlyPreloadMethods:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyMethodPreloadIfFastHooked:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyMethodPreloadIfFastHooked:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyPreloadMethodsUsedDuringColdStart:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyPreloadMethodsUsedDuringColdStart:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadColdstartMethods:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadColdstartMethods:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethods:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethods:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadMethods:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadMethods:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodOffMainThread:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodOffMainThread:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodsOnlyOnClassPreloadingThread:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodsOnlyOnClassPreloadingThread:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadScrollPerfMethods:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadScrollPerfMethods:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodThreadPriority:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodThreadPriority:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableGraphQLPriming:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableGraphQLPriming:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphQLPrimingProtocol:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphQLPrimingProtocol:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCalcLFDsFromTotalFrames:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCalcLFDsFromTotalFrames:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCheckFpsIntervalSec:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCheckFpsIntervalSec:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableDynamically:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableDynamically:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableFeedOnly:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableFeedOnly:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOverscrollModification:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOverscrollModification:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyEnableIfExpectedFps:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyEnableIfExpectedFps:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedEnabled:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsErrorCheckVsyncIntervalMs:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsErrorCheckVsyncIntervalMs:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsExpectedFps:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsExpectedFps:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFastHookOnIdle:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFastHookOnIdle:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixFeedSplines:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixFeedSplines:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixupFrameBasedThrottling:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixupFrameBasedThrottling:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsMinFlingSpeed:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsMinFlingSpeed:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsModifiyFeedSpeed:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsModifiyFeedSpeed:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyDuringFling:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyDuringFling:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyWithMinFlingSpeed:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyWithMinFlingSpeed:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOverscrollModificationFactor:D

    iget-wide v4, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOverscrollModificationFactor:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedReduceBy:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedReduceBy:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsReduceFpsDropFramesPercentThreshold:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsReduceFpsDropFramesPercentThreshold:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsRestoreFpsDropFramesPercentThreshold:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsRestoreFpsDropFramesPercentThreshold:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateTryToFastHook:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateTryToFastHook:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsUseSetVsyncRate:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsUseSetVsyncRate:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDisableSplashScreen:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDisableSplashScreen:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadReserve:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadReserve:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedMaxThreads:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedMaxThreads:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadKeepAliveS:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadKeepAliveS:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedBackgroundScheduled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedBackgroundScheduled:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedNormalScheduled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedNormalScheduled:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedForegroundScheduled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedForegroundScheduled:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedImportantScheduled:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedImportantScheduled:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundA:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundA:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundB:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundB:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalA:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalA:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalB:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalB:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundA:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundA:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundB:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundB:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantA:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantA:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantB:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantB:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolFbAsyncTaskExecutor:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolFbAsyncTaskExecutor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNamedExecutors:I

    iget v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNamedExecutors:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingThreadPools:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingThreadPools:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingLoopers:Z

    iget-boolean v3, p1, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingLoopers:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1457
    iget-object v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersConfig:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1458
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedHandlersLogging:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 1459
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadReserve:I

    add-int/2addr v0, v3

    .line 1460
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolMaxThreads:I

    add-int/2addr v0, v3

    .line 1461
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolThreadKeepAliveS:I

    add-int/2addr v0, v3

    .line 1462
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolDefaultThreadPriority:I

    add-int/2addr v0, v3

    .line 1463
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolStatsEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 1464
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolTaskFullWarningCount:I

    add-int/2addr v0, v3

    .line 1465
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandler:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 1466
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerMaxThreads:I

    add-int/2addr v0, v3

    .line 1467
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolBackgroundHandlerPriority:I

    add-int/2addr v0, v3

    .line 1468
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mCombinedThreadPoolConditionFavorMostRecentThread:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 1469
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseDependencyInit:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 1470
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDalvikNopVerifyClass:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    .line 1471
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockDexNum:I

    add-int/2addr v0, v3

    .line 1472
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLockDexExp:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    .line 1473
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockArt:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    .line 1474
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLogFbScheduledThreadPoolExecutorErrors:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    .line 1475
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryEnabled:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    .line 1476
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFurySystraceTags:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 1477
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillReqPropsProvider:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    .line 1478
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFuryKillChainLifecycleCallbacks:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v3

    .line 1479
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureFlushRateValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1480
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDefaultTextureCacheValue:I

    add-int/2addr v0, v3

    .line 1481
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphicsCacheOverrideEnabled:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v3

    .line 1482
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateChange:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1483
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheFlushRateRatioChange:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1484
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheMbIncreaseChange:I

    add-int/2addr v0, v3

    .line 1485
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mTextureCacheRatioChange:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1486
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mIdleIncreaseThroughputEnabled:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v3

    .line 1487
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMaxIdleTaskRequest:I

    add-int/2addr v0, v3

    .line 1488
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPrioritizeTheMainThreadFirst:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v3

    .line 1489
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDelayBetweenIdleCalls:I

    add-int/2addr v0, v3

    .line 1490
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mXmlCacheSize:I

    add-int/2addr v0, v3

    .line 1491
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawablesInXmlLruCache:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v3

    .line 1492
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDrawableLruResourceCacheSize:I

    add-int/2addr v0, v3

    .line 1493
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLruResourceCacheSize:I

    add-int/2addr v0, v3

    .line 1494
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mShouldCacheJacksonSerializer:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v3

    .line 1495
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableLightweightAppChoreographer:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v3

    .line 1496
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerTasks:I

    add-int/2addr v0, v3

    .line 1497
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerParallelizeHighPriTasks:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v3

    .line 1498
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerEarlyCancel:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v3

    .line 1499
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLightweightAppChoreographerStaySubscribed:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    add-int/2addr v0, v3

    .line 1500
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableMessengerLWC:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    add-int/2addr v0, v3

    .line 1501
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCEarlyCancel:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    add-int/2addr v0, v3

    .line 1502
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMessengerLWCStaySubscribed:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    add-int/2addr v0, v3

    .line 1503
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEnable:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    add-int/2addr v0, v3

    .line 1504
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCEarlyCancel:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    add-int/2addr v0, v3

    .line 1505
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOtherLWCStaySubscribed:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    add-int/2addr v0, v3

    .line 1506
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkLWC:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    add-int/2addr v0, v3

    .line 1507
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCEarlyCancel:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    add-int/2addr v0, v3

    .line 1508
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkLWCStaySubscribed:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    add-int/2addr v0, v3

    .line 1509
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableWorkChatLWC:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v3

    .line 1510
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCEarlyCancel:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1f
    add-int/2addr v0, v3

    .line 1511
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mWorkChatLWCStaySubscribed:Z

    if-eqz v0, :cond_20

    move v0, v1

    :goto_20
    add-int/2addr v0, v3

    .line 1512
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMprotectExecOat:Z

    if-eqz v0, :cond_21

    move v0, v1

    :goto_21
    add-int/2addr v0, v3

    .line 1513
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOatMadvise:Z

    if-eqz v0, :cond_22

    move v0, v1

    :goto_22
    add-int/2addr v0, v3

    .line 1514
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseDataOption:I

    add-int/2addr v0, v3

    .line 1515
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseJustColdstartSet:Z

    if-eqz v0, :cond_23

    move v0, v1

    :goto_23
    add-int/2addr v0, v3

    .line 1516
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseMetadataOption:I

    add-int/2addr v0, v3

    .line 1517
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOatMadviseOverallOption:I

    add-int/2addr v0, v3

    .line 1518
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseArt:Z

    if-eqz v0, :cond_24

    move v0, v1

    :goto_24
    add-int/2addr v0, v3

    .line 1519
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseApk:Z

    if-eqz v0, :cond_25

    move v0, v1

    :goto_25
    add-int/2addr v0, v3

    .line 1520
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseLibColdstart:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_26
    add-int/2addr v0, v3

    .line 1521
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemBoot:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_27
    add-int/2addr v0, v3

    .line 1522
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMadviseSystemLib:Z

    if-eqz v0, :cond_28

    move v0, v1

    :goto_28
    add-int/2addr v0, v3

    .line 1523
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolHPINeedInitSize:I

    add-int/2addr v0, v3

    .line 1524
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolUrgentSize:I

    add-int/2addr v0, v3

    .line 1525
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMdclSelector:I

    add-int/2addr v0, v3

    .line 1526
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseAlternateSignalStackForSigsegv:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_29
    add-int/2addr v0, v3

    .line 1527
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadQuickCompiledCode:Z

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_2a
    add-int/2addr v0, v3

    .line 1528
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEagerlyPreloadMethods:Z

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_2b
    add-int/2addr v0, v3

    .line 1529
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyMethodPreloadIfFastHooked:Z

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_2c
    add-int/2addr v0, v3

    .line 1530
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOnlyPreloadMethodsUsedDuringColdStart:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_2d
    add-int/2addr v0, v3

    .line 1531
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadColdstartMethods:Z

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_2e
    add-int/2addr v0, v3

    .line 1532
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethods:Z

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_2f
    add-int/2addr v0, v3

    .line 1533
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mAlwaysPreloadMethods:Z

    if-eqz v0, :cond_30

    move v0, v1

    :goto_30
    add-int/2addr v0, v3

    .line 1534
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodOffMainThread:Z

    if-eqz v0, :cond_31

    move v0, v1

    :goto_31
    add-int/2addr v0, v3

    .line 1535
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodsOnlyOnClassPreloadingThread:Z

    if-eqz v0, :cond_32

    move v0, v1

    :goto_32
    add-int/2addr v0, v3

    .line 1536
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadScrollPerfMethods:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_33
    add-int/2addr v0, v3

    .line 1537
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mPreloadMethodThreadPriority:I

    add-int/2addr v0, v3

    .line 1538
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableGraphQLPriming:Z

    if-eqz v0, :cond_34

    move v0, v1

    :goto_34
    add-int/2addr v0, v3

    .line 1539
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mGraphQLPrimingProtocol:I

    add-int/2addr v0, v3

    .line 1540
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCalcLFDsFromTotalFrames:Z

    if-eqz v0, :cond_35

    move v0, v1

    :goto_35
    add-int/2addr v0, v3

    .line 1541
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsCheckFpsIntervalSec:I

    add-int/2addr v0, v3

    .line 1542
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableDynamically:Z

    if-eqz v0, :cond_36

    move v0, v1

    :goto_36
    add-int/2addr v0, v3

    .line 1543
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsEnableFeedOnly:Z

    if-eqz v0, :cond_37

    move v0, v1

    :goto_37
    add-int/2addr v0, v3

    .line 1544
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mEnableOverscrollModification:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_38
    add-int/2addr v0, v3

    .line 1545
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyEnableIfExpectedFps:Z

    if-eqz v0, :cond_39

    move v0, v1

    :goto_39
    add-int/2addr v0, v3

    .line 1546
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedEnabled:Z

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_3a
    add-int/2addr v0, v3

    .line 1547
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsErrorCheckVsyncIntervalMs:I

    add-int/2addr v0, v3

    .line 1548
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsExpectedFps:I

    add-int/2addr v0, v3

    .line 1549
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFastHookOnIdle:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_3b
    add-int/2addr v0, v3

    .line 1550
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixFeedSplines:Z

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_3c
    add-int/2addr v0, v3

    .line 1551
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsFixupFrameBasedThrottling:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_3d
    add-int/2addr v0, v3

    .line 1552
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsMinFlingSpeed:I

    add-int/2addr v0, v3

    .line 1553
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsModifiyFeedSpeed:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1554
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyDuringFling:Z

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_3e
    add-int/2addr v0, v3

    .line 1555
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsOnlyWithMinFlingSpeed:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_3f
    add-int/2addr v0, v3

    .line 1556
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mOverscrollModificationFactor:D

    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    .line 1557
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateLimitedReduceBy:I

    add-int/2addr v0, v3

    .line 1558
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsReduceFpsDropFramesPercentThreshold:I

    add-int/2addr v0, v3

    .line 1559
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsRestoreFpsDropFramesPercentThreshold:I

    add-int/2addr v0, v3

    .line 1560
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFrameRateTryToFastHook:Z

    if-eqz v0, :cond_40

    move v0, v1

    :goto_40
    add-int/2addr v0, v3

    .line 1561
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mFpsUseSetVsyncRate:Z

    if-eqz v0, :cond_41

    move v0, v1

    :goto_41
    add-int/2addr v0, v3

    .line 1562
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mDisableSplashScreen:Z

    if-eqz v0, :cond_42

    move v0, v1

    :goto_42
    add-int/2addr v0, v3

    .line 1563
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadReserve:I

    add-int/2addr v0, v3

    .line 1564
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedMaxThreads:I

    add-int/2addr v0, v3

    .line 1565
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedThreadKeepAliveS:I

    add-int/2addr v0, v3

    .line 1566
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedBackgroundScheduled:Z

    if-eqz v0, :cond_43

    move v0, v1

    :goto_43
    add-int/2addr v0, v3

    .line 1567
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedNormalScheduled:Z

    if-eqz v0, :cond_44

    move v0, v1

    :goto_44
    add-int/2addr v0, v3

    .line 1568
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedForegroundScheduled:Z

    if-eqz v0, :cond_45

    move v0, v1

    :goto_45
    add-int/2addr v0, v3

    .line 1569
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolCombinedImportantScheduled:Z

    if-eqz v0, :cond_46

    move v0, v1

    :goto_46
    add-int/2addr v0, v3

    .line 1570
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundA:I

    add-int/2addr v0, v3

    .line 1571
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsBackgroundB:I

    add-int/2addr v0, v3

    .line 1572
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalA:I

    add-int/2addr v0, v3

    .line 1573
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsNormalB:I

    add-int/2addr v0, v3

    .line 1574
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundA:I

    add-int/2addr v0, v3

    .line 1575
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsForegroundB:I

    add-int/2addr v0, v3

    .line 1576
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantA:I

    add-int/2addr v0, v3

    .line 1577
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNumberThreadsImportantB:I

    add-int/2addr v0, v3

    .line 1578
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolFbAsyncTaskExecutor:I

    add-int/2addr v0, v3

    .line 1579
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolNamedExecutors:I

    add-int/2addr v0, v3

    .line 1580
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingThreadPools:Z

    if-eqz v0, :cond_47

    move v0, v1

    :goto_47
    add-int/2addr v0, v3

    .line 1581
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mThreadPoolQplLoggingLoopers:Z

    if-eqz v3, :cond_48

    :goto_48
    add-int/2addr v0, v1

    .line 1582
    return v0

    :cond_0
    move v0, v2

    .line 1458
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1463
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1465
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1468
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1469
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1470
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 1472
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 1473
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 1474
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 1475
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 1477
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 1478
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 1481
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 1486
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 1488
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 1491
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 1494
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 1495
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 1497
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 1498
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 1499
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 1500
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 1501
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 1502
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 1503
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 1504
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 1505
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 1506
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 1507
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 1508
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 1509
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 1510
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 1511
    goto/16 :goto_20

    :cond_21
    move v0, v2

    .line 1512
    goto/16 :goto_21

    :cond_22
    move v0, v2

    .line 1513
    goto/16 :goto_22

    :cond_23
    move v0, v2

    .line 1515
    goto/16 :goto_23

    :cond_24
    move v0, v2

    .line 1518
    goto/16 :goto_24

    :cond_25
    move v0, v2

    .line 1519
    goto/16 :goto_25

    :cond_26
    move v0, v2

    .line 1520
    goto/16 :goto_26

    :cond_27
    move v0, v2

    .line 1521
    goto/16 :goto_27

    :cond_28
    move v0, v2

    .line 1522
    goto/16 :goto_28

    :cond_29
    move v0, v2

    .line 1526
    goto/16 :goto_29

    :cond_2a
    move v0, v2

    .line 1527
    goto/16 :goto_2a

    :cond_2b
    move v0, v2

    .line 1528
    goto/16 :goto_2b

    :cond_2c
    move v0, v2

    .line 1529
    goto/16 :goto_2c

    :cond_2d
    move v0, v2

    .line 1530
    goto/16 :goto_2d

    :cond_2e
    move v0, v2

    .line 1531
    goto/16 :goto_2e

    :cond_2f
    move v0, v2

    .line 1532
    goto/16 :goto_2f

    :cond_30
    move v0, v2

    .line 1533
    goto/16 :goto_30

    :cond_31
    move v0, v2

    .line 1534
    goto/16 :goto_31

    :cond_32
    move v0, v2

    .line 1535
    goto/16 :goto_32

    :cond_33
    move v0, v2

    .line 1536
    goto/16 :goto_33

    :cond_34
    move v0, v2

    .line 1538
    goto/16 :goto_34

    :cond_35
    move v0, v2

    .line 1540
    goto/16 :goto_35

    :cond_36
    move v0, v2

    .line 1542
    goto/16 :goto_36

    :cond_37
    move v0, v2

    .line 1543
    goto/16 :goto_37

    :cond_38
    move v0, v2

    .line 1544
    goto/16 :goto_38

    :cond_39
    move v0, v2

    .line 1545
    goto/16 :goto_39

    :cond_3a
    move v0, v2

    .line 1546
    goto/16 :goto_3a

    :cond_3b
    move v0, v2

    .line 1549
    goto/16 :goto_3b

    :cond_3c
    move v0, v2

    .line 1550
    goto/16 :goto_3c

    :cond_3d
    move v0, v2

    .line 1551
    goto/16 :goto_3d

    :cond_3e
    move v0, v2

    .line 1554
    goto/16 :goto_3e

    :cond_3f
    move v0, v2

    .line 1555
    goto/16 :goto_3f

    :cond_40
    move v0, v2

    .line 1560
    goto/16 :goto_40

    :cond_41
    move v0, v2

    .line 1561
    goto/16 :goto_41

    :cond_42
    move v0, v2

    .line 1562
    goto/16 :goto_42

    :cond_43
    move v0, v2

    .line 1566
    goto/16 :goto_43

    :cond_44
    move v0, v2

    .line 1567
    goto/16 :goto_44

    :cond_45
    move v0, v2

    .line 1568
    goto/16 :goto_45

    :cond_46
    move v0, v2

    .line 1569
    goto/16 :goto_46

    :cond_47
    move v0, v2

    .line 1580
    goto/16 :goto_47

    :cond_48
    move v1, v2

    .line 1581
    goto/16 :goto_48
.end method

.method public lockDexNum()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mLockDexNum:I

    return v0
.end method

.method public mdclSelector()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mMdclSelector:I

    return v0
.end method

.method public useAlternateSignalStackForSigsegv()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;->mUseAlternateSignalStackForSigsegv:Z

    return v0
.end method
