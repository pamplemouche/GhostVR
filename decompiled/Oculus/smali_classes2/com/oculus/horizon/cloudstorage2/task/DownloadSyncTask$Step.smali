.class public final enum Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;
.super Ljava/lang/Enum;
.source "DownloadSyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum DONE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum DOWNLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum INIT:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum MOVE_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum PREPARE_CONFLICT_DATA:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum READ_REMOTE_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

.field public static final enum WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 49
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "PREFLIGHT_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 50
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "DOWNLOAD_PATTERNS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 51
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "READ_LOCAL_STATE"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 52
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "EXISTING_CONFLICT_CHECK"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 53
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "PREPARE_CONFLICT_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->PREPARE_CONFLICT_DATA:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 54
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "DOWNLOAD_META"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 55
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "READ_REMOTE_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->READ_REMOTE_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 56
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "BUILD_ACTION_MAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 57
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "DOWNLOAD_FILES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 58
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "MOVE_FILES"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->MOVE_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 59
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "WRITE_LOCAL_META"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 60
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    const-string v1, "DONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->PREPARE_CONFLICT_DATA:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->READ_REMOTE_STATE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->MOVE_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    return-object v0
.end method
