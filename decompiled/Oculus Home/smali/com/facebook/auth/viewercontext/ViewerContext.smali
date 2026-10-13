.class public Lcom/facebook/auth/viewercontext/ViewerContext;
.super Ljava/lang/Object;
.source "ViewerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/auth/viewercontext/ViewerContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERRIDDEN_VIEWER_CONTEXT_PARAM:Ljava/lang/String; = "overridden_viewer_context"


# instance fields
.field final mAuthToken:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field

.field final mIsDittoContext:Z

.field final mIsFoxContext:Z

.field final mIsPageContext:Z

.field final mIsTimelineViewAsContext:Z

.field final mSessionCookiesString:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field

.field final mSessionKey:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field

.field final mSessionSecret:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field

.field final mUserId:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field

.field final mUsername:Ljava/lang/String;
    .annotation build Lcom/facebook/infer/annotation/PrivacySource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/facebook/auth/viewercontext/ViewerContext$1;

    invoke-direct {v0}, Lcom/facebook/auth/viewercontext/ViewerContext$1;-><init>()V

    sput-object v0, Lcom/facebook/auth/viewercontext/ViewerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    .line 54
    iput-boolean v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    .line 55
    iput-boolean v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    .line 56
    iput-boolean v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    .line 57
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto :goto_2

    :cond_3
    move v1, v2

    .line 82
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/auth/viewercontext/ViewerContext$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/auth/viewercontext/ViewerContext$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/auth/viewercontext/ViewerContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getSessionCookiesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->isPageContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    .line 67
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->isFoxContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    .line 68
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->isDittoContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    .line 69
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->isTimelineViewAsContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    .line 70
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getSessionSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;Lcom/facebook/auth/viewercontext/ViewerContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .param p2, "x1"    # Lcom/facebook/auth/viewercontext/ViewerContext$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/auth/viewercontext/ViewerContext;-><init>(Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;

    invoke-direct {v0}, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 192
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Lcom/facebook/auth/viewercontext/ViewerContext;

    .line 196
    .local v0, "that":Lcom/facebook/auth/viewercontext/ViewerContext;
    iget-boolean v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    iget-boolean v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    if-ne v3, v4, :cond_0

    .line 197
    iget-boolean v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    iget-boolean v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    if-ne v3, v4, :cond_0

    .line 198
    iget-boolean v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    iget-boolean v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    if-ne v3, v4, :cond_0

    .line 199
    iget-boolean v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    iget-boolean v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    if-ne v3, v4, :cond_0

    .line 200
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :cond_3
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    :cond_4
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    :cond_5
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    :cond_6
    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    iget-object v2, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_7
    :goto_1
    move v2, v1

    goto :goto_0

    .line 200
    :cond_8
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 201
    :cond_9
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 204
    :cond_a
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 207
    :cond_b
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    .line 209
    :cond_c
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 211
    :cond_d
    iget-object v3, v0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_1
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCookiesString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 217
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 218
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 219
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 220
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 221
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    if-eqz v4, :cond_7

    :goto_6
    add-int v0, v2, v3

    .line 223
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 224
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 225
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 226
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 216
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 217
    goto :goto_1

    :cond_3
    move v2, v1

    .line 218
    goto :goto_2

    :cond_4
    move v2, v1

    .line 219
    goto :goto_3

    :cond_5
    move v2, v1

    .line 220
    goto :goto_4

    :cond_6
    move v2, v1

    .line 221
    goto :goto_5

    :cond_7
    move v3, v1

    .line 222
    goto :goto_6

    :cond_8
    move v2, v1

    .line 223
    goto :goto_7

    :cond_9
    move v2, v1

    .line 224
    goto :goto_8
.end method

.method public isDittoContext()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    return v0
.end method

.method public isFoxContext()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    return v0
.end method

.method public isPageContext()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    return v0
.end method

.method public isTimelineViewAsContext()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionCookiesString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsPageContext:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsFoxContext:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsDittoContext:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mIsTimelineViewAsContext:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    return-void

    :cond_0
    move v0, v2

    .line 250
    goto :goto_0

    :cond_1
    move v0, v2

    .line 251
    goto :goto_1

    :cond_2
    move v0, v2

    .line 252
    goto :goto_2

    :cond_3
    move v1, v2

    .line 253
    goto :goto_3
.end method
