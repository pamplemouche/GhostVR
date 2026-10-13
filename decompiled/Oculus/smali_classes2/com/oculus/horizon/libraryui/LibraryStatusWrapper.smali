.class Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;
.super Ljava/lang/Object;
.source "LibraryStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;
    }
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 11
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;->mDisplayName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
