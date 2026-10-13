.class public Lcom/facebook/common/callercontext/CallerContext;
.super Ljava/lang/Object;
.source "CallerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/common/callercontext/CallerContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:Lcom/facebook/common/callercontext/CallerContext;

.field private static sUseDeepEquals:Z


# instance fields
.field private final mAnalyticsTag:Ljava/lang/String;

.field private final mCallingClassName:Ljava/lang/String;

.field private final mContextChain:Lcom/facebook/common/callercontext/ContextChain;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFeatureTag:Ljava/lang/String;

.field private final mModuleAnalyticTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/common/callercontext/CallerContext;

    invoke-direct {v0}, Lcom/facebook/common/callercontext/CallerContext;-><init>()V

    sput-object v0, Lcom/facebook/common/callercontext/CallerContext;->UNKNOWN:Lcom/facebook/common/callercontext/CallerContext;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/callercontext/CallerContext;->sUseDeepEquals:Z

    .line 386
    new-instance v0, Lcom/facebook/common/callercontext/CallerContext$1;

    invoke-direct {v0}, Lcom/facebook/common/callercontext/CallerContext$1;-><init>()V

    sput-object v0, Lcom/facebook/common/callercontext/CallerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 88
    const-class v0, Lcom/facebook/common/callercontext/ContextChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/callercontext/ContextChain;

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/callercontext/ContextChain;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/common/callercontext/ContextChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/common/callercontext/CallerContextable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/common/callercontext/ContextChain;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Lcom/facebook/common/util/redex/OriginalClassName;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 81
    return-void
.end method

.method public static fromClass(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/common/callercontext/CallerContextable;",
            ">;)",
            "Lcom/facebook/common/callercontext/CallerContext;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/facebook/common/callercontext/CallerContext;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/callercontext/CallerContext;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/callercontext/ContextChain;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    sget-boolean v2, Lcom/facebook/common/callercontext/CallerContext;->sUseDeepEquals:Z

    if-eqz v2, :cond_5

    .line 436
    if-ne p0, p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 440
    goto :goto_0

    .line 442
    :cond_3
    check-cast p1, Lcom/facebook/common/callercontext/CallerContext;

    .line 443
    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 444
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 445
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 446
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 447
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 449
    :cond_5
    instance-of v2, p1, Lcom/facebook/common/callercontext/CallerContext;

    if-nez v2, :cond_6

    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :cond_6
    check-cast p1, Lcom/facebook/common/callercontext/CallerContext;

    .line 454
    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 455
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 456
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 457
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    iget-object v3, p1, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 458
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/facebook/common/callercontext/CallerContext;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 3

    .prologue
    .line 419
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Calling Class Name"

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Analytics Tag"

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Feature tag"

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    .line 422
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Module Analytics Tag"

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Context Chain"

    iget-object v2, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mCallingClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mAnalyticsTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mModuleAnalyticTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/facebook/common/callercontext/CallerContext;->mContextChain:Lcom/facebook/common/callercontext/ContextChain;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 406
    return-void
.end method
