.class public Lcom/oculus/cloudstoragehelper/CloudStorageResult;
.super Ljava/lang/Object;
.source "CloudStorageResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/cloudstoragehelper/CloudStorageResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final conflictLocalTimestamp:J

.field public final conflictRemoteTimestamp:J

.field public final error:Ljava/lang/String;

.field public final progress:F

.field public final resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$1;

    invoke-direct {v0}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$1;-><init>()V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->error:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->progress:F

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictLocalTimestamp:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictRemoteTimestamp:J

    return-void
.end method

.method private constructor <init>(Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;Ljava/lang/String;FJJ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 57
    iput-object p2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->error:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->progress:F

    .line 59
    iput-wide p4, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictLocalTimestamp:J

    .line 60
    iput-wide p6, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictRemoteTimestamp:J

    return-void
.end method

.method public static forConflict(JJ)Lcom/oculus/cloudstoragehelper/CloudStorageResult;
    .locals 9

    .line 46
    new-instance v8, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, v8

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;-><init>(Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;Ljava/lang/String;FJJ)V

    return-object v8
.end method

.method public static forFailure(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageResult;
    .locals 9

    .line 42
    new-instance v8, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->FAILURE:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;-><init>(Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;Ljava/lang/String;FJJ)V

    return-object v8
.end method

.method public static forProgress(F)Lcom/oculus/cloudstoragehelper/CloudStorageResult;
    .locals 9

    .line 34
    new-instance v8, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->PROGRESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v0, v8

    move v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;-><init>(Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;Ljava/lang/String;FJJ)V

    return-object v8
.end method

.method public static forSuccess()Lcom/oculus/cloudstoragehelper/CloudStorageResult;
    .locals 9

    .line 38
    new-instance v8, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->SUCCESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;-><init>(Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;Ljava/lang/String;FJJ)V

    return-object v8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 104
    invoke-virtual {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->progress:F

    .line 105
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->error:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictLocalTimestamp:J

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictRemoteTimestamp:J

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "%s[%s, progress = %f, error = %s, localTimestamp = %d, remoteTimestamp = %d]"

    .line 100
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 73
    iget-object p2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    invoke-virtual {p2}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->error:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget p2, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->progress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    iget-wide v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictLocalTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictRemoteTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
