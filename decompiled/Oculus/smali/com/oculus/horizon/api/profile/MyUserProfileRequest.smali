.class public Lcom/oculus/horizon/api/profile/MyUserProfileRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "MyUserProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/profile/MyUserProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final profilePictureDimension:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;->accessToken:Ljava/lang/String;

    .line 26
    const/16 v0, 0x168

    iput v0, p0, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;->profilePictureDimension:I

    .line 27
    return-void
.end method

.method private getPicDimensionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string/jumbo v0, "x"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;->profilePictureDimension:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;->profilePictureDimension:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 32
    const/16 v1, 0xc

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 33
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 35
    const-string v2, "pic_dimension"

    .line 36
    invoke-direct {p0}, Lcom/oculus/horizon/api/profile/MyUserProfileRequest;->getPicDimensionString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sent_after"

    .line 37
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v2, v3, v4, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
