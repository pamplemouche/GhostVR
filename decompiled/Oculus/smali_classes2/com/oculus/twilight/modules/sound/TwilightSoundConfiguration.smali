.class public Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;
.super Ljava/lang/Object;
.source "TwilightSoundConfiguration.java"


# static fields
.field private static volatile sConfig:Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;


# instance fields
.field private allowMixing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->sConfig:Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    if-nez v0, :cond_1

    .line 11
    const-class v1, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->sConfig:Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    invoke-direct {v0}, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;-><init>()V

    sput-object v0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->sConfig:Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    sget-object v0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->sConfig:Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAllowMixing()Z
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->allowMixing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
