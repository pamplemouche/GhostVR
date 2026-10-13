.class public final enum Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;
.super Ljava/lang/Enum;
.source "UploadSyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum DONE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum DOWNLOAD_META_AGAIN:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum INIT:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum NEW_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum SEND_MUTATION:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum UPLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum VALIDATE_UPLOAD:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

.field public static final enum WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 55
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "PREFLIGHT_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 56
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "DOWNLOAD_META"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 57
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "NEW_CONFLICT_CHECK"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->NEW_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 58
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "DOWNLOAD_PATTERNS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 59
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "READ_LOCAL_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 60
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "BUILD_ACTION_MAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 61
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "UPLOAD_FILES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->UPLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 62
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "SEND_MUTATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->SEND_MUTATION:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 63
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "DOWNLOAD_META_AGAIN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_META_AGAIN:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 64
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "VALIDATE_UPLOAD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->VALIDATE_UPLOAD:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 65
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "WRITE_LOCAL_META"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 66
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    const-string v1, "DONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    .line 53
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->NEW_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->UPLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->SEND_MUTATION:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_META_AGAIN:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->VALIDATE_UPLOAD:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    return-object v0
.end method
