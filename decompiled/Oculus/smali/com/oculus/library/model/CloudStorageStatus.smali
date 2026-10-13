.class public final enum Lcom/oculus/library/model/CloudStorageStatus;
.super Ljava/lang/Enum;
.source "CloudStorageStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/CloudStorageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/CloudStorageStatus;

.field public static final enum DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

.field public static final enum DOWNLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

.field public static final enum ENABLED:Lcom/oculus/library/model/CloudStorageStatus;

.field public static final enum UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

.field public static final enum UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/CloudStorageStatus;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/CloudStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 7
    new-instance v0, Lcom/oculus/library/model/CloudStorageStatus;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/model/CloudStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->ENABLED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 8
    new-instance v0, Lcom/oculus/library/model/CloudStorageStatus;

    const-string v1, "UPLOAD_SYNC_REQUIRED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/model/CloudStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 9
    new-instance v0, Lcom/oculus/library/model/CloudStorageStatus;

    const-string v1, "UPLOAD_SYNCING"

    invoke-direct {v0, v1, v5}, Lcom/oculus/library/model/CloudStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    .line 10
    new-instance v0, Lcom/oculus/library/model/CloudStorageStatus;

    const-string v1, "DOWNLOAD_SYNCING"

    invoke-direct {v0, v1, v6}, Lcom/oculus/library/model/CloudStorageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DOWNLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/library/model/CloudStorageStatus;

    sget-object v1, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/CloudStorageStatus;->ENABLED:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/CloudStorageStatus;->DOWNLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/library/model/CloudStorageStatus;->$VALUES:[Lcom/oculus/library/model/CloudStorageStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromData(Lcom/oculus/library/model/CloudStorageStatus;Z)Lcom/oculus/library/model/CloudStorageStatus;
    .locals 1

    .prologue
    .line 26
    if-eqz p1, :cond_1

    .line 27
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne p0, v0, :cond_0

    .line 29
    sget-object p0, Lcom/oculus/library/model/CloudStorageStatus;->ENABLED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 36
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    goto :goto_0
.end method

.method public static isEnabled(Lcom/oculus/library/model/CloudStorageStatus;)Z
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncing(Lcom/oculus/library/model/CloudStorageStatus;)Z
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DOWNLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUploadSyncRequired(Lcom/oculus/library/model/CloudStorageStatus;)Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/CloudStorageStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/CloudStorageStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->$VALUES:[Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v0}, [Lcom/oculus/library/model/CloudStorageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/CloudStorageStatus;

    return-object v0
.end method
