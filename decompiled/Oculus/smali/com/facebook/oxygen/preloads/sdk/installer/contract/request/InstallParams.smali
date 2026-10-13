.class public Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;
.super Ljava/lang/Object;
.source "InstallParams.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallReasonArg;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallReason;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallLocationArg;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallLocation;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallFlagsArg;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallFlags;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallModeArg;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallMode;,
        Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$ProtocolVersionArg;
    }
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAppLabel:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAppPackageName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInstallFlags:J

.field private mInstallLocation:I

.field private mInstallMode:I

.field private mInstallReason:I

.field private mOriginatingUid:I

.field private mOriginatingUri:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProtocolVersion:I

.field private mReferrerUri:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSizeBytes:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;-><init>(I)V

    .line 574
    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/16 v0, 0x1000

    iput v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallMode:I

    .line 561
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallFlags:J

    .line 562
    const/high16 v0, 0x30000

    iput v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallLocation:I

    .line 563
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallReason:I

    .line 564
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mSizeBytes:J

    .line 577
    iput p1, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mProtocolVersion:I

    .line 578
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->stringifyIntConstant(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stringifyIntConstant(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 799
    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 801
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 802
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 803
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    .line 804
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 805
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 799
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v1

    .line 813
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    if-nez v0, :cond_2

    move-object v0, v1

    .line 817
    :goto_1
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 823
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mode"

    iget v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallMode:I

    .line 824
    invoke-static {v2}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "flags"

    iget-wide v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallFlags:J

    .line 825
    invoke-static {v2, v3}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallFlags;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "location"

    iget v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallLocation:I

    .line 826
    invoke-static {v2}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallLocation;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "reason"

    iget v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mInstallReason:I

    .line 827
    invoke-static {v2}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallReason;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "size"

    iget-wide v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mSizeBytes:J

    .line 828
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mAppPackageName:Ljava/lang/String;

    .line 829
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "app_icon"

    iget-object v0, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 830
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "app_label"

    iget-object v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mAppLabel:Ljava/lang/String;

    .line 831
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "orig_uri"

    iget-object v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mOriginatingUri:Landroid/net/Uri;

    .line 832
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "orig_uid"

    iget v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mOriginatingUid:I

    .line 833
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "ref_uri"

    iget-object v2, p0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->mReferrerUri:Landroid/net/Uri;

    .line 834
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
