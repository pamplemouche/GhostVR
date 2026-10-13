.class public Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;
.super Ljava/lang/Object;
.source "Analytics2DumperPlugin.java"


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

    const-string v1, "r"

    const-string v2, "remove"

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

    const-string v3, "whether event is core event."

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
