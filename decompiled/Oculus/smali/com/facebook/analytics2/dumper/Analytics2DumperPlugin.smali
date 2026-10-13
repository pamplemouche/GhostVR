.class public Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;
.super Ljava/lang/Object;
.source "Analytics2DumperPlugin.java"

# interfaces
.implements Lcom/facebook/stetho/dumpapp/DumperPlugin;


# static fields
.field private static final sAdd:Lorg/apache/commons/cli/Option;

.field private static final sBlacklist:Lorg/apache/commons/cli/Option;

.field private static final sClear:Lorg/apache/commons/cli/Option;

.field private static final sInvalidateChecksum:Lorg/apache/commons/cli/Option;

.field private static final sIsCore:Lorg/apache/commons/cli/Option;

.field private static final sIsHighPri:Lorg/apache/commons/cli/Option;

.field private static final sIsHighPriUpload:Lorg/apache/commons/cli/Option;

.field private static final sList:Lorg/apache/commons/cli/Option;

.field private static final sNumEvents:Lorg/apache/commons/cli/Option;

.field private static final sRemove:Lorg/apache/commons/cli/Option;

.field private static final sSamplingEventName:Lorg/apache/commons/cli/Option;

.field private static final sSamplingIsEventCore:Lorg/apache/commons/cli/Option;

.field private static final sSamplingOptions:Lorg/apache/commons/cli/Options;

.field private static final sShowLogOptions:Lorg/apache/commons/cli/Options;

.field private static final sUploadOptions:Lorg/apache/commons/cli/Options;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

.field private final mLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "c"

    const-string v2, "core"

    const-string v3, "Is core event"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsCore:Lorg/apache/commons/cli/Option;

    .line 58
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "h"

    const-string v2, "high-pri"

    const-string v3, "Is high-pri event"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPri:Lorg/apache/commons/cli/Option;

    .line 59
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "n"

    const-string v2, "num"

    const-string v3, "Number of events to log"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sNumEvents:Lorg/apache/commons/cli/Option;

    .line 64
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "h"

    const-string v2, "high-pri"

    const-string v3, "Is high-pri upload"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPriUpload:Lorg/apache/commons/cli/Option;

    .line 83
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "c"

    const-string v2, "clear"

    const-string v3, "Clear sampling config"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sClear:Lorg/apache/commons/cli/Option;

    .line 84
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "i"

    const-string v2, "invalidate-checksum"

    const-string v3, "Invalidate checksum"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sInvalidateChecksum:Lorg/apache/commons/cli/Option;

    .line 86
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "a"

    const-string v2, "add"

    const-string v3, "Add event config"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    .line 87
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string/jumbo v1, "r"

    const-string/jumbo v2, "remove"

    const-string v3, "Remove event config"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    .line 88
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "b"

    const-string v2, "blacklist"

    const-string v3, "Blacklist event"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    .line 89
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "l"

    const-string v2, "list"

    const-string v3, "List configured events"

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sList:Lorg/apache/commons/cli/Option;

    .line 90
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "e"

    const-string v2, "eventname"

    const-string v3, "Event name to check sampling on"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingEventName:Lorg/apache/commons/cli/Option;

    .line 92
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "o"

    const-string v2, "core"

    const-string/jumbo v3, "whether event is core event."

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingIsEventCore:Lorg/apache/commons/cli/Option;

    .line 96
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sShowLogOptions:Lorg/apache/commons/cli/Options;

    .line 97
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sShowLogOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsCore:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 98
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sShowLogOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPri:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 99
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sShowLogOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sNumEvents:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 101
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sUploadOptions:Lorg/apache/commons/cli/Options;

    .line 102
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sUploadOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPriUpload:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 104
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    .line 105
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sClear:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 106
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sInvalidateChecksum:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 107
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 108
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 109
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 110
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sList:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 111
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingEventName:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 112
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingIsEventCore:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 113
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgs(I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 124
    new-instance v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    invoke-direct {v0, p1, p2}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;-><init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V

    iput-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 125
    return-void
.end method

.method private static computeBatchCount(Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-static {}, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 514
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    invoke-static {v4}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->computeBatchCount(Ljava/io/File;)I

    move-result v4

    add-int/2addr v0, v4

    .line 513
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    :cond_1
    return v0
.end method

.method private createSamplingPolicyInstance()Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 472
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getSamplingPolicyConfigInstance()Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    .line 473
    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpException;

    const-string v1, "Logger has not been provided with a sampling policy config."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    instance-of v1, v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;

    if-nez v1, :cond_1

    .line 478
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpException;

    const-string v1, "Sampling policy config class does not support dumper operations."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    check-cast v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;

    return-object v0
.end method

.method private static determineIdentityString(Lcom/facebook/analytics2/logger/PigeonIdentity;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/facebook/analytics2/logger/PigeonIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    const-string v0, "null"

    .line 356
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(accountId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PigeonIdentity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doDumpLock(Ljava/io/PrintStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->dumpLockState(Z)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->dumpLockState(Z)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private doLog(Lcom/facebook/stetho/dumpapp/DumperContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getStdout()Ljava/io/PrintStream;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getArgsAsList()Ljava/util/List;

    move-result-object v0

    .line 198
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getParser()Lorg/apache/commons/cli/CommandLineParser;

    move-result-object v2

    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sShowLogOptions:Lorg/apache/commons/cli/Options;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    sget-object v0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sNumEvents:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->parseNumEvents(Ljava/lang/String;)I

    move-result v3

    .line 204
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 205
    iget-object v4, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mLogger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    const-string v5, "Analytics2DumperPlugin"

    const-string/jumbo v6, "testEvent"

    sget-object v7, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsCore:Lorg/apache/commons/cli/Option;

    .line 210
    invoke-virtual {v7}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v7

    sget-object v8, Lcom/facebook/analytics2/logger/EventLogType;->CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

    sget-object v9, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPri:Lorg/apache/commons/cli/Option;

    .line 212
    invoke-virtual {v9}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v9

    .line 207
    invoke-static {v5, v6, v7, v8, v9}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->create(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    const-string v5, "eventNum"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 215
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/EventBuilder;->logAndRelease()V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    const-string v4, "Not logging because it was sampled"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    return-void
.end method

.method private doSampling(Lcom/facebook/stetho/dumpapp/DumperContext;Ljava/io/PrintStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 361
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getArgsAsList()Ljava/util/List;

    move-result-object v0

    .line 366
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getParser()Lorg/apache/commons/cli/CommandLineParser;

    move-result-object v2

    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingOptions:Lorg/apache/commons/cli/Options;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    sget-object v2, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingEventName:Lorg/apache/commons/cli/Option;

    invoke-virtual {v2}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingEventName:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    sget-object v2, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sSamplingIsEventCore:Lorg/apache/commons/cli/Option;

    invoke-virtual {v2}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    .line 375
    iget-object v2, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 376
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getSamplingPolicy()Lcom/facebook/flexiblesampling/SamplingPolicy;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/facebook/flexiblesampling/SamplingPolicy;->shouldLog(Ljava/lang/String;Z)Lcom/facebook/flexiblesampling/SamplingResult;

    move-result-object v2

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isCore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampling info: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {v2}, Lcom/facebook/flexiblesampling/SamplingResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->createSamplingPolicyInstance()Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;

    move-result-object v2

    .line 388
    if-eqz v2, :cond_0

    .line 393
    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sClear:Lorg/apache/commons/cli/Option;

    invoke-virtual {v3}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    invoke-interface {v2}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->clear()V

    .line 395
    const-string v0, "Sampling config cleared."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sInvalidateChecksum:Lorg/apache/commons/cli/Option;

    invoke-virtual {v3}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    invoke-interface {v2}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->invalidateChecksum()V

    .line 402
    const-string v0, "Checksum invalidated."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_3
    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    invoke-virtual {v3}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 408
    sget-object v3, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    invoke-virtual {v3}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/cli/CommandLine;->getOptionValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 409
    array-length v0, v3

    if-eq v0, v8, :cond_4

    .line 410
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    const-string v1, "Invalid number of arguments (expected event name and probability)."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 419
    :goto_1
    if-gtz v0, :cond_5

    .line 420
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    const-string v1, "Invalid probability."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catch_1
    move-exception v0

    move v0, v1

    .line 417
    goto :goto_1

    .line 423
    :cond_5
    aget-object v3, v3, v6

    invoke-interface {v2, v3, v0}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->add(Ljava/lang/String;I)I

    move-result v2

    .line 424
    if-ne v2, v1, :cond_6

    .line 425
    const-string v0, "Event config added."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_6
    if-ne v2, v0, :cond_7

    .line 427
    const-string v0, "Event config already exists with the same probability."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Event probability modified from %d to %d"

    new-array v4, v8, [Ljava/lang/Object;

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 430
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_8
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 441
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-interface {v2, v0}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->remove(Ljava/lang/String;)Z

    move-result v0

    .line 443
    if-eqz v0, :cond_9

    const-string v0, "Event config removed."

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Event config doesn\'t exist."

    goto :goto_2

    .line 448
    :cond_a
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 449
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-interface {v2, v0}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->blacklist(Ljava/lang/String;)V

    .line 451
    const-string v0, "Event blacklisted."

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :cond_b
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sList:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 457
    invoke-interface {v2}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 458
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;

    .line 459
    const-string v3, "%s: %s\n"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 461
    invoke-virtual {v0}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->isBlacklisted()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v0, "blacklisted"

    :goto_4
    aput-object v0, v4, v7

    .line 459
    invoke-virtual {p2, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 461
    :cond_c
    iget v0, v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->probability:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 463
    :cond_d
    const-string v0, "%d events configured.\n"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 467
    :cond_e
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    const-string v1, "Invalid options."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doShow(Ljava/io/PrintStream;Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "Usage: show <filename>"

    invoke-static {p2, v0}, Lcom/facebook/stetho/dumpapp/ArgsHelper;->nextArg(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v1, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpFile(Ljava/io/File;Ljava/io/PrintStream;)V

    .line 170
    return-void
.end method

.method private doShowAll(Ljava/io/PrintStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 173
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    const-string v0, "\"records\":["

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpAllFile(Ljava/io/File;Ljava/io/FileFilter;ZLjava/io/PrintStream;)Z

    .line 176
    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private doShowFilesInfo(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->dumpFilesInfoState()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private doStatus(Ljava/io/PrintStream;)V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 340
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getCurrentUser()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->determineIdentityString(Lcom/facebook/analytics2/logger/PigeonIdentity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App backgrounded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->isAppBackgrounded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 343
    const-string v0, "High-pri channel:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpChannelStatus(ILjava/io/PrintStream;)V

    .line 345
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 346
    const-string v0, "Normal-pri channel:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpChannelStatus(ILjava/io/PrintStream;)V

    .line 348
    return-void
.end method

.method private doUpload(Lcom/facebook/stetho/dumpapp/DumperContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getArgsAsList()Ljava/util/List;

    move-result-object v0

    .line 240
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getParser()Lorg/apache/commons/cli/CommandLineParser;

    move-result-object v1

    sget-object v2, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sUploadOptions:Lorg/apache/commons/cli/Options;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPriUpload:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 246
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->scheduleUploadNow(I)Z

    move-result v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getStdout()Ljava/io/PrintStream;

    move-result-object v0

    .line 251
    const-string v1, "Unable to schedule, the channel has not been initialized, try using \'log\' first"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpAllFile(Ljava/io/File;Ljava/io/FileFilter;ZLjava/io/PrintStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    move v0, v1

    .line 260
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 261
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpAllFile(Ljava/io/File;Ljava/io/FileFilter;ZLjava/io/PrintStream;)Z

    move-result p3

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    if-nez p3, :cond_1

    .line 265
    const-string v3, ","

    invoke-virtual {p4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 269
    :goto_2
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p4}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->dumpFile(Ljava/io/File;Ljava/io/PrintStream;)V

    goto :goto_1

    :cond_1
    move p3, v1

    .line 267
    goto :goto_2

    .line 272
    :cond_2
    return p3
.end method

.method private dumpChannelStatus(ILjava/io/PrintStream;)V
    .locals 4
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param

    .prologue
    .line 485
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 486
    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getUploadManagerStatus(I)Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Pending batches: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    .line 492
    invoke-virtual {v3, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getPriorityDirName(I)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {v2, v3}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 490
    invoke-static {v2}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->computeBatchCount(Ljava/io/File;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Next job minimum delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->currentlyScheduledMinDelayMs:J

    .line 495
    invoke-static {v2, v3}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->formatCurrentlyScheduledMinDelayMs(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Foreground scheduling params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->foregroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Background scheduling params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->backgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string v0, "  Channel is not initialized!"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpFile(Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    const-string v1, "Need to pass in a valid file."

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;->dumpFile(Ljava/io/File;Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static formatCurrentlyScheduledMinDelayMs(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<not scheduled>"

    goto :goto_0
.end method

.method private getBaseDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/Analytics2BatchDirectory;->getBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listFiles(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->printDirectoryText(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 291
    :cond_0
    return-void
.end method

.method private static parseNumEvents(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    if-gtz v0, :cond_0

    .line 226
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpUsageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unparseable number of events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/stetho/dumpapp/DumpUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    return v0
.end method

.method private static printDirectoryText(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 5

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 307
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 308
    aget-object v2, v1, v0

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->printDirectoryText(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 307
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_1
    return-void
.end method

.method private static printDirectoryVisual(Ljava/io/File;ILjava/io/PrintStream;)V
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 319
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 320
    invoke-static {p1, p2}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->printHeaderVisual(ILjava/io/PrintStream;)V

    .line 321
    aget-object v2, v1, v0

    .line 322
    const-string v3, "+---"

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->printDirectoryVisual(Ljava/io/File;ILjava/io/PrintStream;)V

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method private static printHeaderVisual(ILjava/io/PrintStream;)V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 334
    const-string/jumbo v1, "|   "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method private treeFiles(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpUsageException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->printDirectoryVisual(Ljava/io/File;ILjava/io/PrintStream;)V

    .line 299
    :cond_0
    return-void
.end method

.method private static usage(Ljava/io/PrintStream;)V
    .locals 2

    .prologue
    .line 524
    const-string v0, "dumpapp analytics2"

    .line 525
    const-string v0, "Usage: dumpapp analytics2 "

    .line 526
    const-string v0, "       dumpapp analytics2 "

    .line 528
    const-string v0, "Usage: dumpapp analytics2 <command> [command-options]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 529
    const-string v0, "       dumpapp analytics2 tree"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    const-string v0, "       dumpapp analytics2 ls"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    const-string v0, "       dumpapp analytics2 show <filename>"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    const-string v0, "       dumpapp analytics2 show_all"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    const-string v0, "       dumpapp analytics2 log [<options>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    const-string v0, "       dumpapp analytics2 upload [<options>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    const-string v0, "       dumpapp analytics2 locks"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    const-string v0, "       dumpapp analytics2 new_session"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    const-string v0, "       dumpapp analytics2 status"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    const-string v0, "       dumpapp analytics2 batches"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    const-string v0, "       dumpapp analytics2 sampling"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 542
    const-string v0, "ls: list all files in the analytics2 directory (similar to ls -R)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 545
    const-string/jumbo v0, "tree: list all files in the analytics2 directory (similar to tree)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 548
    const-string/jumbo v0, "show: Output a file in the analytics2 directory."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    const-string v0, "    <filename>: Relative path as shown in ls"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 551
    const-string/jumbo v0, "show_all: Output all files in the analytics2 directory"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 553
    const-string v0, "log: Write an analytics event"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsCore:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsCore:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPri:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPri:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sNumEvents:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sNumEvents:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 558
    const-string/jumbo v0, "upload: Schedule an upload for right now"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPriUpload:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sIsHighPriUpload:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 561
    const-string v0, "Note: to upload logs, see `dumpapp jobscheduler`"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 563
    const-string v0, "locks: Dump the current lock state."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 565
    const-string v0, "new_session: Force the session manager to cut a new session."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 567
    const-string/jumbo v0, "status: Show overall status of the system"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 569
    const-string v0, "batches: Show batch files created"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 571
    const-string/jumbo v0, "sampling: Configure sampling policy"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sClear:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sClear:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sInvalidateChecksum:Lorg/apache/commons/cli/Option;

    .line 574
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sInvalidateChecksum:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sAdd:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sRemove:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sBlacklist:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sList:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->sList:Lorg/apache/commons/cli/Option;

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    return-void
.end method


# virtual methods
.method public dump(Lcom/facebook/stetho/dumpapp/DumperContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/dumpapp/DumpException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getStdout()Ljava/io/PrintStream;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/facebook/stetho/dumpapp/DumperContext;->getArgsAsList()Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/facebook/stetho/dumpapp/ArgsHelper;->nextOptionalArg(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "ls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->listFiles(Ljava/io/PrintStream;)V

    .line 164
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v3, "tree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->treeFiles(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 143
    :cond_1
    const-string/jumbo v3, "show"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doShow(Ljava/io/PrintStream;Ljava/util/Iterator;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string/jumbo v1, "show_all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doShowAll(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 147
    :cond_3
    const-string v1, "log"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doLog(Lcom/facebook/stetho/dumpapp/DumperContext;)V

    goto :goto_0

    .line 149
    :cond_4
    const-string/jumbo v1, "upload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doUpload(Lcom/facebook/stetho/dumpapp/DumperContext;)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v1, "locks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doDumpLock(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 153
    :cond_6
    const-string v1, "new_session"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    iget-object v0, p0, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->mDumperBridgeForTool:Lcom/facebook/analytics2/logger/DumperBridgeForTool;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->startNewSession()V

    goto :goto_0

    .line 155
    :cond_7
    const-string/jumbo v1, "status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 156
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doStatus(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 157
    :cond_8
    const-string v1, "batches"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doShowFilesInfo(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 159
    :cond_9
    const-string/jumbo v1, "sampling"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->doSampling(Lcom/facebook/stetho/dumpapp/DumperContext;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 162
    :cond_a
    invoke-static {v0}, Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;->usage(Ljava/io/PrintStream;)V

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "analytics2"

    return-object v0
.end method
