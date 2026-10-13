.class public Lcom/oculus/horizon/feed/model/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/feed/model/Media;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:J

.field private final mName:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/oculus/horizon/feed/model/Media$1;

    invoke-direct {v0}, Lcom/oculus/horizon/feed/model/Media$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/feed/model/Media;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/feed/model/Media;->mWidth:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/feed/model/Media;->mHeight:J

    .line 21
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mUri:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/Media;->mName:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/oculus/horizon/feed/model/Media;->mWidth:J

    .line 57
    iput-wide p4, p0, Lcom/oculus/horizon/feed/model/Media;->mHeight:J

    .line 58
    iput-object p6, p0, Lcom/oculus/horizon/feed/model/Media;->mUri:Landroid/net/Uri;

    .line 59
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/MediaResponse;)Lcom/oculus/horizon/feed/model/Media;
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/horizon/feed/model/Media;

    iget-object v1, p0, Lcom/oculus/horizon/api/feed/MediaResponse;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/horizon/api/feed/MediaResponse;->width:J

    iget-wide v4, p0, Lcom/oculus/horizon/api/feed/MediaResponse;->height:J

    iget-object v6, p0, Lcom/oculus/horizon/api/feed/MediaResponse;->uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/feed/model/Media;-><init>(Ljava/lang/String;JJLandroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-wide v0, p0, Lcom/oculus/horizon/feed/model/Media;->mWidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-wide v0, p0, Lcom/oculus/horizon/feed/model/Media;->mHeight:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Media;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    return-void
.end method
