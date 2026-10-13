.class public Lcom/oculus/model/LazyStringWithUri;
.super Ljava/lang/Object;
.source "LazyStringWithUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/model/LazyStringWithUri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mText:Lcom/oculus/model/LazyString;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/oculus/model/LazyStringWithUri$1;

    invoke-direct {v0}, Lcom/oculus/model/LazyStringWithUri$1;-><init>()V

    sput-object v0, Lcom/oculus/model/LazyStringWithUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/oculus/model/LazyString;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyString;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mText:Lcom/oculus/model/LazyString;

    .line 22
    iput-object p2, p0, Lcom/oculus/model/LazyStringWithUri;->mUri:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/oculus/model/LazyString;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyString;

    iput-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mText:Lcom/oculus/model/LazyString;

    .line 35
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mUri:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/oculus/model/LazyString;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mText:Lcom/oculus/model/LazyString;

    .line 17
    iput-object p2, p0, Lcom/oculus/model/LazyStringWithUri;->mUri:Landroid/net/Uri;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mText:Lcom/oculus/model/LazyString;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyString;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mText:Lcom/oculus/model/LazyString;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v0, p0, Lcom/oculus/model/LazyStringWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
