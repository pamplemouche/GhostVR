.class public Lcom/oculus/modules/VolumeModuleImpl;
.super Lcom/oculus/modules/codegen/VolumeModule;
.source "VolumeModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mPreviousVolume:I

.field private mRegisteredRefCount:I

.field private mSettingsContentObserver:Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/modules/VolumeModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/VolumeModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/oculus/modules/codegen/VolumeModule;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/modules/VolumeModuleImpl;->mContext:Landroid/content/Context;

    .line 23
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    iput v1, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    .line 25
    iput v1, p0, Lcom/oculus/modules/VolumeModuleImpl;->mPreviousVolume:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/modules/VolumeModuleImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/VolumeModuleImpl;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/modules/VolumeModuleImpl;->broadcastNewVolume()V

    return-void
.end method

.method private broadcastNewVolume()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    .line 53
    iget-object v4, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 54
    .local v0, "curLevel":I
    iget v4, p0, Lcom/oculus/modules/VolumeModuleImpl;->mPreviousVolume:I

    if-eq v0, v4, :cond_1

    .line 55
    iput v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mPreviousVolume:I

    .line 56
    iget-object v4, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 57
    .local v1, "maxLevel":I
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "ratio":D
    if-eqz v1, :cond_0

    .line 59
    int-to-double v4, v0

    int-to-double v6, v1

    div-double v2, v4, v6

    .line 61
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/oculus/modules/VolumeModuleImpl;->emitOnVolumeUpdated(D)V

    .line 63
    .end local v1    # "maxLevel":I
    .end local v2    # "ratio":D
    :cond_1
    return-void
.end method


# virtual methods
.method protected getVolumeImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    const/4 v5, 0x3

    .line 30
    iget-object v4, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 31
    .local v0, "curLevel":I
    iget-object v4, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 32
    .local v1, "maxLevel":I
    const-wide/16 v2, 0x0

    .line 33
    .local v2, "ratio":D
    if-eqz v1, :cond_0

    .line 34
    int-to-double v4, v0

    int-to-double v6, v1

    div-double v2, v4, v6

    .line 37
    :cond_0
    sget-object v4, Lcom/oculus/modules/VolumeModuleImpl;->TAG:Ljava/lang/String;

    const-string v5, "Got volume ratio: %f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method protected setVolumeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 7
    .param p1, "ratio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 43
    iget-object v2, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 44
    .local v0, "maxLevel":I
    double-to-float v2, p1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 45
    .local v1, "newLevel":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/oculus/modules/VolumeModuleImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 48
    sget-object v2, Lcom/oculus/modules/VolumeModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Set volume ratio to %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected startReceiverImpl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    iget v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    .line 68
    iget v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    if-ne v0, v3, :cond_0

    .line 69
    new-instance v0, Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/oculus/modules/VolumeModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;-><init>(Lcom/oculus/modules/VolumeModuleImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mSettingsContentObserver:Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;

    .line 70
    iget-object v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/modules/VolumeModuleImpl;->mSettingsContentObserver:Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected stopReceiverImpl()V
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/oculus/modules/VolumeModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "Cannot call stopReceiver() without a matching startReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    .line 89
    iget v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mRegisteredRefCount:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oculus/modules/VolumeModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/modules/VolumeModuleImpl;->mSettingsContentObserver:Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
